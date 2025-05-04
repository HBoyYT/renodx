#include "../shared.h"

Texture2D<float4> t0 : register(t1);

Texture2D<float4> t1 : register(t2);

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
  float cb0_010x : packoffset(c010.x);
  float cb0_011x : packoffset(c011.x);
  float cb0_012x : packoffset(c012.x);
  float cb0_012y : packoffset(c012.y);
  float cb0_012z : packoffset(c012.z);
  float cb0_012w : packoffset(c012.w);
  float cb0_013x : packoffset(c013.x);
};

SamplerState s0 : register(s1);

SamplerState s1 : register(s2);

float4 main(
  noperspective float4 SV_Position : SV_Position,
  linear float4 COLOR : COLOR,
  linear float4 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float _15 = (cb0_001w) + ((COLOR.x) * 10.0f);
  float _16 = (TEXCOORD.y) * 2.0f;
  float _17 = (TEXCOORD.x) + -0.5f;
  float _18 = _16 + -1.25f;
  float _22 = sqrt(((_18 * _18) + (_17 * _17)));
  float _29 = sin((((cb0_004x) * _22) - ((cb0_004y) * _15)));
  float _45 = (((cb0_004w) * _22) * (float(((int(((bool)((_29 > 0.0f))))) - (int(((bool)((_29 < 0.0f))))))))) * (exp2(((log2((abs(_29)))) * (max(0.0010000000474974513f, (cb0_004z))))));
  float _46 = _45 + _17;
  float _51 = ((((TEXCOORD.y) + -0.5f) + _45) * 1.5f) + (_15 * 0.07999999821186066f);
  float _57 = (_15 * 0.05999999865889549f) + 0.5f;
  float _65 = _51 * 0.9129452705383301f;
  float _66 = _51 * 0.4080820679664612f;
  float _67 = _46 * 1.3694179058074951f;
  float _68 = (_46 * 0.6121231317520142f) + _57;
  float _76 = _51 * 0.5440211296081543f;
  float _77 = _51 * 0.83907151222229f;
  float _78 = _46 * 0.8160316944122314f;
  float _79 = _57 - (_46 * 1.258607268333435f);
  float _110 = (((TEXCOORD.x) * 2.0f) - (cb0_012x)) + _45;
  float _111 = (_16 - (cb0_012y)) + _45;
  float _115 = sqrt(((_110 * _110) + (_111 * _111)));
  float _121 = saturate(((_115 - ((cb0_010x) + -0.20000000298023224f)) * 5.0f));
  float _130 = ((cb0_010x) + 0.11999999731779099f) + (((((((((((float4)(t1.Sample(s1, float2((_65 + _68), ((_57 - _67) + _66))))).x) + (((float4)(t1.Sample(s1, float2((((_46 * 0.23137718439102173f) + _57) - (_51 * 0.9880316257476807f)), (((_46 * 1.482047438621521f) + _57) + (_51 * 0.15425145626068115f)))))).x)) + (((float4)(t1.Sample(s1, float2((_79 - _76), ((_78 + _57) - _77))))).x)) + (((float4)(t1.Sample(s1, float2(((_46 * 1.5f) + _57), (_51 + _57))))).x)) + (((float4)(t1.Sample(s1, float2((_79 + _76), ((_57 - _78) - _77))))).x)) + (((float4)(t1.Sample(s1, float2((_68 - _65), ((_67 + _57) + _66))))).x)) * 0.4000000059604645f) * (cb0_010x)) * (cb0_011x));
  float _134 = saturate(((_115 - _130) / ((cb0_010x) - _130)));
  float _137 = _121 * _134;
  float _141 = (((3.0f - (_121 * 2.0f)) * (COLOR.w)) * (3.0f - (_134 * 2.0f))) * (_137 * _137);
  float _143 = atan((_110 / _111));
  bool _146 = (_111 < 0.0f);
  bool _147 = (_111 == 0.0f);
  bool _148 = (_110 >= 0.0f);
  bool _149 = (_110 < 0.0f);
  float _161 = saturate(((((bool)(_147 && _148)) ? 0.25f : ((((bool)(_147 && _149)) ? 0.75f : (1.0f - ((((((bool)(_146 && _149)) ? (_143 + -3.1415927410125732f) : ((((bool)(_146 && _148)) ? (_143 + 3.1415927410125732f) : _143)))) + 3.1415927410125732f) * 0.15915493667125702f)))))));
  float _165 = saturate(((_161 - ((cb0_011x) + 0.05000000074505806f)) * -20.0f));
  float _172 = saturate((_161 * 20.0f));
  float _182 = ((cb0_012z) * _115) - ((cb0_001w) * (cb0_012w));
  float _196 = ((((_165 * _165) * _141) * (3.0f - (_165 * 2.0f))) * (((1.0f - _172) * (saturate((((cb0_011x) + -0.949999988079071f) * 20.0f)))) + _172)) * (((((float4)(t0.Sample(s0, float2(_161, _182)))).x) + 0.25f) + (((float4)(t0.Sample(s0, float2((_161 + 0.8792129755020142f), ((_182 * 1.5f) + 0.8792129755020142f))))).x));
  float _224 = ((_141 * _141) * 0.30000001192092896f) * _141;
  SV_Target.x = (((_224 + (COLOR.x)) + ((((cb0_002x) - (COLOR.x)) + (((cb0_003x) - (cb0_002x)) * _196)) * (cb0_013x))) * (cb0_000x));
  SV_Target.y = (((_224 + (COLOR.y)) + ((((cb0_002y) - (COLOR.y)) + (((cb0_003y) - (cb0_002y)) * _196)) * (cb0_013x))) * (cb0_000y));
  SV_Target.z = (((_224 + (COLOR.z)) + ((((cb0_002z) - (COLOR.z)) + (((cb0_003z) - (cb0_002z)) * _196)) * (cb0_013x))) * (cb0_000z));
  SV_Target.w = _196;
  if (RENODX_UI_CLAMP == 0.f) {
    return (SV_Target);
  } else {
    return saturate(SV_Target);
  }
}
