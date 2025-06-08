#include "../shared.h"

Texture2D<float4> t0 : register(t0);

cbuffer cb0 : register(b0) {
  float4 Globals_000 : packoffset(c000.x);
};

SamplerState s0 : register(s0);

float4 main(
  noperspective float4 SV_Position : SV_Position,
  linear float4 COLOR : COLOR,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _10 = t0.Sample(s0, float2(TEXCOORD.x, TEXCOORD.y));
  SV_Target.x = ((_10.x * COLOR.x) * (Globals_000.x));
  SV_Target.y = ((_10.y * COLOR.y) * (Globals_000.y));
  SV_Target.z = ((_10.z * COLOR.z) * (Globals_000.z));
  SV_Target.w = ((_10.w * COLOR.w) * (Globals_000.w));

  if (!RENODX_FX_ENABLE_UI) {
    discard;
  }

  SV_Target.rgb = renodx::color::pq::EncodeSafe(SV_Target.rgb, RENODX_GRAPHICS_WHITE_NITS);

  return SV_Target;
}
