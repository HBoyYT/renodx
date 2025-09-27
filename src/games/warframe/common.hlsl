#include "./shared.h"

float3 WarframeHDRTonemapper(float3 untonemapped, bool SDR = false) {
  float a = 2708.714111328125f;
  float b = 6801.15234375f;
  float c = 1079.54736328125f;
  float d = 1.1614649295806885f;
  float e = -4.139374868827872e-05f;
  float f = 983.3893432617188f;
  float g = 4132.06640625f;
  float h = 2881.652099609375f;
  float i = 128.35911560058594f;
  float j = 1.0f;

  if (SDR) {
    a *= 3.7;
    b *= 2.4;
    f *= 10.1;
    g *= 4;
    h *= 1.3;
  }

  float3 num = ((((((((untonemapped * a) + b) * untonemapped) + c) * untonemapped) + d) * untonemapped) + e);
  float3 den = ((((((((untonemapped * f) + g) * untonemapped) + h) * untonemapped) + i) * untonemapped) + j);
  float3 color = renodx::color::srgb::DecodeSafe(num / den);

  return color;
}

// Modified version from Cyberpunk
float3 SampleLUT(float3 color, SamplerState sampler, Texture3D texture, bool luttype) { 
  renodx::lut::Config lut_config = renodx::lut::config::Create();
  lut_config.lut_sampler = sampler;
  lut_config.size = luttype ? 33u : 16u;
  lut_config.tetrahedral = true; 
  lut_config.scaling = 0.f;
  lut_config.recolor = 0.f;
  lut_config.strength = 1.f;
  lut_config.type_input = renodx::lut::config::type::ARRI_C800;
  lut_config.type_output = luttype ? renodx::lut::config::type::SRGB : renodx::lut::config::type::ARRI_C800;

  float3 linear_input_color = color;

  color = renodx::lut::Sample(color * 2, lut_config, texture);  // The lut takes 2 * arri c800 encode as input
                                                           // When I am using lut::sample, I use 2 * linear as input
  float3 lutOutputColor = color;

  if (shader_injection.lut_scaling != 0.f) {
    float3 lut_black = 0.f;
    float3 lut_mid_gray = 0.18f;
    float3 lut_white = 1.f;

    lut_black = renodx::lut::Sample(0.f, lut_config, texture);
    lut_mid_gray = renodx::lut::Sample(0.18f, lut_config, texture);
    lut_white = renodx::lut::Sample((1.f) * 2, lut_config, texture);
    
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
    color = lerp(color, graded_color, RENODX_LUT_SCALING); // Lut peak scaling

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

    color = lerp(color, recolored, shader_injection.lut_scaling); // Lut scaling (not peak)
  } else {
    return lutOutputColor;  // Lut without any corrections
  }
  return color;
}

void CrossFadeFix(inout float color_r, inout float color_g, inout float color_b, in float cb0_009x, in float cb0_009z) {
  float3 color = float3(color_r, color_g, color_b); 
  color = lerp(saturate(renodx::color::bt2020::from::BT709(color)) / 2, color, cb0_009x);
  color = lerp(saturate(renodx::color::bt2020::from::BT709(color)) / 2, color, cb0_009z + 1.f);

  color_r = color.r;
  color_g = color.g;
  color_b = color.b;
}

float3 GetUntonemappedGraded(float3 untonemapped, float3 tonemapped_graded) {
  float3 untonemapped_graded;

  if (RENODX_TONE_MAP_TYPE == 3.f) {  // Modified Warframe tonemapper
    // float blend = smoothstep(1, 1.2, renodx::color::y::from::BT709(tonemapped_graded));
    // untonemapped_graded = lerp(tonemapped_graded, untonemapped * 1.83899937044f, blend);

    untonemapped_graded = select(untonemapped >= 0.46194799166660605, 2.0044507284183912f * untonemapped, tonemapped_graded);
  }

  untonemapped_graded = lerp(untonemapped, untonemapped_graded, RENODX_COLOR_GRADE_STRENGTH);

  return untonemapped_graded;
}

float3 ApplyTonemap(float3 color, bool isLUT, float3 untonemapped, bool per_channel = shader_injection.tone_map_per_channel) {
  
  renodx::tonemap::Config tone_map_config = renodx::tonemap::config::Create();
  tone_map_config.peak_nits = shader_injection.peak_white_nits;
  tone_map_config.game_nits = shader_injection.diffuse_white_nits;
  tone_map_config.type = shader_injection.tone_map_type == 3.f || shader_injection.tone_map_type == 6.f ? 3.f : 0.f;
  tone_map_config.reno_drt_per_channel = isLUT ? 0.f : per_channel;
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
  tone_map_config.reno_drt_flare = 0.10f * pow(shader_injection.tone_map_flare, 10.f);
  tone_map_config.reno_drt_tone_map_method = 1u;  // Reinhard

  tone_map_config.hue_correction_strength = 0.f;
  tone_map_config.reno_drt_working_color_space = 0u;

  float3 tonemapped_color = renodx::tonemap::config::Apply(color, tone_map_config);

  // Chrominance correction (when tone mapping per channel)
  if (tone_map_config.reno_drt_per_channel == true && shader_injection.tone_map_chrominance_restoration > 0.f) {
    tone_map_config.reno_drt_per_channel = false;
    float3 color_luminance = renodx::tonemap::config::Apply(color, tone_map_config);

    // If by luminance color's chrominance is greater than per channel's chrominance
    if (length(renodx::color::ictcp::from::BT709(color_luminance).yz) > length(renodx::color::ictcp::from::BT709(tonemapped_color).yz)) {
      tonemapped_color = renodx::color::correct::ChrominanceICtCp(tonemapped_color, color_luminance, saturate(renodx::color::y::from::BT2020(renodx::tonemap::renodrt::NeutralSDR(color)) * shader_injection.tone_map_chrominance_restoration));
    }
  }

  // Do not want to hue correct SDR luts
  tonemapped_color = !isLUT ? renodx::color::correct::HueICtCp(tonemapped_color, WarframeHDRTonemapper(untonemapped, true), RENODX_TONE_MAP_HUE_CORRECTION) : tonemapped_color;

  return tonemapped_color;
}

