#include "../shared.h"

Texture2D<float4> t0 : register(t0);

Texture2D<float4> t1 : register(t1);

cbuffer cb0 : register(b0) {
  float4 Globals_000 : packoffset(c000.x);
  float4 Globals_016 : packoffset(c001.x);
  float4 Globals_032 : packoffset(c002.x);
  float4 Globals_048 : packoffset(c003.x);
  float4 Globals_064 : packoffset(c004.x);
  float4 Globals_080 : packoffset(c005.x);
  float4 Globals_096 : packoffset(c006.x);
  float4 Globals_112 : packoffset(c007.x);
};

SamplerState s0 : register(s0);

SamplerState s1 : register(s1);

float4 main(
  noperspective float4 SV_Position : SV_Position,
  linear float4 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _8 = t0.Sample(s0, float2(TEXCOORD.x, TEXCOORD.y));
  float4 _13 = t1.Sample(s1, float2(TEXCOORD.x, TEXCOORD.y));
  float _26 = saturate(((((_13.x + -0.5f) * 2.0f) * (Globals_032.z)) - ((Globals_064.y) * 2.0f)) / ((Globals_064.y) * 2.0f));
  float _30 = (_26 * _26) * (3.0f - (_26 * 2.0f));
  SV_Target.x = _8.x;
  SV_Target.y = _8.y;
  SV_Target.z = _8.z;
  SV_Target.w = ((_30 + _8.w) - (_30 * _8.w));

  if (!RENODX_FX_ENABLE_UI) {
    discard;
  }

  return SV_Target;
}
