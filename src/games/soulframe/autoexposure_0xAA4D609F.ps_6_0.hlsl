#include "./shared.h"

Texture2D<float4> t0 : register(t0);

cbuffer cb0 : register(b0) {
  float2 Globals_000 : packoffset(c000.x);
};

SamplerState s0 : register(s0);

float4 main(
  noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD,
  linear float4 TEXCOORD_1 : TEXCOORD1,
  linear float4 TEXCOORD_2 : TEXCOORD2
) : SV_Target {
  float4 SV_Target;
  float4 _17 = t0.Sample(s0, float2(min(TEXCOORD_1.x, (Globals_000.x)), min(TEXCOORD_1.y, (Globals_000.y))));
  float4 _27 = t0.Sample(s0, float2(min(TEXCOORD_1.z, (Globals_000.x)), min(TEXCOORD_1.w, (Globals_000.y))));
  float4 _41 = t0.Sample(s0, float2(min(TEXCOORD_2.x, (Globals_000.x)), min(TEXCOORD_2.y, (Globals_000.y))));
  float4 _55 = t0.Sample(s0, float2(min(TEXCOORD_2.z, (Globals_000.x)), min(TEXCOORD_2.w, (Globals_000.y))));
  SV_Target.x = ((((_27.x + _17.x) + _41.x) + _55.x) * 0.25f);
  SV_Target.y = ((((_27.y + _17.y) + _41.y) + _55.y) * 0.25f);
  SV_Target.z = ((((_27.z + _17.z) + _41.z) + _55.z) * 0.25f);
  SV_Target.w = ((((_27.w + _17.w) + _41.w) + _55.w) * 0.25f);
  return SV_Target*RENODX_FX_AUTOEXPOSURE_STRENGTH;
}