void TonemapperFix(inout float tonemapped_graded_r, inout float tonemapped_graded_g, inout float tonemapped_graded_b, float3 untonemapped) {
  
  float3 tonemapped_graded = float3(tonemapped_graded_r, tonemapped_graded_g, tonemapped_graded_b);
  float3 untonemapped_graded = GetUntonemappedGraded(untonemapped, tonemapped_graded);
  tonemapped_graded = ApplyTonemap(untonemapped_graded, false, untonemapped);

  tonemapped_graded_r = tonemapped_graded.r;
  tonemapped_graded_g = tonemapped_graded.g;
  tonemapped_graded_b = tonemapped_graded.b;
}

float3 LUTFix(float3 untonemapped, SamplerState sampler, Texture3D texture, bool luttype) {
  float3 lutcolor = SampleLUT(untonemapped, sampler, texture, luttype);  // Linear in, linear out
  lutcolor = lerp(untonemapped, lutcolor, RENODX_COLOR_GRADE_STRENGTH);
  float3 lutcolorTonemapped = ApplyTonemap(lutcolor, luttype, untonemapped);

  if (shader_injection.tone_map_per_channel == 1.f && shader_injection.tone_map_chrominance_restoration > 0.f && luttype == false) {
    float3 byLuminance = ApplyTonemap(lutcolor, false, untonemapped, false);
    lutcolorTonemapped = renodx::color::correct::ChrominanceICtCp(lutcolor, byLuminance, saturate(renodx::color::y::from::BT2020(renodx::tonemap::renodrt::NeutralSDR(lutcolor)) * shader_injection.tone_map_chrominance_restoration));
  }

  lutcolorTonemapped = luttype ? renodx::color::srgb::EncodeSafe(lutcolorTonemapped) : renodx::color::arri::logc::c800::Decode(lutcolorTonemapped);  // needs to match output from the lut
  
  return lutcolorTonemapped;
}

// Linear in, Linear out
void GammaColorSpaceCorrection(inout float3 color, in uint inputtype = 0u, in uint color_space = 0u, in float paperwhite = 80.f) {
  if (inputtype == 1u) {
    color = renodx::color::srgb::DecodeSafe(color);
  } else if (inputtype == 2u) {
    color = renodx::color::pq::DecodeSafe(color, paperwhite);
  }

  renodx::draw::Config config = renodx::draw::BuildConfig();
  config.swap_chain_gamma_correction = RENODX_GAMMA_CORRECTION;
  config.swap_chain_custom_color_space = RENODX_SWAP_CHAIN_CUSTOM_COLOR_SPACE;
  config.swap_chain_decoding_color_space = color_space;

  if (color_space == 1u) {
    color = renodx::color::bt709::from::BT2020(color);
  }

  if (config.swap_chain_gamma_correction == 1) {
    color = renodx::color::correct::GammaSafe(color, false, 2.2f);
  } else if (config.swap_chain_gamma_correction == 2) {
    color = renodx::color::correct::GammaSafe(color, false, 2.4f);
  }

  [branch]
  if (config.swap_chain_custom_color_space == renodx::draw::COLOR_SPACE_CUSTOM_BT709D93) {
    color = renodx::color::bt709::from::BT709D93(color);
  } else if (config.swap_chain_custom_color_space == renodx::draw::COLOR_SPACE_CUSTOM_NTSCU) {
    color = renodx::color::bt709::from::BT601NTSCU(color);
  } else if (config.swap_chain_custom_color_space == renodx::draw::COLOR_SPACE_CUSTOM_NTSCJ) {
    color = renodx::color::bt709::from::ARIBTRB9(color);
  }

  if (color_space == 1u) {
    color = renodx::color::bt2020::from::BT709(color);
  } 

  if (inputtype == 1u) {
    color = renodx::color::srgb::EncodeSafe(color);
  } else if (inputtype == 2u) {
    color = renodx::color::pq::EncodeSafe(color, paperwhite);
  } else {
    //
  }
}

