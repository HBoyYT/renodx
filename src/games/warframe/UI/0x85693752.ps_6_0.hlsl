#include "../shared.h"


Texture2D<float4> t0 : register(t0);

Texture2D<float4> t1 : register(t2);

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
  float cb0_041x : packoffset(c041.x);
  float cb0_048x : packoffset(c048.x);
  float cb0_048y : packoffset(c048.y);
  float cb0_056x : packoffset(c056.x);
  float cb0_056y : packoffset(c056.y);
  float cb0_083x : packoffset(c083.x);
  float cb0_083y : packoffset(c083.y);
};

SamplerState s0 : register(s0);

SamplerState s1 : register(s2);

float4 main(
  noperspective float4 SV_Position : SV_Position,
  linear float4 COLOR : COLOR,
  linear float4 TEXCOORD : TEXCOORD,
  linear float4 TEXCOORD_1 : TEXCOORD1
) : SV_Target {
  float4 SV_Target;
  float4 _14 = t0.SampleBias(s0, float2((TEXCOORD.x), (TEXCOORD.y)), -0.5f, int2(0, 0));
  float _26 = (((cb0_007x) * (cb0_056y)) + (cb0_056x)) * 0.01745329238474369f;
  float _27 = cos(_26);
  float _28 = sin(_26);
  float _34 = ((_27 * (TEXCOORD.z)) + 1.0f) - (_28 * (TEXCOORD.w));
  float _36 = ((_27 * (TEXCOORD.w)) + 1.0f) + (_28 * (TEXCOORD.z));
  float _44 = (cb0_007x) * 0.10000000149011612f;
  float _45 = (cb0_011x) * _44;
  float _46 = (cb0_011y) * _44;
  float _47 = (cb0_010x) + 2.0f;
  float _84 = saturate((((((_47 * _47) * _47) * (((float4)(t1.Sample(s1, float2((((_34 * 0.5f) * (cb0_048x)) + _45), (((_36 * 0.5f) * (cb0_048y)) + _46))))).y)) * (((float4)(t1.Sample(s1, float2((((_34 * 1.5f) * (cb0_048x)) + _45), (((_36 * 1.5f) * (cb0_048y)) + _46))))).y)) * (((float4)(t1.Sample(s1, float2((((_34 * 3.5f) * (cb0_048x)) + _45), (((_36 * 3.5f) * (cb0_048y)) + _46))))).y)));
  float _85 = _84 * _84;
  float _94 = (saturate(((_85 * 0.5f) * (cb0_010x)))) + (saturate(((_85 + (cb0_010x)) * (cb0_010x))));
  float _95 = _94 * (_14.x);
  float _96 = _94 * (_14.y);
  float _97 = _94 * (_14.z);
  float _98 = _94 * (_14.w);
  float _166 = _95;
  float _167 = _96;
  float _168 = _97;
  float _169 = _98;
  if ((((cb0_018x) > 0.0f))) {
    float _112 = exp2(((log2(_95)) * 0.4545454680919647f));
    float _113 = exp2(((log2(_96)) * 0.4545454680919647f));
    float _114 = exp2(((log2(_97)) * 0.4545454680919647f));
    float _115 = exp2(((log2((_98 + 9.999999747378752e-05f))) * 0.4545454680919647f));
    _166 = (exp2(((log2((saturate(((cb0_006x) + (dot(float4((cb0_002x), (cb0_002y), (cb0_002z), (cb0_002w)), float4(_112, _113, _114, _115)))))))) * 2.200000047683716f)));
    _167 = (exp2(((log2((saturate(((cb0_006y) + (dot(float4((cb0_003x), (cb0_003y), (cb0_003z), (cb0_003w)), float4(_112, _113, _114, _115)))))))) * 2.200000047683716f)));
    _168 = (exp2(((log2((saturate(((cb0_006z) + (dot(float4((cb0_004x), (cb0_004y), (cb0_004z), (cb0_004w)), float4(_112, _113, _114, _115)))))))) * 2.200000047683716f)));
    _169 = (exp2(((log2((saturate(((cb0_006w) + (dot(float4((cb0_005x), (cb0_005y), (cb0_005z), (cb0_005w)), float4(_112, _113, _114, _115)))))))) * 2.200000047683716f)));
  }
  float _182 = (_169 * (COLOR.w)) * (cb0_000w);
  float _224 = (cb0_041x) * -2.0f;
  float _231 = saturate((((abs((((TEXCOORD.x) * 2.0f) + -1.0f))) + -1.0f) / (_224 * ((abs((ddy_coarse((TEXCOORD.x))))) + (abs((ddx_coarse((TEXCOORD.x)))))))));
  float _232 = saturate((((abs((((TEXCOORD.y) * 2.0f) + -1.0f))) + -1.0f) / (_224 * ((abs((ddy_coarse((TEXCOORD.y))))) + (abs((ddx_coarse((TEXCOORD.y)))))))));
  float _237 = _231 * _232;
  float _246 = (cb0_023x) * (((exp2(((log2((cb0_001x))) * 2.200000047683716f))) * _182) + ((_166 * (COLOR.x)) * (cb0_000x)));
  float _247 = (cb0_023y) * (((exp2(((log2((cb0_001y))) * 2.200000047683716f))) * _182) + ((_167 * (COLOR.y)) * (cb0_000y)));
  float _248 = (cb0_023z) * (((exp2(((log2((cb0_001z))) * 2.200000047683716f))) * _182) + ((_168 * (COLOR.z)) * (cb0_000z)));
  int _252 = int(252);
  float _254 = (((bool)((_252 == 1))) ? 1.0f : 0.0f);
  float _256 = (((bool)((_252 == 2))) ? 1.0f : 0.0f);
  float _258 = (((bool)((_252 == 3))) ? 1.0f : 0.0f);
  float _260 = (((bool)((_252 == 0))) ? 0.0f : 0.8999999761581421f);
  float _267 = (_260 * 0.1120000034570694f) + 1.0f;
  float _273 = (((((bool)((_260 > 0.0f))) ? 0.10999999940395355f : 0.0f)) - (_260 * 0.07500000298023224f)) + 0.5f;
  float _274 = _273 + (_267 * (_246 + -0.5f));
  float _275 = _273 + (_267 * (_247 + -0.5f));
  float _276 = _273 + (_267 * (_248 + -0.5f));
  float _281 = ((_274 * 17.882400512695312f) + (_275 * 43.5161018371582f)) + (_276 * 4.119349956512451f);
  float _286 = ((_274 * 3.4556500911712646f) + (_275 * 27.155399322509766f)) + (_276 * 3.867140054702759f);
  float _291 = ((_274 * 0.029956599697470665f) + (_275 * 0.1843090057373047f)) + (_276 * 1.4670900106430054f);
  float _298 = (((_286 * 2.023439884185791f) - (_291 * 2.52810001373291f)) * _254) + (_281 * (1.0f - _254));
  float _305 = (((_281 * 0.4942069947719574f) + (_291 * 1.248270034790039f)) * _256) + (_286 * (1.0f - _256));
  float _312 = (((_286 * 0.8011090159416199f) - (_281 * 0.3959130048751831f)) * _258) + (_291 * (1.0f - _258));
  float _325 = ((((_305 * 0.13050441443920135f) + _274) - (_298 * 0.08094444870948792f)) - (_312 * 0.11672106385231018f)) * 0.699999988079071f;
  float _345 = 1.0f - _260;
  SV_Target.x = ((((((min((max(_274, 0.0f)), 1.0f)) * _260) - _246) + (_274 * _345)) * (cb0_083y)) + _246);
  SV_Target.y = ((((((min((max((((((_275 * 2.0f) - (_305 * 0.05401932820677757f)) + (_298 * 0.010248533450067043f)) + (_312 * 0.11361470818519592f)) + _325), 0.0f)), 1.0f)) * _260) - _247) + (_275 * _345)) * (cb0_083y)) + _247);
  SV_Target.z = ((((((min((max((((((_298 * 0.0003652969317045063f) + (_276 * 2.0f)) + (_305 * 0.004121614620089531f)) - (_312 * 0.693511426448822f)) + _325), 0.0f)), 1.0f)) * _260) - _248) + (_276 * _345)) * (cb0_083y)) + _248);
  SV_Target.w = ((((3.0f - (_231 * 2.0f)) * (saturate(((_182 + 9.999999974752427e-07f) + (cb0_001w))))) * (3.0f - (_232 * 2.0f))) * (_237 * _237));
  if (RENODX_UI_CLAMP == 0.f) {
    return (SV_Target);
  } else {
    return saturate(SV_Target);
  }
}