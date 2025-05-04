#include "../shared.h"

Texture2D<float4> t0 : register(t0);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t7 : register(t7);

cbuffer cb0 : register(b0) {
  float cb0_000x : packoffset(c000.x);
  float cb0_000y : packoffset(c000.y);
  float cb0_000z : packoffset(c000.z);
  float cb0_000w : packoffset(c000.w);
  float cb0_001x : packoffset(c001.x);
  float cb0_001y : packoffset(c001.y);
  float cb0_001z : packoffset(c001.z);
  float cb0_001w : packoffset(c001.w);
  float cb0_002x : packoffset(c002.x);
  float cb0_002y : packoffset(c002.y);
  float cb0_002z : packoffset(c002.z);
  float cb0_002w : packoffset(c002.w);
  float cb0_003x : packoffset(c003.x);
  float cb0_003y : packoffset(c003.y);
  float cb0_003z : packoffset(c003.z);
  float cb0_003w : packoffset(c003.w);
  float cb0_004x : packoffset(c004.x);
  float cb0_004y : packoffset(c004.y);
  float cb0_004z : packoffset(c004.z);
  float cb0_004w : packoffset(c004.w);
  float cb0_005x : packoffset(c005.x);
  float cb0_005y : packoffset(c005.y);
  float cb0_005z : packoffset(c005.z);
  float cb0_005w : packoffset(c005.w);
  float cb0_006x : packoffset(c006.x);
  float cb0_006y : packoffset(c006.y);
  float cb0_006z : packoffset(c006.z);
  float cb0_006w : packoffset(c006.w);
  float cb0_007x : packoffset(c007.x);
  float cb0_010x : packoffset(c010.x);
  float cb0_011x : packoffset(c011.x);
  float cb0_011y : packoffset(c011.y);
  float cb0_012x : packoffset(c012.x);
  float cb0_018x : packoffset(c018.x);
  float cb0_023x : packoffset(c023.x);
  float cb0_023y : packoffset(c023.y);
  float cb0_023z : packoffset(c023.z);
  float cb0_042x : packoffset(c042.x);
  float cb0_042z : packoffset(c042.z);
  float cb0_042w : packoffset(c042.w);
  float cb0_047x : packoffset(c047.x);
  float cb0_047y : packoffset(c047.y);
  float cb0_047z : packoffset(c047.z);
  float cb0_047w : packoffset(c047.w);
  float cb0_048x : packoffset(c048.x);
  float cb0_048y : packoffset(c048.y);
  float cb0_056x : packoffset(c056.x);
  float cb0_056y : packoffset(c056.y);
  float cb0_083x : packoffset(c083.x);
  float cb0_083y : packoffset(c083.y);
};

SamplerState s0 : register(s0);

SamplerState s2 : register(s2);

SamplerState s7 : register(s7);

