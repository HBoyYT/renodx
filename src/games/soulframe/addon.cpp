/*
 * Copyright (C) 2024 Carlos Lopez
 * SPDX-License-Identifier: MIT
 */

 #define ImTextureID ImU64

 #define DEBUG_LEVEL_0


 #include <deps/imgui/imgui.h>
 #include <include/reshade.hpp>
 #include <random>

 #include <embed/shaders.h>
 
 #include "../../mods/shader.hpp"
 #include "../../mods/swapchain.hpp"
  #include "../../utils/date.hpp"
 #include "../../utils/settings.hpp"
 #include "./shared.h"
 
 namespace {
     ShaderInjectData shader_injection;

    bool lut_reload_required = false;

    bool OnLutBuilderReplace(reshade::api::command_list* cmd_list) {
        lut_reload_required = false;
        return true;
    }

    void OnLUTSettingChange() {
        lut_reload_required = true;
    };
    
 renodx::mods::shader::CustomShaders custom_shaders = {
    // Lutbuilders
    // When lutbuilder shader being used, run OnLutBuilderReplace()
    CustomShaderEntryCallback(0x1647F709, &OnLutBuilderReplace),
    CustomShaderEntryCallback(0xF50EEE32, &OnLutBuilderReplace),

    // Output Shaders
    CustomShaderEntry(0xE5CD97C4),    // Normal
    CustomShaderEntry(0x82295D70),    // Normal
    CustomShaderEntry(0xE6C3FCA5),    // Loading Screen

    // Other
    CustomShaderEntry(0x0EE431F9),    // Auto Exposure
    CustomShaderEntry(0xB01A08FD),    // Sharpening

 };
  
 float current_settings_mode = 0;
 
 renodx::utils::settings::Settings settings = {

     new renodx::utils::settings::Setting{
         .value_type = renodx::utils::settings::SettingValueType::TEXT,
         .label = "Heavy attack with melee / move 'brightness', 'contrast' or 'paper white' slider in the game's settings to apply changes.",
         .tint = 0xFF0000,
         .is_visible = []() {return lut_reload_required;},
         .is_sticky = true,
     },
     // Keep spacing when the above is off
     new renodx::utils::settings::Setting{
         .value_type = renodx::utils::settings::SettingValueType::TEXT,
         .label = "",
         .is_visible = []() {return !lut_reload_required;},
         .is_sticky = true,
         },

     new renodx::utils::settings::Setting{
         .key = "SettingsMode",
         .binding = &current_settings_mode,
         .value_type = renodx::utils::settings::SettingValueType::INTEGER,
         .default_value = 0.f,
         .can_reset = false,
         .label = "Settings Mode",
         .labels = {"Simple", "Intermediate", "Advanced"},
         .is_global = true,
     },
     new renodx::utils::settings::Setting{
        .key = "ToneMapType",
        .binding = &shader_injection.tone_map_type,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .can_reset = true,
        .label = "Tone Mapper",
        .section = "Tone Mapping",
        .tooltip = "Sets the tone mapper type",
        .labels = {"Vanilla", "RenoDRT"},
        .parse = [](float value) { return value * 3.f; },
        .on_change = &OnLUTSettingChange,
        .is_visible = []() { return current_settings_mode >= 1; },
    },
     new renodx::utils::settings::Setting{
         .key = "ToneMapPeakNits",
         .binding = &shader_injection.peak_white_nits,
         .default_value = 1000.f,
         .label = "Peak Brightness",
         .section = "Tone Mapping",
         .tooltip = "Sets the value of peak white in nits",
         .min = 48.f,
         .max = 4000.f,
         .on_change = &OnLUTSettingChange,
     },
     new renodx::utils::settings::Setting{
         .key = "ToneMapGameNits",
         .binding = &shader_injection.diffuse_white_nits,
         .default_value = 203.f,
         .label = "Game Brightness",
         .section = "Tone Mapping",
         .tooltip = "Sets the value of 100% white in nits",
         .min = 48.f,
         .max = 500.f,
         .on_change = &OnLUTSettingChange,
     },
     new renodx::utils::settings::Setting{
         .key = "ToneMapUINits",
         .binding = &shader_injection.graphics_white_nits,
         .default_value = 203.f,
         .label = "UI Brightness",
         .section = "Tone Mapping",
         .tooltip = "Sets the brightness of UI and HUD elements in nits",
         .min = 48.f,
         .max = 500.f,
     },
          new renodx::utils::settings::Setting{
         .key = "GammaCorrection",
         .binding = &shader_injection.gamma_correction,
         .value_type = renodx::utils::settings::SettingValueType::INTEGER,
         .default_value = 1.f,
         .label = "Gamma Correction",
         .section = "Tone Mapping",
         .tooltip = "Emulates a display EOTF.",
         .labels = {"Off", "2.2", "BT.1886"},
         .on_change = &OnLUTSettingChange,
         .is_visible = []() { return current_settings_mode >= 1; },
     },
     new renodx::utils::settings::Setting{
         .key = "ColorGradeExposure",
         .binding = &shader_injection.tone_map_exposure,
         .default_value = 1.f,
         .label = "Exposure",
         .section = "Color Grading",
         .max = 2.f,
         .format = "%.2f",
         .is_enabled = []() { return shader_injection.tone_map_type > 0; },
         .on_change = &OnLUTSettingChange,
         .is_visible = []() { return current_settings_mode >= 1; },
     },
     new renodx::utils::settings::Setting{
         .key = "ColorGradeHighlights",
         .binding = &shader_injection.tone_map_highlights,
         .default_value = 50.f,
         .label = "Highlights",
         .section = "Color Grading",
         .max = 100.f,
         .is_enabled = []() { return shader_injection.tone_map_type > 0; },
         .parse = [](float value) { return value * 0.02f; },
         .on_change = &OnLUTSettingChange,
         .is_visible = []() { return current_settings_mode >= 1; },
     },
     new renodx::utils::settings::Setting{
         .key = "ColorGradeShadows",
         .binding = &shader_injection.tone_map_shadows,
         .default_value = 50.f,
         .label = "Shadows",
         .section = "Color Grading",
         .max = 100.f,
         .is_enabled = []() { return shader_injection.tone_map_type > 0; },
         .parse = [](float value) { return value * 0.02f; },
         .on_change = &OnLUTSettingChange,
         .is_visible = []() { return current_settings_mode >= 1; },
     },
     new renodx::utils::settings::Setting{
         .key = "ColorGradeContrast",
         .binding = &shader_injection.tone_map_contrast,
         .default_value = 50.f,
         .label = "Contrast",
         .section = "Color Grading",
         .max = 100.f,
         .is_enabled = []() { return shader_injection.tone_map_type > 0; },
         .parse = [](float value) { return value * 0.02f; },
         .on_change = &OnLUTSettingChange,
     },
     new renodx::utils::settings::Setting{
         .key = "ColorGradeSaturation",
         .binding = &shader_injection.tone_map_saturation,
         .default_value = 50.f,
         .label = "Saturation",
         .section = "Color Grading",
         .max = 100.f,
         .is_enabled = []() { return shader_injection.tone_map_type > 0; },
         .parse = [](float value) { return value * 0.02f; },
         .on_change = &OnLUTSettingChange,
     },
     new renodx::utils::settings::Setting{
         .key = "ColorGradeHighlightSaturation",
         .binding = &shader_injection.tone_map_highlight_saturation,
         .default_value = 50.f,
         .label = "Highlight Saturation",
         .section = "Color Grading",
         .tooltip = "Adds or removes highlight color.",
         .max = 100.f,
         .is_enabled = []() { return shader_injection.tone_map_type >= 1; },
         .parse = [](float value) { return value * 0.02f; },
         .on_change = &OnLUTSettingChange,
         .is_visible = []() { return current_settings_mode >= 1; },
     },
     new renodx::utils::settings::Setting{
         .key = "ColorGradeBlowout",
         .binding = &shader_injection.tone_map_blowout,
         .default_value = 0.f,
         .label = "Blowout",
         .section = "Color Grading",
         .tooltip = "Controls highlight desaturation due to overexposure.",
         .max = 100.f,
         .is_enabled = []() { return shader_injection.tone_map_type > 0; },
         .parse = [](float value) { return value * 0.01f; },
         .on_change = &OnLUTSettingChange,
     },
     new renodx::utils::settings::Setting{
         .key = "ColorGradeFlare",
         .binding = &shader_injection.tone_map_flare,
         .default_value = 0.f,
         .label = "Flare",
         .section = "Color Grading",
         .tooltip = "Flare/Glare Compensation",
         .max = 100.f,
         .is_enabled = []() { return shader_injection.tone_map_type > 0; },
         .parse = [](float value) { return value * 0.02f; },
         .on_change = &OnLUTSettingChange,
     },
     new renodx::utils::settings::Setting{
         .key = "ColorGradeScene",
         .binding = &shader_injection.color_grade_strength,
         .default_value = 100.f,
         .label = "Scene Grading",
         .section = "Color Grading",
         .tooltip = "Scene grading as applied by the game",
         .max = 100.f,
         .is_enabled = []() { return shader_injection.tone_map_type > 0; },
         .parse = [](float value) { return value * 0.01f; },
         .on_change = &OnLUTSettingChange,
     },
         new renodx::utils::settings::Setting{
        .key = "FxAutoexposureStrength",
        .binding = &shader_injection.fx_autoexposre_strength,
        .default_value = 70.f,
        .label = "Autoexposure Strength",
        .section = "Effects",
        .tooltip = "Controls the strength of autoexposure."
                    "\n Game default: 100"
                    "\n Reccomended: 70",
        .max = 100.f,
        .parse = [](float value) { return value * 0.01f; },
        .is_visible = []() { return current_settings_mode >= 1; },
    },
    new renodx::utils::settings::Setting{
        .key = "LUTScaling",
        .binding = &shader_injection.lut_scaling,
        .default_value = 100.f,
        .label = "LUT Scaling",
        .section = "Effects",
        .tooltip = "Scales the color grade LUT to full range when size is clamped.",
        .max = 100.f,
        .is_enabled = []() { return shader_injection.tone_map_type > 0; },
        .parse = [](float value) { return value * 0.01f; },
        .on_change = &OnLUTSettingChange,
        .is_visible = []() { return current_settings_mode >= 1; },
    },
    new renodx::utils::settings::Setting{
        .key = "FxSharpeningStrength",
        .binding = &shader_injection.fx_sharpening_strength,
        .default_value = 50.f,
        .label = "Sharpening Strength",
        .section = "Effects",
        .tooltip = "Controls how much sharpening to apply to the image",
        .max = 100.f,
        .parse = [](float value) { return value * 0.01f; },
        .is_visible = []() { return current_settings_mode >= 2; },
    },
    new renodx::utils::settings::Setting{
        .key = "fxSharpeningType",
        .binding = &shader_injection.fx_sharpening_type,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .label = "Sharpening Type",
        .section = "Effects",
        .tooltip = "Selects sharpening filter.\nDefault: Vanilla",
        .labels = {"Vanilla", "RCAS"},
        .is_visible = []() { return current_settings_mode >= 2; },
    },
    new renodx::utils::settings::Setting{
        .key = "FxFilmGrainStrength",
        .binding = &shader_injection.fx_film_grain_strength,
        .default_value = 50.f,
        .label = "Custom Film Grain Strength",
        .section = "Effects",
        .tooltip = "Controls the strength of the custom film grain",
        .max = 100.f,
        .parse = [](float value) { return value * 0.01f; },
        .is_visible = []() { return current_settings_mode >= 2; },
    },
    new renodx::utils::settings::Setting{
        .key = "FxVignetteStrength",
        .binding = &shader_injection.fx_vignette_strength,
        .default_value = 50.f,
        .label = "Vignette Strength",
        .section = "Effects",
        .tooltip = "Controls the amount of vignette",
        .max = 100.f,
        .parse = [](float value) { return value * 0.02f; },
        .is_visible = []() { return current_settings_mode >= 1; },
    },
    new renodx::utils::settings::Setting{
        .key = "FxCAStrength",
        .binding = &shader_injection.fx_ca_strength,
        .default_value = 50.f,
        .label = "Chromatic Aberation Strength",
        .section = "Effects",
        .tooltip = "Controls the strength of chromatic aberration",
        .max = 100.f,
        .parse = [](float value) { return value * 0.02f; },
        .is_visible = []() { return current_settings_mode >= 1; },
    },
        new renodx::utils::settings::Setting{
        .key = "FxBloomStrength",
        .binding = &shader_injection.fx_bloom_strength,
        .default_value = 50.f,
        .label = "Bloom Strength",
        .section = "Effects",
        .tooltip = "Controls the strength of bloom"
                   "\nTakes over game slider.",
        .max = 100.f,
        .parse = [](float value) { return value * 0.01f; },
        .is_visible = []() { return current_settings_mode >= 1; },
    },
    new renodx::utils::settings::Setting{
        .key = "FxDitheringStrength",
        .binding = &shader_injection.fx_dithering_strength,
        .default_value = 100.f,
        .label = "Dithering Strength",
        .section = "Effects",
        .tooltip = "Controls how much dithering to apply to the image\nRecommended to leave at default value.\nDefault: 100",
        .max = 100.f,
        .parse = [](float value) { return value * 0.01f; },
        .is_visible = []() { return current_settings_mode >= 2; },
    },
    new renodx::utils::settings::Setting{
        .key = "fxEnableUI",
        .binding = &shader_injection.fx_enable_ui,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .label = "Enable UI",
        .section = "Effects",
        .tooltip = "Useful for taking screenshots.",
        .labels = {"Off", "On"},
        .is_visible = []() { return current_settings_mode >= 1; },
},
     new renodx::utils::settings::Setting{
        .key = "SwapChainCustomColorSpace",
        .binding = &shader_injection.swap_chain_custom_color_space,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Custom Color Space",
        .section = "Display Output",
        .tooltip = "Selects output color space"
                   "\nUS Modern for BT.709 D65."
                   "\nJPN Modern for BT.709 D93."
                   "\nUS CRT for BT.601 (NTSC-U)."
                   "\nJPN CRT for BT.601 ARIB-TR-B9 D93 (NTSC-J)."
                   "\nDefault: US CRT",
        .labels = {
            "US Modern",
            "JPN Modern",
            "US CRT",
            "JPN CRT",
        },
        .is_visible = []() { return settings[0]->GetValue() >= 1; },
     },
    new renodx::utils::settings::Setting{
        .key = "ColorFix",
        .binding = &shader_injection.fix_color,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .label = "Color Fix",
        .section = "Extra",
        .tooltip = "Fixes incorrect colors"
                   "\n Default: On",
        .labels = {"Off", "On"},
        .is_visible = []() { return current_settings_mode >= 3; },
     },
    new renodx::utils::settings::Setting{
        .key = "TransitionFix",
        .binding = &shader_injection.fix_crossfade,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .label = "Transition Fix",
        .section = "Extra",
        .tooltip = "Fixes incorrect looking transitions e.g. when the game fades to white"
                   "\n Default: On",
        .labels = {"Off", "On"},
        .is_visible = []() { return current_settings_mode >= 3; },
     },
     new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "- This mod only works using DirectX 12, you can change this in the Soulframe launcher."
                 "\n- Enable 'HDR Output' in the game's settings. The HDR paper white slider shouldn't do anything, you can just set it to what you have in RenoDX."
                 "\n- Enable 'Bloom' and 'Distortions' in the game's settings."
                 "\n- The sharpening slider only works for upscaling!"
                 "\n\n For upscaling only:"
                 "\n- Set 'Sharpening' in the game's settings to any value but 0, then use the RenoDX slider.",
        .section = "Instructions",
    },
        new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "\n Credits to Lilium for their RCAS shader.",
        .section = "Instructions",
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::BUTTON,
        .label = "Reset All",
        .section = "Options",
        .group = "button-line-1",
        .on_change = []() {
          for (auto setting : settings) {
            if (setting->key.empty()) continue;
            if (!setting->can_reset) continue;
            renodx::utils::settings::UpdateSetting(setting->key, setting->default_value);
            if (setting->on_change) setting->on_change();
        }
        },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::BUTTON,
        .label = "HDR Den Discord",
        .section = "Links",
        .group = "button-line-2",
        .tint = 0x5865F2,
        .on_change = []() {
          static const std::string obfuscated_link = std::string("start https://discord.gg/5WZX") + std::string("DpmbpP");
          system(obfuscated_link.c_str());
        },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::BUTTON,
        .label = "Get more RenoDX mods!",
        .section = "Links",
        .group = "button-line-2",
        .tint = 0x5865F2,
        .on_change = []() {
          system("start https://github.com/clshortfuse/renodx/wiki/Mods");
        },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::BUTTON,
        .label = "HBoy's Patreon",
        .section = "Links",
        .group = "button-line-2",
        .tint = 0xf96854,
        .on_change = []() {
          renodx::utils::platform::Launch("https://www.patreon.com/c/HBoyYT");
        },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = std::string("Build: ") + renodx::utils::date::ISO_DATE_TIME,
        .section = "About",
    }
 };
 
 void OnPresetOff() {
   renodx::utils::settings::UpdateSetting("ToneMapType", 0.f);
   renodx::utils::settings::UpdateSetting("ToneMapPeakNits", 1000.f);
   renodx::utils::settings::UpdateSetting("ToneMapGameNits", 203.f);
   renodx::utils::settings::UpdateSetting("ToneMapUINits", 203.f);
//    renodx::utils::settings::UpdateSetting("GammaCorrection", 0.f);
   renodx::utils::settings::UpdateSetting("ToneMapHueCorrection", 0.f);
   renodx::utils::settings::UpdateSetting("ColorGradeExposure", 1.f);
   renodx::utils::settings::UpdateSetting("ColorGradeHighlights", 50.f);
   renodx::utils::settings::UpdateSetting("ColorGradeShadows", 50.f);
   renodx::utils::settings::UpdateSetting("ColorGradeContrast", 50.f);
   renodx::utils::settings::UpdateSetting("ColorGradeSaturation", 50.f);
   renodx::utils::settings::UpdateSetting("ColorGradeHighlightSaturation", 50.f);
   renodx::utils::settings::UpdateSetting("ColorGradeBlowout", 0.f);
   renodx::utils::settings::UpdateSetting("ColorGradeFlare", 0.f);
   renodx::utils::settings::UpdateSetting("ColorGradeScene", 100.f);
   renodx::utils::settings::UpdateSetting("LUTScaling", 0.f);
   renodx::utils::settings::UpdateSetting("FxVignetteStrength", 50.f);
   renodx::utils::settings::UpdateSetting("fxSharpeningType", 0.f);
   renodx::utils::settings::UpdateSetting("fxFilmGrainType", 0.f);
   renodx::utils::settings::UpdateSetting("FxCAStrength", 50.f);
   renodx::utils::settings::UpdateSetting("FxDitheringStrength", 100.f);
   renodx::utils::settings::UpdateSetting("FxFilmGrainStrength", 50.f);
   renodx::utils::settings::UpdateSetting("SwapChainCustomColorSpace", 0.f);
   renodx::utils::settings::UpdateSetting("ColorFix", 0.f);
   renodx::utils::settings::UpdateSetting("TransitionFix", 0.f);
   OnLUTSettingChange();
 }
 
