#ifndef SRC_TEMPLATE_SHARED_H_
#define SRC_TEMPLATE_SHARED_H_

// Must be 32bit aligned
// Should be 4x32
struct ShaderInjectData {
  float tone_map_type;
  float peak_white_nits;
  float diffuse_white_nits;
  float graphics_white_nits;
  float gamma_correction;
  float tone_map_hue_correction;

  float tone_map_exposure;
  float tone_map_highlights;
  float tone_map_shadows;
  float tone_map_contrast;
  float tone_map_saturation;
  float tone_map_highlight_saturation;
  float tone_map_blowout;
  float tone_map_flare;
  float color_grade_strength;

  float lut_scaling;
  float fx_vignette_strength;
  float fx_ca_strength;
  float fx_dithering_strength;
  float fx_enable_ui;

  float swap_chain_custom_color_space;

// float ui_color_fix;
// float transition_fix;
// float blowout_restoration_processor;
//float blowout_restoration_strength;


// float debug01;
// float debug02;
// float debug03;


// float lut_strength_1;
// float lut_scaling_1;
// float lut_size_1;
// float lut_tetrahedral_1;
// float lut_recolor_1;
// float lut_input_1;
// float lut_output_1;

// float lut_strength_2;
// float lut_scaling_2;
// float lut_size_2;
// float lut_tetrahedral_2;
// float lut_recolor_2;
// float lut_input_2;
// float lut_output_2;

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
#define RENODX_GAMMA_CORRECTION              shader_injection.gamma_correction
#define RENODX_TONE_MAP_HUE_CORRECTION       shader_injection.tone_map_hue_correction

#define RENODX_TONE_MAP_EXPOSURE             shader_injection.tone_map_exposure
#define RENODX_TONE_MAP_HIGHLIGHTS           shader_injection.tone_map_highlights
#define RENODX_TONE_MAP_SHADOWS              shader_injection.tone_map_shadows
#define RENODX_TONE_MAP_CONTRAST             shader_injection.tone_map_contrast
#define RENODX_TONE_MAP_SATURATION           shader_injection.tone_map_saturation
#define RENODX_TONE_MAP_HIGHLIGHT_SATURATION shader_injection.tone_map_highlight_saturation
#define RENODX_TONE_MAP_BLOWOUT              shader_injection.tone_map_blowout
#define RENODX_TONE_MAP_FLARE                shader_injection.tone_map_flare
#define RENODX_COLOR_GRADE_STRENGTH          shader_injection.color_grade_strength
#define RENODX_COLOR_GRADE_LUT_STRENGTH      shader_injection.color_grade_lut_strength
#define RENODX_LUT_SCALING				           shader_injection.lut_scaling


#define RENODX_FX_VIGNETTE_STRENGTH          shader_injection.fx_vignette_strength
#define RENODX_FX_CA_STRENGTH                shader_injection.fx_ca_strength
#define RENODX_FX_DITHERING_STRENGTH         shader_injection.fx_dithering_strength
#define RENODX_FX_ENABLE_UI                  shader_injection.fx_enable_ui

#define RENODX_SWAP_CHAIN_CUSTOM_COLOR_SPACE shader_injection.swap_chain_custom_color_space

#include "../../shaders/renodx.hlsl"

#endif

#endif  // SRC_TEMPLATE_SHARED_H_
