#ifndef SRC_TEMPLATE_SHARED_H_
#define SRC_TEMPLATE_SHARED_H_

// #define RENODX_PEAK_WHITE_NITS                 1000.f
// #define RENODX_DIFFUSE_WHITE_NITS              renodx::color::bt2408::REFERENCE_WHITE
// #define RENODX_GRAPHICS_WHITE_NITS             renodx::color::bt2408::GRAPHICS_WHITE
// #define RENODX_COLOR_GRADE_STRENGTH            1.f
// #define RENODX_TONE_MAP_TYPE                   TONE_MAP_TYPE_RENO_DRT
// #define RENODX_TONE_MAP_EXPOSURE               1.f
// #define RENODX_TONE_MAP_HIGHLIGHTS             1.f
// #define RENODX_TONE_MAP_SHADOWS                1.f
// #define RENODX_TONE_MAP_CONTRAST               1.f
// #define RENODX_TONE_MAP_SATURATION             1.f
// #define RENODX_TONE_MAP_HIGHLIGHT_SATURATION   1.f
// #define RENODX_TONE_MAP_BLOWOUT                0
// #define RENODX_TONE_MAP_FLARE                  0
// #define RENODX_TONE_MAP_HUE_CORRECTION         1.f
// #define RENODX_TONE_MAP_HUE_SHIFT              0
// #define RENODX_TONE_MAP_WORKING_COLOR_SPACE    color::convert::COLOR_SPACE_BT709
// #define RENODX_TONE_MAP_CLAMP_COLOR_SPACE      color::convert::COLOR_SPACE_NONE
// #define RENODX_TONE_MAP_CLAMP_PEAK             color::convert::COLOR_SPACE_BT709
// #define RENODX_TONE_MAP_HUE_PROCESSOR          HUE_PROCESSOR_OKLAB
// #define RENODX_TONE_MAP_PER_CHANNEL            0
// #define RENODX_GAMMA_CORRECTION                GAMMA_CORRECTION_GAMMA_2_2
// #define RENODX_INTERMEDIATE_SCALING            (RENODX_DIFFUSE_WHITE_NITS / RENODX_GRAPHICS_WHITE_NITS)
// #define RENODX_INTERMEDIATE_ENCODING           (RENODX_GAMMA_CORRECTION + 1.f)
//#define RENODX_INTERMEDIATE_COLOR_SPACE        color::convert::COLOR_SPACE_BT709
// #define RENODX_SWAP_CHAIN_DECODING             RENODX_INTERMEDIATE_ENCODING
// #define RENODX_SWAP_CHAIN_DECODING_COLOR_SPACE RENODX_INTERMEDIATE_COLOR_SPACE
// #define RENODX_SWAP_CHAIN_CUSTOM_COLOR_SPACE   COLOR_SPACE_CUSTOM_BT709D65
// #define RENODX_SWAP_CHAIN_SCALING_NITS         RENODX_GRAPHICS_WHITE_NITS
// #define RENODX_SWAP_CHAIN_CLAMP_NITS           RENODX_PEAK_WHITE_NITS
// #define RENODX_SWAP_CHAIN_ENCODING             ENCODING_SCRGB
// #define RENODX_SWAP_CHAIN_ENCODING_COLOR_SPACE color::convert::COLOR_SPACE_BT709

// Must be 32bit aligned
// Should be 4x32
struct ShaderInjectData {
  float peak_white_nits;
  float diffuse_white_nits;
  float graphics_white_nits;
  float color_grade_strength;
  float tone_map_type;
  float tone_map_exposure;
  float tone_map_highlights;
  float tone_map_shadows;
  float tone_map_contrast;
  float tone_map_saturation;
  float tone_map_highlight_saturation;
  float tone_map_blowout;
  float tone_map_flare;
  float tone_map_hue_correction;
  float tone_map_hue_shift;
  float tone_map_working_color_space;
  float tone_map_clamp_color_space;
  float tone_map_clamp_peak;
  float tone_map_hue_processor;
  float tone_map_per_channel;
  float gamma_correction;


  //  float swap_chain_decoding_color_space;
  float swap_chain_custom_color_space;
  // float swap_chain_scaling_nits;
  // float swap_chain_clamp_nits;
  float swap_chain_clamp_color_space;
  float swap_chain_encoding;
  float swap_chain_encoding_color_space;
  float fx_dithering_strength;
  float fx_ca_strength;
  float fx_vignette_strength;
  float fx_film_grain_strength;
  float elapsedTime;
  float random_1;
  float random_2;
  float random_3;
  float tone_map_ui_clamp;
  float per_channel_hue_correction;
  float per_channel_chrominance_correction;
  float per_channel_blowout_restoration;
  float tone_map_hue_shift_method;