bool fired_on_init_swapchain = false;

void OnInitSwapchain(reshade::api::swapchain* swapchain, bool resize) {
  if (fired_on_init_swapchain) return;
  fired_on_init_swapchain = true;

  auto peak = renodx::utils::swapchain::GetPeakNits(swapchain);
  if (!peak.has_value()) {
    peak = 1000.f;
  }
  
  settings[4]->default_value = peak.value();
  settings[5]->default_value = renodx::utils::swapchain::ComputeReferenceWhite(peak.value());
  settings[6]->default_value = renodx::utils::swapchain::ComputeReferenceWhite(peak.value());
}

void OnPresent(
    reshade::api::command_queue* queue,
    reshade::api::swapchain* swapchain,
    const reshade::api::rect* source_rect,
    const reshade::api::rect* dest_rect,
    uint32_t dirty_rect_count,
    const reshade::api::rect* dirty_rects) {
  static std::mt19937 random_generator(std::chrono::system_clock::now().time_since_epoch().count());
  static auto random_range = static_cast<float>(std::mt19937::max() - std::mt19937::min());
  RENODX_FX_RANDOM = static_cast<float>(random_generator() + std::mt19937::min()) / random_range;
}

bool initialized = false;

}  // namespace
 
 extern "C" __declspec(dllexport) constexpr const char* NAME = "RenoDX";
 extern "C" __declspec(dllexport) constexpr const char* DESCRIPTION = "RenoDX (Warframe)";
 