void BT2020fromBT709andPQEncode(inout float3 color, in float paperwhite) {
  [branch]
  if (!RENODX_FIX_COLOR) {
    paperwhite = paperwhite * 9.999999747378752e-05f;
    float colorr = exp2(log2(mad(0.04331360012292862f, color.b, mad(0.3292819857597351f, color.g, (color.r * 0.627403974533081f))) * paperwhite) * 0.1593017578125f);
    float colorg = exp2(log2(mad(0.012477199546992779f, color.b, mad(0.9417769908905029f, color.g, (color.r * 0.045745600014925f))) * paperwhite) * 0.1593017578125f);
    float colorb = exp2(log2(mad(0.9836069941520691f, color.b, mad(0.017604099586606026f, color.g, (color.r * -0.0012105499627068639f))) * paperwhite) * 0.1593017578125f);
    color.r = exp2(log2(((colorr * 18.8515625f) + 0.8359375f) / ((colorr * 18.6875f) + 1.0f)) * 78.84375f);
    color.g = exp2(log2(((colorg * 18.8515625f) + 0.8359375f) / ((colorg * 18.6875f) + 1.0f)) * 78.84375f);
    color.b = exp2(log2(((colorb * 18.8515625f) + 0.8359375f) / ((colorb * 18.6875f) + 1.0f)) * 78.84375f);
  } else {
    color = renodx::color::bt2020::from::BT709(color);
    color = renodx::color::pq::EncodeSafe(color, paperwhite);
  }
}

void PQDecodeBT709FromBT2020(inout float3 color, in float paperwhite) {
  [branch]
  if (!RENODX_FIX_COLOR) {
    paperwhite = paperwhite * 9.999999747378752e-05f;
    color.r = (pow(color.r, 0.012683313339948654f));
    color.g = (pow(color.g, 0.012683313339948654f));
    color.b = (pow(color.b, 0.012683313339948654f));
    color.r = exp2(log2(max((color.r + -0.8359375f), 0.0f) / (18.8515625f - (color.r * 18.6875f))) * 6.277394771575928f) / paperwhite;
    color.g = exp2(log2(max((color.g + -0.8359375f), 0.0f) / (18.8515625f - (color.g * 18.6875f))) * 6.277394771575928f) / paperwhite;
    color.b = exp2(log2(max((color.b + -0.8359375f), 0.0f) / (18.8515625f - (color.b * 18.6875f))) * 6.277394771575928f) / paperwhite;
    color.r = mad(-0.07283999770879745f, color.b, mad(-0.5876560211181641f, color.g, (color.r * 1.6604959964752197f)));
    color.g = mad(-0.00834800023585558f, color.b, mad(1.1328949928283691f, color.g, (color.r * -0.12454699724912643f)));
    color.b = mad(1.118751049041748f, color.b, mad(-0.10059700161218643f, color.g, (color.r * -0.018154000863432884f)));
  } else {
    color = renodx::color::pq::DecodeSafe(color, paperwhite);
    color = renodx::color::bt709::from::BT2020(color);
  }
}

// Apply Vanilla Dithering + vanilla / renodx film grain
float3 ApplyDitheringAndFilmGrain(float3 color, float3 dither_color, float filmGrain_color, float2 xy) {

  float3 final_color;
  [branch]
  if (RENODX_FX_FILM_GRAIN_TYPE == 1.f) {
    color = renodx::color::pq::DecodeSafe(color, RENODX_DIFFUSE_WHITE_NITS);
    color = renodx::effects::ApplyFilmGrain(color, xy, RENODX_FX_RANDOM, RENODX_FX_FILM_GRAIN_STRENGTH * 0.03f, 1.f);
    color = renodx::color::pq::EncodeSafe(color, RENODX_DIFFUSE_WHITE_NITS);

    final_color.r = (dither_color.r * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + color.x;
    final_color.g = (dither_color.g * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + color.y;
    final_color.b = (dither_color.b * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + color.z;
  } else {
    final_color.r = saturate(((dither_color.r * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + color.x) + filmGrain_color);
    final_color.g = saturate(((dither_color.g * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + color.y) + filmGrain_color);
    final_color.b = saturate(((dither_color.b * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + color.z) + filmGrain_color);
  }

  return final_color;
}

// Takes in BT2020 PQ and outputs BT2020 PQ (gamma corrected)
float3 BlendUI(float4 UIColor, float3 color) {
  [branch]
  if ((!(UIColor.w < 9.999999747378752e-05f)) && RENODX_FX_ENABLE_UI) {
    PQDecodeBT709FromBT2020(color, RENODX_GRAPHICS_WHITE_NITS);

    color = renodx::color::srgb::EncodeSafe(color);
    float scale = 1.0f - UIColor.w;
    color *= scale;
    color += UIColor.rgb;
    color = renodx::color::srgb::DecodeSafe(color);

    GammaColorSpaceCorrection(color, 0u, 0u, RENODX_GRAPHICS_WHITE_NITS);
    BT2020fromBT709andPQEncode(color, RENODX_GRAPHICS_WHITE_NITS);
  } else {
    GammaColorSpaceCorrection(color, 2u, 1u, RENODX_DIFFUSE_WHITE_NITS);
  }
  return color;
}