/*
 * Copyright (C) 2024 Carlos Lopez
 * SPDX-License-Identifier: MIT
 */

 #define ImTextureID ImU64

 #define DEBUG_LEVEL_0

 #include <deps/imgui/imgui.h>
 #include <include/reshade.hpp>

 #include <embed/shaders.h>
 
 #include "../../mods/shader.hpp"
 #include "../../mods/swapchain.hpp"
  #include "../../utils/date.hpp"
 #include "../../utils/settings.hpp"
 #include "./shared.h"
 
 namespace {
 
 renodx::mods::shader::CustomShaders custom_shaders = {__ALL_CUSTOM_SHADERS};
 
 ShaderInjectData shader_injection;
 
 float current_settings_mode = 0;
 
 renodx::utils::settings::Settings settings = {
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
        .is_visible = []() { return current_settings_mode >= 1; },
    },
     new renodx::utils::settings::Setting{
         .key = "ToneMapPeakNits",
         .binding = &shader_injection.peak_white_nits,
         .default_value = 1000.f,
         .can_reset = false,
         .label = "Peak Brightness",
         .section = "Tone Mapping",
         .tooltip = "Sets the value of peak white in nits",
         .min = 48.f,
         .max = 4000.f,
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
         .default_value = 0.f,
         .label = "Gamma Correction",
         .section = "Tone Mapping",
         .tooltip = "Emulates a display EOTF.",
         .labels = {"Off", "2.2", "BT.1886"},
         .is_visible = []() { return current_settings_mode >= 1; },
     },
     new renodx::utils::settings::Setting{
         .key = "ToneMapScaling",
         .binding = &shader_injection.tone_map_per_channel,
         .value_type = renodx::utils::settings::SettingValueType::INTEGER,
         .default_value = 0.f,
         .label = "Scaling",
         .section = "Tone Mapping",
         .tooltip = "Luminance scales colors consistently while per-channel saturates and blows out sooner",
         .labels = {"Luminance", "Per Channel"},
         .is_enabled = []() { return shader_injection.tone_map_type >= 1; },
         .is_visible = []() { return current_settings_mode >= 2; },
     },
     new renodx::utils::settings::Setting{
        .key = "ToneMapHueShiftMethod",
        .binding = &shader_injection.tone_map_hue_shift_method,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .label = "Hue Shift Method",
        .section = "Tone Mapping",
        .labels = {"Clip", "SDR Modified", "AP1 Roll Off"},
        .is_enabled = []() { return shader_injection.tone_map_type >= 1; },
        .is_visible = []() { return current_settings_mode >= 2; },
    },
     new renodx::utils::settings::Setting{
         .key = "ToneMapHueProcessor",
         .binding = &shader_injection.tone_map_hue_processor,
         .value_type = renodx::utils::settings::SettingValueType::INTEGER,
         .default_value = 1.f,
         .label = "Hue Processor",
         .section = "Tone Mapping",
         .tooltip = "Selects hue processor",
         .labels = {"OKLab", "ICtCp", "darkTable UCS"},
         .is_enabled = []() { return shader_injection.tone_map_type >= 1; },
         .is_visible = []() { return current_settings_mode >= 2; },
     },
     new renodx::utils::settings::Setting{
         .key = "ToneMapHueCorrection",
         .binding = &shader_injection.tone_map_hue_correction,
         .default_value = 100.f,
         .label = "Hue Correction",
         .section = "Tone Mapping",
         .tooltip = "Hue retention strength.",
         .min = 0.f,
         .max = 100.f,
         .is_enabled = []() { return shader_injection.tone_map_type >= 1; },
         .parse = [](float value) { return value * 0.01f; },
         .is_visible = []() { return current_settings_mode >= 2; },
     },
     new renodx::utils::settings::Setting{
        .key = "toneMapHueShift",
        .binding = &shader_injection.tone_map_hue_shift,
        .default_value = 50.f,
        .label = "Hue Shift",
        .section = "Tone Mapping",
        .tooltip = "Hue-shift emulation strength.",
        .min = 0.f,
        .max = 100.f,
        .is_enabled = []() { return shader_injection.tone_map_type >= 1; },
        .parse = [](float value) { return value * 0.01f; },
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
         .is_visible = []() { return current_settings_mode >= 1; },
     },
     new renodx::utils::settings::Setting{
         .key = "ColorGradeHighlights",
         .binding = &shader_injection.tone_map_highlights,
         .default_value = 50.f,
         .label = "Highlights",
         .section = "Color Grading",
         .max = 100.f,
         .parse = [](float value) { return value * 0.02f; },
         .is_visible = []() { return current_settings_mode >= 1; },
     },
     new renodx::utils::settings::Setting{
         .key = "ColorGradeShadows",
         .binding = &shader_injection.tone_map_shadows,
         .default_value = 50.f,
         .label = "Shadows",
         .section = "Color Grading",
         .max = 100.f,
         .parse = [](float value) { return value * 0.02f; },
         .is_visible = []() { return current_settings_mode >= 1; },
     },
     new renodx::utils::settings::Setting{
         .key = "ColorGradeContrast",
         .binding = &shader_injection.tone_map_contrast,
         .default_value = 50.f,
         .label = "Contrast",
         .section = "Color Grading",
         .max = 100.f,
         .parse = [](float value) { return value * 0.02f; },
     },
     new renodx::utils::settings::Setting{
         .key = "ColorGradeSaturation",
         .binding = &shader_injection.tone_map_saturation,
         .default_value = 50.f,
         .label = "Saturation",
         .section = "Color Grading",
         .max = 100.f,
         .parse = [](float value) { return value * 0.02f; },
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
         .is_visible = []() { return current_settings_mode >= 1; },
     },
     new renodx::utils::settings::Setting{
        .key = "ColorGradeBlowoutRestoration",
        .binding = &shader_injection.per_channel_blowout_restoration,
        .default_value = 50.f,
        .label = "Blowout Restoration",
        .section = "Color Grading",
        .tooltip = "Restores color from blowout from per-channel grading.",
        .min = 0.f,
        .max = 100.f,
        .is_enabled = []() { return shader_injection.tone_map_type >= 1; },
        .parse = [](float value) { return value * 0.01f; },
    },
     new renodx::utils::settings::Setting{
         .key = "ColorGradeBlowout",
         .binding = &shader_injection.tone_map_blowout,
         .default_value = 0.f,
         .label = "Blowout",
         .section = "Color Grading",
         .tooltip = "Controls highlight desaturation due to overexposure.",
         .max = 100.f,
         .parse = [](float value) { return value * 0.01f; },
     },
     new renodx::utils::settings::Setting{
         .key = "ColorGradeFlare",
         .binding = &shader_injection.tone_map_flare,
         .default_value = 0.f,
         .label = "Flare",
         .section = "Color Grading",
         .tooltip = "Flare/Glare Compensation",
         .max = 100.f,
         .is_enabled = []() { return shader_injection.tone_map_type == 3; },
         .parse = [](float value) { return value * 0.02f; },
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
     },
     new renodx::utils::settings::Setting{
        .key = "FxVignetteStrength",
        .binding = &shader_injection.fx_vignette_strength,
        .default_value = 50.f,
        .label = "Vignette Strength",
        .section = "Effects",
        .tooltip = "Controls the ammount of vignette",
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
        .tooltip = "Controls the strength of chromatic aberation",
        .max = 100.f,
        .parse = [](float value) { return value * 0.02f; },
        .is_visible = []() { return current_settings_mode >= 1; },
    },
        // new renodx::utils::settings::Setting{
        // .key = "FxFilmGrainStrength",
        // .binding = &shader_injection.fx_film_grain_strength,
        // .default_value = 50.f,
        // .label = "Film Grain Strength",
        // .section = "Effects",
        // .tooltip = "Controls the strength custom film grain",
        // .max = 100.f,
        // .parse = [](float value) { return value * 0.01f; },
        // .is_visible = []() { return current_settings_mode >= 1; },
        // },
       new renodx::utils::settings::Setting{
        .key = "FxDitheringStrength",
        .binding = &shader_injection.fx_dithering_strength,
        .default_value = 100.f,
        .label = "Dithering Strength",
        .section = "Effects",
        .tooltip = "Controls how much dithering to apply to the image",
        .max = 100.f,
        .parse = [](float value) { return value * 0.01f; },
        .is_visible = []() { return current_settings_mode == 2; },
    },
    new renodx::utils::settings::Setting{
        .key = "toneMapClampUI",
        .binding = &shader_injection.tone_map_ui_clamp,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .label = "UI Clamp",
        .section = "Effects",
        .tooltip = "Fixes some UI exceeding SDR range",
        .labels = {"Off", "On"},
        .is_visible = []() { return current_settings_mode == 2; },
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
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "- Disable 'HDR Output' in the game's settings and make sure both the bloom and the distortions toggle is on (you can set the slider to 0). \r\n \r\n- Settings and sliders do not apply in real time. Things that apply the settings include: \r\n    - Aim gliding. I recommend to load into a hub e.g. Cetus \r\n    - Some effects e.g. when the game fades to black / to white",
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
        .label = "ShortFuse's Ko-Fi",
        .section = "Links",
        .group = "button-line-2",
        .tint = 0xFF5A16,
        .on_change = []() {
          renodx::utils::platform::Launch("https://ko-fi.com/shortfuse");
        },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = std::string("Build: ") + renodx::utils::date::ISO_DATE_TIME,
        .section = "About",
    },
 };
 
 void OnPresetOff() {
   //   renodx::utils::settings::UpdateSetting("toneMapType", 0.f);
   //   renodx::utils::settings::UpdateSetting("toneMapPeakNits", 203.f);
   //   renodx::utils::settings::UpdateSetting("toneMapGameNits", 203.f);
   //   renodx::utils::settings::UpdateSetting("toneMapUINits", 203.f);
   //   renodx::utils::settings::UpdateSetting("toneMapGammaCorrection", 0);
   //   renodx::utils::settings::UpdateSetting("colorGradeExposure", 1.f);
   //   renodx::utils::settings::UpdateSetting("colorGradeHighlights", 50.f);
   //   renodx::utils::settings::UpdateSetting("colorGradeShadows", 50.f);
   //   renodx::utils::settings::UpdateSetting("colorGradeContrast", 50.f);
   //   renodx::utils::settings::UpdateSetting("colorGradeSaturation", 50.f);
   //   renodx::utils::settings::UpdateSetting("colorGradeLUTStrength", 100.f);
   //   renodx::utils::settings::UpdateSetting("colorGradeLUTScaling", 0.f);
   renodx::utils::settings::UpdateSetting("ToneMapType", 0.f);
   renodx::utils::settings::UpdateSetting("ToneMapPeakNits", 203.f);
   renodx::utils::settings::UpdateSetting("ToneMapGameNits", 203.f);
   renodx::utils::settings::UpdateSetting("ToneMapUINits", 203.f);
   renodx::utils::settings::UpdateSetting("ColorGradeExposure", 1.f);
   renodx::utils::settings::UpdateSetting("ColorGradeHighlights", 50.f);
   renodx::utils::settings::UpdateSetting("ColorGradeShadows", 50.f);
   renodx::utils::settings::UpdateSetting("ColorGradeContrast", 50.f);
   renodx::utils::settings::UpdateSetting("ColorGradeSaturation", 50.f);
   renodx::utils::settings::UpdateSetting("ColorGradeHighlightSaturation", 50.f);
   renodx::utils::settings::UpdateSetting("ColorGradeBlowoutRestoration", 50.f);
   renodx::utils::settings::UpdateSetting("ColorGradeBlowout", 0.f);
   renodx::utils::settings::UpdateSetting("ColorGradeFlare", 0.f);
   renodx::utils::settings::UpdateSetting("ColorGradeScene", 100.f);
   renodx::utils::settings::UpdateSetting("FxVignetteStrength", 50.f);
   renodx::utils::settings::UpdateSetting("FxCAStrength", 50.f);
   renodx::utils::settings::UpdateSetting("FxDitheringStrength", 100.f);
   renodx::utils::settings::UpdateSetting("toneMapClampUI", 1.f);


   /*
   
ToneMapScaling = 0.f

ColorGradeExposure = 50.f
ColorGradeHighlights = 50.f
ColorGradeShadows = 50.f
ColorGradeContrast = 50.f
ColorGradeSaturation = 50.f
ColorGradeHighlightSaturation = 50.f
ColorGradeBlowoutRestoration = 0.f
ColorGradeBlowout = 0.f
ColorGradeFlare = 0.f
ColorGradeScene = 100.f

FxVignetteStrength = 50.f
FxCAStrength = 50.f
FxDitheringStrength = 100.f
toneMapClampUI = 1.f
*/
 }
 
 const auto UPGRADE_TYPE_NONE = 0.f;
 const auto UPGRADE_TYPE_OUTPUT_SIZE = 1.f;
 const auto UPGRADE_TYPE_OUTPUT_RATIO = 2.f;
 const auto UPGRADE_TYPE_ANY = 3.f;
 
 bool initialized = false;
 
 }  // namespace
 
 extern "C" __declspec(dllexport) constexpr const char* NAME = "RenoDX";
 extern "C" __declspec(dllexport) constexpr const char* DESCRIPTION = "RenoDX (Generic)";
 
 BOOL APIENTRY DllMain(HMODULE h_module, DWORD fdw_reason, LPVOID lpv_reserved) {
   switch (fdw_reason) {
     case DLL_PROCESS_ATTACH:
       if (!reshade::register_addon(h_module)) return FALSE;
 
       if (!initialized) {
         renodx::mods::shader::force_pipeline_cloning = true;
         renodx::mods::shader::expected_constant_buffer_space = 50;
         renodx::mods::shader::expected_constant_buffer_index = 13;
         renodx::mods::shader::allow_multiple_push_constants = true;
 
         renodx::mods::swapchain::expected_constant_buffer_index = 13;
         renodx::mods::swapchain::expected_constant_buffer_space = 50;
         renodx::mods::swapchain::use_resource_cloning = true;

         renodx::mods::swapchain::swap_chain_proxy_vertex_shader = __swap_chain_proxy_vertex_shader;
         renodx::mods::swapchain::swap_chain_proxy_pixel_shader = __swap_chain_proxy_pixel_shader;


        // renodx::mods::swapchain::swap_chain_upgrade_targets.push_back({
        //     .old_format = reshade::api::format::r8g8b8a8_typeless,
        //     .new_format = reshade::api::format::r10g10b10a2_typeless,
        //     .index = 0,
        //     .ignore_size = true,
        // });
        renodx::mods::swapchain::swap_chain_upgrade_targets.push_back({
            .old_format = reshade::api::format::r8g8b8a8_typeless,
            .new_format = reshade::api::format::r16g16b16a16_float,
        });
        renodx::mods::swapchain::swap_chain_upgrade_targets.push_back({
            .old_format = reshade::api::format::r10g10b10a2_unorm,
            .new_format = reshade::api::format::r16g16b16a16_float,
            .index = 0,
            .ignore_size = true,
        });

         initialized = true;
       }
 
       break;
     case DLL_PROCESS_DETACH:
       reshade::unregister_addon(h_module);
       break;
   }

   renodx::utils::settings::Use(fdw_reason, &settings, &OnPresetOff);
   renodx::mods::swapchain::Use(fdw_reason, &shader_injection);
   renodx::mods::shader::Use(fdw_reason, custom_shaders, &shader_injection);
 
   return TRUE;
 }
 