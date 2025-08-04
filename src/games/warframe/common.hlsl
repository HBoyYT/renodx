#include "./shared.h"

float3 SampleLUT(float3 color, SamplerState s0, Texture3D t0) { // Modified version from Cyberpunk
  renodx::lut::Config lut_config = renodx::lut::config::Create();
  lut_config.lut_sampler = s0;
  lut_config.size = 33u;
  lut_config.tetrahedral = true;
  lut_config.type_input = renodx::lut::config::type::ARRI_C800;
  lut_config.type_output = renodx::lut::config::type::SRGB;
  lut_config.scaling = 0.f;
  lut_config.recolor = 0.f;
  lut_config.strength = 1.f;

  float3 linear_input_color = color;

  color = renodx::lut::Sample(color * 2, lut_config, t0);  // The lut takes 2 * arri c800 encode as input
                                                           // When I am using lut::sample, I use 2 * linear as input
  float3 lutOutputColor = color;

  if (shader_injection.lut_scaling != 0.f) {
    float3 lut_black = 0.f;
    float3 lut_mid_gray = 0.18f;
    float3 lut_white = 1.f;

    lut_black = renodx::lut::Sample(0.f, lut_config, t0);
    lut_mid_gray = renodx::lut::Sample((0.18f) * 2, lut_config, t0);
    lut_white = renodx::lut::Sample((1.f) * 2, lut_config, t0);
    
    float3 output_gamma = lutOutputColor;  // What the lut returns normally
    float3 black_gamma = lut_black;
    float3 midgray_gamma = lut_mid_gray;
    float3 peak_gamma = lut_white;
    float3 input_gamma = linear_input_color;

    float mid_gray = renodx::color::y::from::BT709(lut_mid_gray);
    float peak = renodx::color::y::from::BT709(lut_white);

    // Correct peak (upgradetonemap)
    float3 neutral_tonemapped = renodx::tonemap::ReinhardScalable(linear_input_color, peak, 0, 0.18f, mid_gray);
    float3 graded_color = renodx::tonemap::UpgradeToneMap(
        linear_input_color * mid_gray / 0.18f,
        neutral_tonemapped,
        color,
        1.f);
    color = lerp(color, graded_color, shader_injection.lut_scaling);

    // linear to gamma
    output_gamma = renodx::color::srgb::EncodeSafe(color);
    black_gamma = renodx::color::srgb::EncodeSafe(lut_black);
    midgray_gamma = renodx::color::srgb::EncodeSafe(lut_mid_gray);
    peak_gamma = 1.f;  // Peak already corrected
    input_gamma = renodx::color::srgb::EncodeSafe(linear_input_color);

    float3 unclamped = renodx::lut::Unclamp(
        output_gamma,
        black_gamma,
        midgray_gamma,
        peak_gamma,
        input_gamma);

    float3 recolored = renodx::lut::RecolorUnclamped(
        color,
        renodx::color::srgb::DecodeSafe(unclamped));

    color = lerp(color, recolored, shader_injection.lut_scaling);
  } else {
    return lutOutputColor;  // Lut without any corrections
  }

  return color; // Lut without any corrections
}