float4 main(
  noperspective float4 SV_Position : SV_Position,
  linear float4 COLOR : COLOR,
  linear float4 TEXCOORD : TEXCOORD,
  linear float4 TEXCOORD_1 : TEXCOORD1
) : SV_Target {
  float4 SV_Target;
  float _21 = ((cb0_007x * cb0_056y) + cb0_056x) * 0.01745329238474369f;
  float _22 = cos(_21);
  float _23 = sin(_21);
  float _29 = ((_22 * TEXCOORD.x) + 1.0f) - (_23 * TEXCOORD.y);
  float _31 = ((_22 * TEXCOORD.y) + 1.0f) + (_23 * TEXCOORD.x);
  float _39 = cb0_007x * 0.10000000149011612f;
  float _40 = cb0_011x * _39;
  float _41 = cb0_011y * _39;
  float _42 = cb0_010x + 2.0f;
  float4 _50 = t2.Sample(s2, float2((((_29 * 0.5f) * cb0_048x) + _40), (((_31 * 0.5f) * cb0_048y) + _41)));
  float4 _62 = t2.Sample(s2, float2((((_29 * 1.5f) * cb0_048x) + _40), (((_31 * 1.5f) * cb0_048y) + _41)));
  float4 _74 = t2.Sample(s2, float2((((_29 * 3.5f) * cb0_048x) + _40), (((_31 * 3.5f) * cb0_048y) + _41)));
  float _78 = (_42 * _42) * _42;
  float _86 = saturate(((_50.y * _78) * _62.y) * _74.y);
  float4 _95 = t0.Sample(s0, float2(((cb0_012x * (saturate(((_50.x * _78) * _62.x) * _74.x) + -1.0f)) + TEXCOORD.x), ((cb0_012x * (_86 + -1.0f)) + TEXCOORD.y)));
  float _100 = _86 * _86;
  float _109 = saturate((_100 * 0.5f) * cb0_010x) + saturate((_100 + cb0_010x) * cb0_010x);
  float _110 = _109 * _95.x;
  float _111 = _109 * _95.y;
  float _112 = _109 * _95.z;
  float _113 = _109 * _95.w;
  float _181;
  float _182;
  float _183;
  float _184;
  if (cb0_018x > 0.0f) {
    float _127 = (pow(_110, 0.4545454680919647f));
    float _128 = (pow(_111, 0.4545454680919647f));
    float _129 = (pow(_112, 0.4545454680919647f));
    float _130 = exp2(log2(_113 + 9.999999747378752e-05f) * 0.4545454680919647f);
    _181 = exp2(log2(saturate(cb0_006x + dot(float4(cb0_002x, cb0_002y, cb0_002z, cb0_002w), float4(_127, _128, _129, _130)))) * 2.200000047683716f);
    _182 = exp2(log2(saturate(cb0_006y + dot(float4(cb0_003x, cb0_003y, cb0_003z, cb0_003w), float4(_127, _128, _129, _130)))) * 2.200000047683716f);
    _183 = exp2(log2(saturate(cb0_006z + dot(float4(cb0_004x, cb0_004y, cb0_004z, cb0_004w), float4(_127, _128, _129, _130)))) * 2.200000047683716f);
    _184 = exp2(log2(saturate(cb0_006w + dot(float4(cb0_005x, cb0_005y, cb0_005z, cb0_005w), float4(_127, _128, _129, _130)))) * 2.200000047683716f);
  } else {
    _181 = _110;
    _182 = _111;
    _183 = _112;
    _184 = _113;
  }
  float _197 = (_184 * COLOR.w) * cb0_000w;
  float _220 = saturate((_197 + 9.999999974752427e-07f) + cb0_001w);
  float4 _226 = t7.Sample(s7, float2((cb0_042z * TEXCOORD.x), (cb0_042w * TEXCOORD.y)));
  float _239 = ((_226.x * COLOR.x) * cb0_042x) * cb0_047x;
  float _242 = ((_226.y * COLOR.y) * cb0_042x) * cb0_047y;
  float _245 = ((_226.z * COLOR.z) * cb0_042x) * cb0_047z;
  float _264 = ((((((pow(cb0_001x, 2.200000047683716f)) * _197) + ((_181 * COLOR.x) * cb0_000x)) - _239) * _220) + _239) * cb0_023x;
  float _265 = ((((((pow(cb0_001y, 2.200000047683716f)) * _197) + ((_182 * COLOR.y) * cb0_000y)) - _242) * _220) + _242) * cb0_023y;
  float _266 = ((((((pow(cb0_001z, 2.200000047683716f)) * _197) + ((_183 * COLOR.z) * cb0_000z)) - _245) * _220) + _245) * cb0_023z;
  int _270 = int(cb0_083x);
  float _272 = select((_270 == 1), 1.0f, 0.0f);
  float _274 = select((_270 == 2), 1.0f, 0.0f);
  float _276 = select((_270 == 3), 1.0f, 0.0f);
  float _278 = select((_270 == 0), 0.0f, 0.8999999761581421f);
  float _285 = (_278 * 0.1120000034570694f) + 1.0f;
  float _291 = (select((_278 > 0.0f), 0.10999999940395355f, 0.0f) - (_278 * 0.07500000298023224f)) + 0.5f;
  float _292 = _291 + (_285 * (_264 + -0.5f));
  float _293 = _291 + (_285 * (_265 + -0.5f));
  float _294 = _291 + (_285 * (_266 + -0.5f));
  float _299 = ((_292 * 17.882400512695312f) + (_293 * 43.5161018371582f)) + (_294 * 4.119349956512451f);
  float _304 = ((_292 * 3.4556500911712646f) + (_293 * 27.155399322509766f)) + (_294 * 3.867140054702759f);
  float _309 = ((_292 * 0.029956599697470665f) + (_293 * 0.1843090057373047f)) + (_294 * 1.4670900106430054f);
  float _316 = (((_304 * 2.023439884185791f) - (_309 * 2.52810001373291f)) * _272) + (_299 * (1.0f - _272));
  float _323 = (((_299 * 0.4942069947719574f) + (_309 * 1.248270034790039f)) * _274) + (_304 * (1.0f - _274));
  float _330 = (((_304 * 0.8011090159416199f) - (_299 * 0.3959130048751831f)) * _276) + (_309 * (1.0f - _276));
  float _343 = ((((_323 * 0.13050441443920135f) + _292) - (_316 * 0.08094444870948792f)) - (_330 * 0.11672106385231018f)) * 0.699999988079071f;
  float _363 = 1.0f - _278;
  SV_Target.x = (((((min(max(_292, 0.0f), 1.0f) * _278) - _264) + (_292 * _363)) * cb0_083y) + _264);
  SV_Target.y = (((((min(max((((((_293 * 2.0f) - (_323 * 0.05401932820677757f)) + (_316 * 0.010248533450067043f)) + (_330 * 0.11361470818519592f)) + _343), 0.0f), 1.0f) * _278) - _265) + (_293 * _363)) * cb0_083y) + _265);
  SV_Target.z = (((((min(max((((((_316 * 0.0003652969317045063f) + (_294 * 2.0f)) + (_323 * 0.004121614620089531f)) - (_330 * 0.693511426448822f)) + _343), 0.0f), 1.0f) * _278) - _266) + (_294 * _363)) * cb0_083y) + _266);
  SV_Target.w = max((((_226.w * COLOR.w) * cb0_042x) * cb0_047w), _220);
  if (RENODX_UI_CLAMP == 0.f) {
    return (SV_Target);
  } else {
    return saturate(SV_Target);
  }
}
