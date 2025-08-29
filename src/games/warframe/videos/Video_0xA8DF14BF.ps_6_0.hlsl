#include "../shared.h"
#include "../common.hlsl"

Texture2D<float4> t0 : register(t0);

Texture2D<float4> t1 : register(t1);

cbuffer cb0 : register(b0) {
  float cb0_000x : packoffset(c000.x);
  float cb0_000y : packoffset(c000.y);
  float cb0_000z : packoffset(c000.z);
  float cb0_000w : packoffset(c000.w);
};

SamplerState s0 : register(s0);

SamplerState s1 : register(s1);

float4 main(
  noperspective float4 SV_Position : SV_Position,
  linear float4 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float _11 = (cb0_000y) / (cb0_000x);
  float _24;
  float _25;
  if (((_11 > 1.0f))) {
    _24 = (((1.0f - _11) * 0.5f) + (_11 * (TEXCOORD.x)));
    _25 = (TEXCOORD.y);
  } else {
    _24 = (TEXCOORD.x);
    _25 = ((((TEXCOORD.y) / _11) + 0.5f) - (0.5f / _11));
  }
  float _30 = (1.0f - (cb0_000z)) * 0.5f;
  float _31 = (1.0f - (cb0_000w)) * 0.5f;
  float _32 = _24 - _30;
  float _33 = _25 - _31;
  float4 _36 = t1.Sample(s1, float2(_32, _33));
  float _50 = saturate((((((float4)(t0.Sample(s0, float2(_32, _33)))).x) + -0.7037490010261536f) + ((_36.x) * 1.4019999504089355f)));
  float _51 = saturate(((((((float4)(t0.Sample(s0, float2(_32, _33)))).x) + 0.5312150716781616f) - ((_36.x) * 0.714139997959137f)) - ((_36.y) * 0.3441399931907654f)));
  float _52 = saturate((((((float4)(t0.Sample(s0, float2(_32, _33)))).x) + -0.8894745111465454f) + ((_36.y) * 1.7719999551773071f)));
  float _90 = ((((bool)(((bool)((_25 < _31))) || ((bool)((_25 > ((cb0_000w) + _31)))))) ? 0.0f : 1.0f)) * ((((bool)(((bool)((_24 < _30))) || ((bool)((_24 > ((cb0_000z) + _30)))))) ? 0.0f : 1.0f));
  SV_Target.x = (_90 * ((((bool)((_50 <= 0.0392800010740757f))) ? (_50 * 0.07739938050508499f) : (exp2(((log2(((_50 + 0.054999999701976776f) * 0.9478673338890076f))) * 2.4000000953674316f))))));
  SV_Target.y = (_90 * ((((bool)((_51 <= 0.0392800010740757f))) ? (_51 * 0.07739938050508499f) : (exp2(((log2(((_51 + 0.054999999701976776f) * 0.9478673338890076f))) * 2.4000000953674316f))))));
  SV_Target.z = (_90 * ((((bool)((_52 <= 0.0392800010740757f))) ? (_52 * 0.07739938050508499f) : (exp2(((log2(((_52 + 0.054999999701976776f) * 0.9478673338890076f))) * 2.4000000953674316f))))));
  GammaColorSpaceCorrection(SV_Target.rgb);
  SV_Target.rgb = renodx::color::srgb::EncodeSafe(SV_Target.rgb);
  SV_Target.w = _90;
  return SV_Target;
}