float3 ApplyTonemap(float3 untonemapped, bool isLUT = false) {
  
  renodx::tonemap::Config tone_map_config = renodx::tonemap::config::Create();
  tone_map_config.peak_nits = shader_injection.peak_white_nits;
  tone_map_config.game_nits = shader_injection.diffuse_white_nits;
  tone_map_config.type = shader_injection.tone_map_type;
  tone_map_config.gamma_correction = shader_injection.gamma_correction;
  tone_map_config.exposure = shader_injection.tone_map_exposure;
  tone_map_config.highlights = shader_injection.tone_map_highlights;
  tone_map_config.shadows = shader_injection.tone_map_shadows;
  tone_map_config.contrast = shader_injection.tone_map_contrast;
  tone_map_config.saturation = shader_injection.tone_map_saturation;
  
  tone_map_config.reno_drt_highlights = 1.0f;
  tone_map_config.reno_drt_shadows = 1.0f;
  tone_map_config.reno_drt_contrast = 1.0f;
  tone_map_config.reno_drt_saturation = 1.0f;
  tone_map_config.reno_drt_blowout = -1.f * (shader_injection.tone_map_highlight_saturation - 1.f);
  tone_map_config.reno_drt_dechroma = shader_injection.tone_map_blowout;
  if (isLUT) {
    tone_map_config.reno_drt_dechroma = max(0,(shader_injection.tone_map_blowout-0.5f));
  }
  tone_map_config.reno_drt_flare = 0.10f * pow(shader_injection.tone_map_flare, 10.f);
  //tone_map_config.reno_drt_white_clip = shader_injection.reno_drt_white_clip;
  tone_map_config.hue_correction_type = renodx::tonemap::renodrt::config::hue_correction_type::CUSTOM;
  tone_map_config.hue_correction_color = renodx::tonemap::Reinhard(untonemapped);
  tone_map_config.reno_drt_hue_correction_method = 1u;  // ICtCp
  tone_map_config.hue_correction_strength = shader_injection.tone_map_hue_correction;
  tone_map_config.reno_drt_tone_map_method = 1u;  // Reinhard

  // For BT2020
  tone_map_config.reno_drt_working_color_space = 1u;

  float3 color = renodx::tonemap::config::Apply(untonemapped, tone_map_config);
  return color;
}

float3 GammaColorSpace(float3 color) {
  renodx::draw::Config config = renodx::draw::BuildConfig();
  config.swap_chain_gamma_correction = RENODX_GAMMA_CORRECTION;
  config.swap_chain_custom_color_space = RENODX_SWAP_CHAIN_CUSTOM_COLOR_SPACE;

  if (config.swap_chain_gamma_correction == 1) {
    color = renodx::color::convert::ColorSpaces(color, config.swap_chain_decoding_color_space, renodx::color::convert::COLOR_SPACE_BT709);
    config.swap_chain_decoding_color_space = renodx::color::convert::COLOR_SPACE_BT709;
    color = renodx::color::correct::GammaSafe(color, false, 2.2f);
  } else if (config.swap_chain_gamma_correction == 2) {
    color = renodx::color::convert::ColorSpaces(color, config.swap_chain_decoding_color_space, renodx::color::convert::COLOR_SPACE_BT709);
    config.swap_chain_decoding_color_space = renodx::color::convert::COLOR_SPACE_BT709;
    color = renodx::color::correct::GammaSafe(color, false, 2.4f);
  }

  [branch]
  if (config.swap_chain_custom_color_space == renodx::draw::COLOR_SPACE_CUSTOM_BT709D93) {
    color = renodx::color::convert::ColorSpaces(color, config.swap_chain_decoding_color_space, renodx::color::convert::COLOR_SPACE_BT709);
    color = renodx::color::bt709::from::BT709D93(color);
    config.swap_chain_decoding_color_space = renodx::color::convert::COLOR_SPACE_BT709;
  } else if (config.swap_chain_custom_color_space == renodx::draw::COLOR_SPACE_CUSTOM_NTSCU) {
    color = renodx::color::convert::ColorSpaces(color, config.swap_chain_decoding_color_space, renodx::color::convert::COLOR_SPACE_BT709);
    color = renodx::color::bt709::from::BT601NTSCU(color);
    config.swap_chain_decoding_color_space = renodx::color::convert::COLOR_SPACE_BT709;
  } else if (config.swap_chain_custom_color_space == renodx::draw::COLOR_SPACE_CUSTOM_NTSCJ) {
    color = renodx::color::convert::ColorSpaces(color, config.swap_chain_decoding_color_space, renodx::color::convert::COLOR_SPACE_BT709);
    color = renodx::color::bt709::from::ARIBTRB9(color);
    config.swap_chain_decoding_color_space = renodx::color::convert::COLOR_SPACE_BT709;
  }

  return color;
}

float3 OutputShaderPass(float3 color, float paperwhite = 80) {
  color = renodx::color::pq::DecodeSafe(color, 80);\
  color = renodx::color::bt709::from::BT2020(color);
  float3 colorGamma = GammaColorSpace(color);
  colorGamma = renodx::color::bt2020::from::BT709(colorGamma);
  colorGamma = renodx::color::pq::EncodeSafe(colorGamma, 80);

  return colorGamma;
}