BOOL APIENTRY DllMain(HMODULE h_module, DWORD fdw_reason, LPVOID lpv_reserved) {
  switch (fdw_reason) {
    case DLL_PROCESS_ATTACH:
      if (!reshade::register_addon(h_module)) return FALSE;

      if (!initialized) {
        renodx::mods::swapchain::SetUseHDR10();     
        renodx::mods::shader::expected_constant_buffer_space = 50;
        renodx::mods::shader::expected_constant_buffer_index = 13;
        renodx::mods::shader::force_pipeline_cloning = true;

        renodx::mods::swapchain::swap_chain_upgrade_targets.push_back({
            .old_format = reshade::api::format::r10g10b10a2_unorm,
            .new_format = reshade::api::format::r16g16b16a16_float,
            .use_resource_view_cloning = true,
        });

        renodx::mods::swapchain::swap_chain_upgrade_targets.push_back({
            .old_format = reshade::api::format::r11g11b10_float,
            .new_format = reshade::api::format::r16g16b16a16_float,
            .use_resource_view_cloning = true,
        });

        initialized = true;
      }

      reshade::register_event<reshade::addon_event::init_swapchain>(OnInitSwapchain);  // peak nits detection
      reshade::register_event<reshade::addon_event::present>(OnPresent);               // Random for film grain
      break;
    case DLL_PROCESS_DETACH:
      reshade::unregister_event<reshade::addon_event::init_swapchain>(OnInitSwapchain);  // peak nits detection
      reshade::unregister_event<reshade::addon_event::present>(OnPresent);               // Random for film grain
      reshade::unregister_addon(h_module);
      break;
  }

  renodx::utils::settings::Use(fdw_reason, &settings, &OnPresetOff);
  renodx::mods::shader::Use(fdw_reason, custom_shaders, &shader_injection);

  return TRUE;
}