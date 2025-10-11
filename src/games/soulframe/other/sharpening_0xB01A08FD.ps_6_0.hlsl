#include "../shared.h"
#include "./rcas.hlsl"

Texture2D<float4> t0 : register(t0);

cbuffer cb0 : register(b0) {
  float4 Globals_000 : packoffset(c000.x);
};

float4 main(
    noperspective float4 SV_Position: SV_Position,
    linear float4 TEXCOORD: TEXCOORD
) : SV_Target {
  float Globals_000 = RENODX_FX_SHARPENNING_STRENGTH;
  float4 SV_Target;
  int _5 = int(SV_Position.x);
  int _6 = int(SV_Position.y);
  float4 _10 = t0.Load(int3(_5, ((uint)(_6 + -1u)), 0));
  float4 _15 = t0.Load(int3(((uint)(_5 + -1u)), _6, 0));
  float4 _19 = t0.Load(int3(_5, _6, 0));
  float4 _24 = t0.Load(int3(((uint)(_5 + 1u)), _6, 0));
  float4 _29 = t0.Load(int3(_5, ((uint)(_6 + 1u)), 0));


  if (RENODX_FX_SHARPENING_TYPE == 1u) {
    SV_Target.rgb = ApplyRCAS(_29.rgb, _24.rgb, _19.rgb, _15.rgb, _10.rgb);
  } else {
    float _35 = min(min(_10.x, min(_15.x, _24.x)), _29.x);
    float _38 = min(min(_10.y, min(_15.y, _24.y)), _29.y);
    float _41 = min(min(_10.z, min(_15.z, _24.z)), _29.z);
    float _44 = max(max(_10.x, max(_15.x, _24.x)), _29.x);
    float _47 = max(max(_10.y, max(_15.y, _24.y)), _29.y);
    float _50 = max(max(_10.z, max(_15.z, _24.z)), _29.z);
    float _88 = max(-0.1875f, min(max(max((-0.0f - (min(_35, _19.x) * (0.25f / _44))), ((1.0f - max(_44, _19.x)) * (1.0f / ((_35 * 4.0f) + -4.0f)))), max(max((-0.0f - (min(_38, _19.y) * (0.25f / _47))), ((1.0f - max(_47, _19.y)) * (1.0f / ((_38 * 4.0f) + -4.0f)))), max((-0.0f - (min(_41, _19.z) * (0.25f / _50))), ((1.0f - max(_50, _19.z)) * (1.0f / ((_41 * 4.0f) + -4.0f)))))), 0.0f)) * (Globals_000.x);
    float _90 = (_88 * 4.0f) + 1.0f;
    float _93 = asfloat(((uint)(2129764351u - (int)(asint(_90)))));
    float _96 = (2.0f - (_93 * _90)) * _93;
    SV_Target.x = (_96 * ((_88 * (((_15.x + _10.x) + _24.x) + _29.x)) + _19.x));
    SV_Target.y = (_96 * ((_88 * (((_15.y + _10.y) + _24.y) + _29.y)) + _19.y));
    SV_Target.z = (_96 * ((_88 * (((_15.z + _10.z) + _24.z) + _29.z)) + _19.z));
  }

  SV_Target.w = 1.0f;
  return SV_Target;
}
