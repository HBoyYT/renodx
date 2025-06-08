#include "../../shaders/renodx.hlsl"

float3 OutputTonemap(float3 untonemappedInput, float4 VanillaHDR) {
  float3 untonemapped = renodx::tonemap::ExponentialRollOff(renodx::color::correct::GammaSafe(untonemappedInput, false, 2.4),0.38f,1.f);
  if (RENODX_TONE_MAP_TYPE == 3.f) {  // RenoDRT Tonemapper
    float3 output = renodx::tonemap::renodrt::BT709(untonemapped,
                                                    RENODX_PEAK_WHITE_NITS,
                                                    0.18,
                                                    18,
                                                    1.f,
                                                    1.f,
                                                    1.f,
                                                    1.f,
                                                    RENODX_TONE_MAP_SATURATION,
                                                    RENODX_TONE_MAP_BLOWOUT,
                                                    RENODX_TONE_MAP_FLARE * 0.05,
                                                    RENODX_TONE_MAP_HUE_CORRECTION);
    return output;
  } else if (RENODX_TONE_MAP_TYPE == 2.f) {  // ACES Tonemapper
    float3 output = renodx::tonemap::frostbite::BT709(untonemapped, 1.f,0.5f,RENODX_TONE_MAP_HIGHLIGHT_SATURATION, RENODX_TONE_MAP_HUE_SHIFT);
    return renodx::color::correct::GammaSafe(output.rgb,true,2.0);
  } else if (RENODX_TONE_MAP_TYPE == 1.f) {  // No Tonemapper
    return untonemapped;
  } else if (RENODX_TONE_MAP_TYPE == 0.f) {  // Vanilla HDR Image
    float3 output = VanillaHDR.rgb;
    return (output);
  } else {
    float3 output = float3(1, 1, 1);
    return output;
  }
}


float3 ApplyTonemap(float3 color) {
  renodx::tonemap::Config config = renodx::tonemap::config::Create();
  config.type = RENODX_TONE_MAP_TYPE;
  config.peak_nits = RENODX_PEAK_WHITE_NITS;
  config.game_nits = RENODX_DIFFUSE_WHITE_NITS;
  config.gamma_correction = RENODX_GAMMA_CORRECTION;
  config.exposure = RENODX_TONE_MAP_EXPOSURE;
  config.highlights = RENODX_TONE_MAP_HIGHLIGHTS;
  config.shadows = RENODX_TONE_MAP_SHADOWS;
  config.contrast = RENODX_TONE_MAP_CONTRAST;
  config.saturation = RENODX_TONE_MAP_SATURATION;
  config.mid_gray_value = 0.18f;
  config.mid_gray_nits = 18.f;
  config.reno_drt_highlights = RENODX_TONE_MAP_HIGHLIGHTS;
  config.reno_drt_shadows = RENODX_TONE_MAP_SHADOWS;
  config.reno_drt_contrast = RENODX_TONE_MAP_CONTRAST;
  config.reno_drt_saturation = RENODX_TONE_MAP_SATURATION;
  config.reno_drt_dechroma = RENODX_TONE_MAP_BLOWOUT;
  config.reno_drt_flare = RENODX_TONE_MAP_FLARE;
  config.hue_correction_type = RENODX_TONE_MAP_HUE_PROCESSOR;
  config.hue_correction_strength = RENODX_TONE_MAP_HUE_CORRECTION;
  config.reno_drt_hue_correction_method = RENODX_TONE_MAP_HUE_PROCESSOR;
  config.reno_drt_tone_map_method = renodx::tonemap::renodrt::config::tone_map_method::REINHARD;
  config.reno_drt_working_color_space = 0u;
  config.reno_drt_per_channel = RENODX_TONE_MAP_PER_CHANNEL;
  config.reno_drt_blowout = RENODX_TONE_MAP_BLOWOUT;
  config.reno_drt_clamp_color_space = 0.f;
  config.reno_drt_white_clip = 100.f;

  float3 tonemapped = renodx::tonemap::config::Apply(color, config);
  float3 outputColor;
  if (RENODX_TONE_MAP_TYPE != 0.f) {
    outputColor = tonemapped;
  } else {
    outputColor = color;
  }
  return outputColor;
}

float3 SwapChainPass(float3 color) {
  renodx::draw::Config config = renodx::draw::BuildConfig();
  config.swap_chain_gamma_correction = RENODX_GAMMA_CORRECTION;

  color = renodx::color::pq::DecodeSafe(color,RENODX_DIFFUSE_WHITE_NITS);

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

  //color = min(color, RENODX_PEAK_WHITE_NITS);  // Clamp UI or Videos

  color = renodx::color::pq::EncodeSafe(color, RENODX_DIFFUSE_WHITE_NITS);

  return color;
}