  float lut_sample_method; // 0.f = vanilla 1.f = renodx 2.f = renodx tetrahetral 
  float lut_scaling;
  float lut_recolor;
};

#ifndef __cplusplus
#if ((__SHADER_TARGET_MAJOR == 5 && __SHADER_TARGET_MINOR >= 1) || __SHADER_TARGET_MAJOR >= 6)
cbuffer shader_injection : register(b13, space50) {
#elif (__SHADER_TARGET_MAJOR < 5) || ((__SHADER_TARGET_MAJOR == 5) && (__SHADER_TARGET_MINOR < 1))
cbuffer shader_injection : register(b13) {
#endif
  ShaderInjectData shader_injection : packoffset(c0);
}

#define RENODX_TONE_MAP_TYPE                 shader_injection.tone_map_type
#define RENODX_PEAK_WHITE_NITS               shader_injection.peak_white_nits
#define RENODX_DIFFUSE_WHITE_NITS            shader_injection.diffuse_white_nits
#define RENODX_GRAPHICS_WHITE_NITS           shader_injection.graphics_white_nits
#define RENODX_TONE_MAP_PER_CHANNEL          shader_injection.tone_map_per_channel
#define RENODX_TONE_MAP_HUE_PROCESSOR        shader_injection.tone_map_hue_processor
#define RENODX_TONE_MAP_HUE_CORRECTION       shader_injection.tone_map_hue_correction
#define RENODX_TONE_MAP_HUE_SHIFT            shader_injection.tone_map_hue_shift
#define RENODX_TONE_MAP_EXPOSURE             shader_injection.tone_map_exposure
#define RENODX_TONE_MAP_HIGHLIGHTS           shader_injection.tone_map_highlights
#define RENODX_TONE_MAP_SHADOWS              shader_injection.tone_map_shadows
#define RENODX_TONE_MAP_CONTRAST             shader_injection.tone_map_contrast
#define RENODX_TONE_MAP_SATURATION           shader_injection.tone_map_saturation
#define RENODX_TONE_MAP_HIGHLIGHT_SATURATION shader_injection.tone_map_highlight_saturation
#define RENODX_TONE_MAP_BLOWOUT              shader_injection.tone_map_blowout
#define RENODX_TONE_MAP_FLARE                shader_injection.tone_map_flare
#define RENODX_COLOR_GRADE_STRENGTH          shader_injection.color_grade_strength
//#define RENODX_INTERMEDIATE_ENCODING         RENODX_GAMMA_CORRECTION + 1.f

#define RENODX_SWAP_CHAIN_CUSTOM_COLOR_SPACE shader_injection.swap_chain_custom_color_space
// #define RENODX_TONE_MAP_CLAMP_COLOR_SPACE    0 // BT2020 = 1.f
// #define RENODX_TONE_MAP_CLAMP_PEAK           0 // None  = -1.f
// #define RENODX_SWAP_CHAIN_CLAMP_COLOR_SPACE    0

/////#define RENODX_TONE_MAP_WORKING_COLOR_SPACE    color::convert::COLOR_SPACE_BT2020
#define RENODX_TONE_MAP_CLAMP_COLOR_SPACE      color::convert::COLOR_SPACE_BT2020
#define RENODX_TONE_MAP_CLAMP_PEAK             color::convert::COLOR_SPACE_BT2020
//#define RENODX_SWAP_CHAIN_ENCODING_COLOR_SPACE color::convert::COLOR_SPACE_BT2020




#define RENODX_GAMMA_CORRECTION              shader_injection.gamma_correction
//#define RENODX_INTERMEDIATE_ENCODING         1.f

#define RENODX_RENO_DRT_TONE_MAP_METHOD        renodx::tonemap::renodrt::config::tone_map_method::REINHARD

#define RENODX_FX_DITHERING_STRENGTH            shader_injection.fx_dithering_strength
#define RENODX_FX_CA_STRENGTH                   shader_injection.fx_ca_strength
#define RENODX_FX_VIGNETTE_STRENGTH             shader_injection.fx_vignette_strength
#define RENODX_FX_FILM_GRAIN_STRENGTH           shader_injection.fx_film_grain_strength
#define RENODX_UI_CLAMP                         shader_injection.tone_map_ui_clamp

#define RENODX_PER_CHANNEL_HUE_CORRECTION        0.f
#define RENODX_PER_CHANNEL_CHROMINANCE_CORRECTION 1.f
#define RENODX_PER_CHANNEL_BLOWOUT_RESTORATION   shader_injection.per_channel_blowout_restoration

#define RENODX_TONE_MAP_HUE_SHIFT_METHOD shader_injection.tone_map_hue_shift_method

#define RENODX_TONE_MAP_PASS_AUTOCORRECTION 0.7f

#include "../../shaders/renodx.hlsl"

#endif

#endif  // SRC_TEMPLATE_SHARED_H_
