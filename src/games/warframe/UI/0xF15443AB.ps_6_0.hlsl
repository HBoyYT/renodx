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
  float cb0_007x : packoffset(c007.x);
  float cb0_008x : packoffset(c008.x);
  float cb0_009x : packoffset(c009.x);
};

SamplerState s1 : register(s1);

SamplerState s2 : register(s2);

float4 main(
  noperspective float4 SV_Position : SV_Position,
  linear float4 COLOR : COLOR,
  linear float4 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float _14 = cb0_001w + (COLOR.x * 10.0f);
  float _16 = TEXCOORD.x + -0.5f;
  float _17 = (TEXCOORD.y * 2.0f) + -1.25f;
  float _21 = sqrt((_17 * _17) + (_16 * _16));
  float _28 = sin((cb0_004x * _21) - (cb0_004y * _14));
  float _44 = ((cb0_004w * _21) * float(((int)(uint)((bool)(_28 > 0.0f))) - ((int)(uint)((bool)(_28 < 0.0f))))) * exp2(log2(abs(_28)) * max(0.0010000000474974513f, cb0_004z));
  float _48 = cb0_005x * _16;
  float _49 = cb0_005y * _17;
  float _57 = _44 + _16;
  float _59 = (TEXCOORD.y + -0.5f) + _44;
  float _62 = (_59 * 1.5f) + (_14 * 0.07999999821186066f);
  float _67 = _14 * 0.05999999865889549f;
  float _68 = _67 + 0.5f;
  float4 _73 = t2.Sample(s2, float2((((_57 * 0.23137718439102173f) + _68) - (_62 * 0.9880316257476807f)), (((_57 * 1.482047438621521f) + _68) + (_62 * 0.15425145626068115f))));
  float _76 = _62 * 0.9129452705383301f;
  float _77 = _62 * 0.4080820679664612f;
  float _78 = _57 * 1.3694179058074951f;
  float _79 = (_57 * 0.6121231317520142f) + _68;
  float4 _83 = t2.Sample(s2, float2((_76 + _79), ((_68 - _78) + _77)));
  float _86 = _62 * 0.5440211296081543f;
  float _87 = _62 * 0.83907151222229f;
  float _88 = _57 * 0.8160316944122314f;
  float _89 = _68 - (_57 * 1.258607268333435f);
  float4 _93 = t2.Sample(s2, float2((_89 - _86), ((_88 + _68) - _87)));
  float4 _98 = t2.Sample(s2, float2(((_57 * 1.5f) + _68), (_62 + _68)));
  float4 _103 = t2.Sample(s2, float2((_89 + _86), ((_68 - _88) - _87)));
  float4 _108 = t2.Sample(s2, float2((_79 - _76), ((_78 + _68) + _77)));
  float4 _116 = t1.Sample(s1, float2(((_57 * 2.0f) - (_14 * 0.029999999329447746f)), ((_59 * 0.5f) + (_14 * 0.10000000149011612f))));
  float4 _121 = t1.Sample(s1, float2((_57 + _67), ((_59 * 0.30000001192092896f) + _67)));
  float _131 = saturate(((((((_73.x + -0.30000001192092896f) + _83.x) + _93.x) + _98.x) + _103.x) + _108.x) * 0.6666666865348816f);
  float _138 = saturate((saturate(1.0f - sqrt((_48 * _48) + (_49 * _49))) * COLOR.w) * ((_121.x + _116.x) + ((_131 * _131) * (3.0f - (_131 * 2.0f)))));
  float _139 = _138 * _138;
  float _141 = (_139 * 1.2000000476837158f) + 0.800000011920929f;
  SV_Target.x = ((cb0_000x * _141) * (lerp(cb0_003x, cb0_002x, _139)));
  SV_Target.y = ((cb0_000y * _141) * (lerp(cb0_003y, cb0_002y, _139)));
  SV_Target.z = ((cb0_000z * _141) * (lerp(cb0_003z, cb0_002z, _139)));
  SV_Target.w = (saturate(((saturate(cb0_008x * 0.5f) - abs(((1.0f - TEXCOORD.w) * 0.5f) - cb0_007x)) + cb0_009x) / cb0_009x) * _139);
  if (RENODX_UI_CLAMP == 0.f) {
    return (SV_Target);
  } else {
    return saturate(SV_Target);
  }
}