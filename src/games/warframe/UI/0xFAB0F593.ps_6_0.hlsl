#include "../shared.h"

Texture2D<float4> t0 : register(t0);

Texture2D<float4> t2 : register(t2);

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
  float cb0_018x : packoffset(c018.x);
  float cb0_023x : packoffset(c023.x);
  float cb0_023y : packoffset(c023.y);
  float cb0_023z : packoffset(c023.z);
  float cb0_048x : packoffset(c048.x);
  float cb0_048y : packoffset(c048.y);
  float cb0_056x : packoffset(c056.x);
  float cb0_056y : packoffset(c056.y);
  float cb0_083x : packoffset(c083.x);
  float cb0_083y : packoffset(c083.y);
};

SamplerState s0 : register(s0);

SamplerState s2 : register(s2);

float4 main(
  noperspective float4 SV_Position : SV_Position,
  linear float4 COLOR : COLOR,
  linear float4 TEXCOORD : TEXCOORD,
  linear float4 TEXCOORD_1 : TEXCOORD1
) : SV_Target {
  float4 SV_Target;
  float4 _14 = t0.SampleBias(s0, float2(TEXCOORD.x, TEXCOORD.y), -0.5f, int2(0, 0));
  float _26 = ((cb0_007x * cb0_056y) + cb0_056x) * 0.01745329238474369f;
  float _27 = cos(_26);
  float _28 = sin(_26);
  float _34 = ((_27 * TEXCOORD.z) + 1.0f) - (_28 * TEXCOORD.w);
  float _36 = ((_27 * TEXCOORD.w) + 1.0f) + (_28 * TEXCOORD.z);
  float _44 = cb0_007x * 0.10000000149011612f;
  float _45 = cb0_011x * _44;
  float _46 = cb0_011y * _44;
  float _47 = cb0_010x + 2.0f;
  float4 _55 = t2.Sample(s2, float2((((_34 * 0.5f) * cb0_048x) + _45), (((_36 * 0.5f) * cb0_048y) + _46)));
  float4 _66 = t2.Sample(s2, float2((((_34 * 1.5f) * cb0_048x) + _45), (((_36 * 1.5f) * cb0_048y) + _46)));
  float4 _77 = t2.Sample(s2, float2((((_34 * 3.5f) * cb0_048x) + _45), (((_36 * 3.5f) * cb0_048y) + _46)));
  float _84 = saturate(((((_47 * _47) * _47) * _55.y) * _66.y) * _77.y);
  float _85 = _84 * _84;
  float _94 = saturate((_85 * 0.5f) * cb0_010x) + saturate((_85 + cb0_010x) * cb0_010x);
  float _95 = _94 * _14.x;
  float _96 = _94 * _14.y;
  float _97 = _94 * _14.z;
  float _98 = _94 * _14.w;
  float _166;
  float _167;
  float _168;
  float _169;
  if (cb0_018x > 0.0f) {
    float _112 = (pow(_95, 0.4545454680919647f));
    float _113 = (pow(_96, 0.4545454680919647f));
    float _114 = (pow(_97, 0.4545454680919647f));
    float _115 = exp2(log2(_98 + 9.999999747378752e-05f) * 0.4545454680919647f);
    _166 = exp2(log2(saturate(cb0_006x + dot(float4(cb0_002x, cb0_002y, cb0_002z, cb0_002w), float4(_112, _113, _114, _115)))) * 2.200000047683716f);
    _167 = exp2(log2(saturate(cb0_006y + dot(float4(cb0_003x, cb0_003y, cb0_003z, cb0_003w), float4(_112, _113, _114, _115)))) * 2.200000047683716f);
    _168 = exp2(log2(saturate(cb0_006z + dot(float4(cb0_004x, cb0_004y, cb0_004z, cb0_004w), float4(_112, _113, _114, _115)))) * 2.200000047683716f);
    _169 = exp2(log2(saturate(cb0_006w + dot(float4(cb0_005x, cb0_005y, cb0_005z, cb0_005w), float4(_112, _113, _114, _115)))) * 2.200000047683716f);
  } else {
    _166 = _95;
    _167 = _96;
    _168 = _97;
    _169 = _98;
  }
  float _182 = (_169 * COLOR.w) * cb0_000w;
  float _210 = cb0_023x * (((pow(cb0_001x, 2.200000047683716f)) * _182) + ((_166 * COLOR.x) * cb0_000x));
  float _211 = cb0_023y * (((pow(cb0_001y, 2.200000047683716f)) * _182) + ((_167 * COLOR.y) * cb0_000y));
  float _212 = cb0_023z * (((pow(cb0_001z, 2.200000047683716f)) * _182) + ((_168 * COLOR.z) * cb0_000z));
  int _216 = int(cb0_083x);
  float _218 = select((_216 == 1), 1.0f, 0.0f);
  float _220 = select((_216 == 2), 1.0f, 0.0f);
  float _222 = select((_216 == 3), 1.0f, 0.0f);
  float _224 = select((_216 == 0), 0.0f, 0.8999999761581421f);
  float _231 = (_224 * 0.1120000034570694f) + 1.0f;
  float _237 = (select((_224 > 0.0f), 0.10999999940395355f, 0.0f) - (_224 * 0.07500000298023224f)) + 0.5f;
  float _238 = _237 + (_231 * (_210 + -0.5f));
  float _239 = _237 + (_231 * (_211 + -0.5f));
  float _240 = _237 + (_231 * (_212 + -0.5f));
  float _245 = ((_238 * 17.882400512695312f) + (_239 * 43.5161018371582f)) + (_240 * 4.119349956512451f);
  float _250 = ((_238 * 3.4556500911712646f) + (_239 * 27.155399322509766f)) + (_240 * 3.867140054702759f);
  float _255 = ((_238 * 0.029956599697470665f) + (_239 * 0.1843090057373047f)) + (_240 * 1.4670900106430054f);
  float _262 = (((_250 * 2.023439884185791f) - (_255 * 2.52810001373291f)) * _218) + (_245 * (1.0f - _218));
  float _269 = (((_245 * 0.4942069947719574f) + (_255 * 1.248270034790039f)) * _220) + (_250 * (1.0f - _220));
  float _276 = (((_250 * 0.8011090159416199f) - (_245 * 0.3959130048751831f)) * _222) + (_255 * (1.0f - _222));
  float _289 = ((((_269 * 0.13050441443920135f) + _238) - (_262 * 0.08094444870948792f)) - (_276 * 0.11672106385231018f)) * 0.699999988079071f;
  float _309 = 1.0f - _224;
  SV_Target.x = (((((min(max(_238, 0.0f), 1.0f) * _224) - _210) + (_238 * _309)) * cb0_083y) + _210);
  SV_Target.y = (((((min(max((((((_239 * 2.0f) - (_269 * 0.05401932820677757f)) + (_262 * 0.010248533450067043f)) + (_276 * 0.11361470818519592f)) + _289), 0.0f), 1.0f) * _224) - _211) + (_239 * _309)) * cb0_083y) + _211);
  SV_Target.z = (((((min(max((((((_262 * 0.0003652969317045063f) + (_240 * 2.0f)) + (_269 * 0.004121614620089531f)) - (_276 * 0.693511426448822f)) + _289), 0.0f), 1.0f) * _224) - _212) + (_240 * _309)) * cb0_083y) + _212);
  SV_Target.w = saturate((_182 + 9.999999974752427e-07f) + cb0_001w);
  if (RENODX_UI_CLAMP == 0.f) {
    return (SV_Target);
  } else {
    return saturate(SV_Target);
  }
}
