#include "../shared.h"

Texture2D<float4> t0 : register(t0);

cbuffer cb0 : register(b0) {
  float cb0_001x : packoffset(c001.x);
  float cb0_001y : packoffset(c001.y);
};

SamplerState s0 : register(s0);

float4 main(
  noperspective float4 SV_Position : SV_Position,
  linear float4 COLOR : COLOR,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _10 = t0.Sample(s0, float2(TEXCOORD.x, TEXCOORD.y));
  float _18 = ddx_coarse(TEXCOORD.x) * cb0_001x;
  float _19 = ddx_coarse(TEXCOORD.y) * cb0_001y;
  float _22 = ddy_coarse(TEXCOORD.x) * cb0_001x;
  float _23 = ddy_coarse(TEXCOORD.y) * cb0_001y;
  float _27 = sqrt((_19 * _19) + (_18 * _18));
  float _31 = sqrt((_23 * _23) + (_22 * _22));
  SV_Target.x = (_10.w * COLOR.x);
  SV_Target.y = (_10.w * COLOR.y);
  SV_Target.z = (_10.w * COLOR.z);
  SV_Target.w = ((_10.w * COLOR.w) * min(max(((((_10.x + -0.5f) * 10.0f) * rsqrt((_31 * _31) + (_27 * _27))) + 0.5f), 0.0f), 1.0f));

  if (!RENODX_FX_ENABLE_UI) {
    discard;
  }

  SV_Target.rgb = renodx::color::pq::EncodeSafe(SV_Target.rgb, RENODX_GRAPHICS_WHITE_NITS);

  return SV_Target;
}
