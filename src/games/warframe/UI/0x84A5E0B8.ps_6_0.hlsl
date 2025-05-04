#include "../shared.h"

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t2 : register(t2);

cbuffer cb0 : register(b0) {
  float cb0_000x : packoffset(c000.x);
  float cb0_000y : packoffset(c000.y);
  float cb0_000z : packoffset(c000.z);
  float cb0_001w : packoffset(c001.w);
  float cb0_002x : packoffset(c002.x);
  float cb0_002y : packoffset(c002.y);
  float cb0_002z : packoffset(c002.z);
  float cb0_003x : packoffset(c003.x);
  float cb0_003y : packoffset(c003.y);
  float cb0_003z : packoffset(c003.z);
  float cb0_004x : packoffset(c004.x);
  float cb0_004y : packoffset(c004.y);
  float cb0_004z : packoffset(c004.z);
  float cb0_004w : packoffset(c004.w);
  float cb0_005x : packoffset(c005.x);
  float cb0_005y : packoffset(c005.y);
};

SamplerState s1 : register(s1);

SamplerState s2 : register(s2);

float4 main(
  noperspective float4 SV_Position : SV_Position,
  linear float4 COLOR : COLOR,
  linear float4 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float _13 = cb0_001w + (COLOR.x * 10.0f);
  float _15 = TEXCOORD.x + -0.5f;
  float _16 = (TEXCOORD.y * 2.0f) + -1.25f;
  float _20 = sqrt((_16 * _16) + (_15 * _15));
  float _27 = sin((cb0_004x * _20) - (cb0_004y * _13));
  float _43 = ((cb0_004w * _20) * float(((int)(uint)((bool)(_27 > 0.0f))) - ((int)(uint)((bool)(_27 < 0.0f))))) * exp2(log2(abs(_27)) * max(0.0010000000474974513f, cb0_004z));
  float _47 = cb0_005x * _15;
  float _48 = cb0_005y * _16;
  float _56 = _43 + _15;
  float _58 = (TEXCOORD.y + -0.5f) + _43;
  float _61 = (_58 * 1.5f) + (_13 * 0.07999999821186066f);
  float _66 = _13 * 0.05999999865889549f;
  float _67 = _66 + 0.5f;
  float4 _72 = t2.Sample(s2, float2((((_56 * 0.23137718439102173f) + _67) - (_61 * 0.9880316257476807f)), (((_56 * 1.482047438621521f) + _67) + (_61 * 0.15425145626068115f))));
  float _75 = _61 * 0.9129452705383301f;
  float _76 = _61 * 0.4080820679664612f;
  float _77 = _56 * 1.3694179058074951f;
  float _78 = (_56 * 0.6121231317520142f) + _67;
  float4 _82 = t2.Sample(s2, float2((_75 + _78), ((_67 - _77) + _76)));
  float _85 = _61 * 0.5440211296081543f;
  float _86 = _61 * 0.83907151222229f;
  float _87 = _56 * 0.8160316944122314f;
  float _88 = _67 - (_56 * 1.258607268333435f);
  float4 _92 = t2.Sample(s2, float2((_88 - _85), ((_87 + _67) - _86)));
  float4 _97 = t2.Sample(s2, float2(((_56 * 1.5f) + _67), (_61 + _67)));
  float4 _102 = t2.Sample(s2, float2((_88 + _85), ((_67 - _87) - _86)));
  float4 _107 = t2.Sample(s2, float2((_78 - _75), ((_77 + _67) + _76)));
  float4 _115 = t1.Sample(s1, float2(((_56 * 2.0f) - (_13 * 0.029999999329447746f)), ((_58 * 0.5f) + (_13 * 0.10000000149011612f))));
  float4 _120 = t1.Sample(s1, float2((_56 + _66), ((_58 * 0.30000001192092896f) + _66)));
  float _130 = saturate(((((((_72.x + -0.30000001192092896f) + _82.x) + _92.x) + _97.x) + _102.x) + _107.x) * 0.6666666865348816f);
  float _137 = saturate((saturate(1.0f - sqrt((_47 * _47) + (_48 * _48))) * COLOR.w) * ((_120.x + _115.x) + ((_130 * _130) * (3.0f - (_130 * 2.0f)))));
  float _138 = _137 * _137;
  float _140 = (_138 * 1.2000000476837158f) + 0.800000011920929f;
  SV_Target.x = ((cb0_000x * _140) * (lerp(cb0_003x, cb0_002x, _138)));
  SV_Target.y = ((cb0_000y * _140) * (lerp(cb0_003y, cb0_002y, _138)));
  SV_Target.z = ((cb0_000z * _140) * (lerp(cb0_003z, cb0_002z, _138)));
  SV_Target.w = _138;
  if (RENODX_UI_CLAMP == 0.f) {
    return (SV_Target);
  } else {
    return saturate(SV_Target);
  }
}
