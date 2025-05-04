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
  float cb0_012x : packoffset(c012.x);
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

SamplerState s1 : register(s2);

float4 main(
  noperspective float4 SV_Position : SV_Position,
  linear float4 COLOR : COLOR,
  linear float4 TEXCOORD : TEXCOORD,
  linear float4 TEXCOORD_1 : TEXCOORD1
) : SV_Target {
  float4 SV_Target;
  float _21 = (((cb0_007x) * (cb0_056y)) + (cb0_056x)) * 0.01745329238474369f;
  float _22 = cos(_21);
  float _23 = sin(_21);
  float _29 = ((_22 * (TEXCOORD.z)) + 1.0f) - (_23 * (TEXCOORD.w));
  float _31 = ((_22 * (TEXCOORD.w)) + 1.0f) + (_23 * (TEXCOORD.z));
  float _39 = (cb0_007x) * 0.10000000149011612f;
  float _40 = (cb0_011x) * _39;
  float _41 = (cb0_011y) * _39;
  float _42 = (cb0_010x) + 2.0f;
  float4 _50 = t1.Sample(s1, float2((((_29 * 0.5f) * (cb0_048x)) + _40), (((_31 * 0.5f) * (cb0_048y)) + _41)));
  float4 _62 = t1.Sample(s1, float2((((_29 * 1.5f) * (cb0_048x)) + _40), (((_31 * 1.5f) * (cb0_048y)) + _41)));
  float4 _74 = t1.Sample(s1, float2((((_29 * 3.5f) * (cb0_048x)) + _40), (((_31 * 3.5f) * (cb0_048y)) + _41)));
  float _78 = (_42 * _42) * _42;
  float _86 = saturate(((((_50.y) * _78) * (_62.y)) * (_74.y)));
  float4 _95 = t0.Sample(s0, float2((((cb0_012x) * ((saturate(((((_50.x) * _78) * (_62.x)) * (_74.x)))) + -1.0f)) + (TEXCOORD.x)), (((cb0_012x) * (_86 + -1.0f)) + (TEXCOORD.y))));
  float _100 = _86 * _86;
  float _109 = (saturate(((_100 * 0.5f) * (cb0_010x)))) + (saturate(((_100 + (cb0_010x)) * (cb0_010x))));
  float _110 = _109 * (_95.x);
  float _111 = _109 * (_95.y);
  float _112 = _109 * (_95.z);
  float _113 = _109 * (_95.w);
  float _181 = _110;
  float _182 = _111;
  float _183 = _112;
  float _184 = _113;
  if ((((cb0_018x) > 0.0f))) {
    float _127 = exp2(((log2(_110)) * 0.4545454680919647f));
    float _128 = exp2(((log2(_111)) * 0.4545454680919647f));
    float _129 = exp2(((log2(_112)) * 0.4545454680919647f));
    float _130 = exp2(((log2((_113 + 9.999999747378752e-05f))) * 0.4545454680919647f));
    _181 = (exp2(((log2((saturate(((cb0_006x) + (dot(float4((cb0_002x), (cb0_002y), (cb0_002z), (cb0_002w)), float4(_127, _128, _129, _130)))))))) * 2.200000047683716f)));
    _182 = (exp2(((log2((saturate(((cb0_006y) + (dot(float4((cb0_003x), (cb0_003y), (cb0_003z), (cb0_003w)), float4(_127, _128, _129, _130)))))))) * 2.200000047683716f)));
    _183 = (exp2(((log2((saturate(((cb0_006z) + (dot(float4((cb0_004x), (cb0_004y), (cb0_004z), (cb0_004w)), float4(_127, _128, _129, _130)))))))) * 2.200000047683716f)));
    _184 = (exp2(((log2((saturate(((cb0_006w) + (dot(float4((cb0_005x), (cb0_005y), (cb0_005z), (cb0_005w)), float4(_127, _128, _129, _130)))))))) * 2.200000047683716f)));
  }
  float _197 = (_184 * (COLOR.w)) * (cb0_000w);
  float _225 = (cb0_023x) * (((exp2(((log2((cb0_001x))) * 2.200000047683716f))) * _197) + ((_181 * (COLOR.x)) * (cb0_000x)));
  float _226 = (cb0_023y) * (((exp2(((log2((cb0_001y))) * 2.200000047683716f))) * _197) + ((_182 * (COLOR.y)) * (cb0_000y)));
  float _227 = (cb0_023z) * (((exp2(((log2((cb0_001z))) * 2.200000047683716f))) * _197) + ((_183 * (COLOR.z)) * (cb0_000z)));
  int _231 = int(231);
  float _233 = (((bool)((_231 == 1))) ? 1.0f : 0.0f);
  float _235 = (((bool)((_231 == 2))) ? 1.0f : 0.0f);
  float _237 = (((bool)((_231 == 3))) ? 1.0f : 0.0f);
  float _239 = (((bool)((_231 == 0))) ? 0.0f : 0.8999999761581421f);
  float _246 = (_239 * 0.1120000034570694f) + 1.0f;
  float _252 = (((((bool)((_239 > 0.0f))) ? 0.10999999940395355f : 0.0f)) - (_239 * 0.07500000298023224f)) + 0.5f;
  float _253 = _252 + (_246 * (_225 + -0.5f));
  float _254 = _252 + (_246 * (_226 + -0.5f));
  float _255 = _252 + (_246 * (_227 + -0.5f));
  float _260 = ((_253 * 17.882400512695312f) + (_254 * 43.5161018371582f)) + (_255 * 4.119349956512451f);
  float _265 = ((_253 * 3.4556500911712646f) + (_254 * 27.155399322509766f)) + (_255 * 3.867140054702759f);
  float _270 = ((_253 * 0.029956599697470665f) + (_254 * 0.1843090057373047f)) + (_255 * 1.4670900106430054f);
  float _277 = (((_265 * 2.023439884185791f) - (_270 * 2.52810001373291f)) * _233) + (_260 * (1.0f - _233));
  float _284 = (((_260 * 0.4942069947719574f) + (_270 * 1.248270034790039f)) * _235) + (_265 * (1.0f - _235));
  float _291 = (((_265 * 0.8011090159416199f) - (_260 * 0.3959130048751831f)) * _237) + (_270 * (1.0f - _237));
  float _304 = ((((_284 * 0.13050441443920135f) + _253) - (_277 * 0.08094444870948792f)) - (_291 * 0.11672106385231018f)) * 0.699999988079071f;
  float _324 = 1.0f - _239;
  SV_Target.x = ((((((min((max(_253, 0.0f)), 1.0f)) * _239) - _225) + (_253 * _324)) * (cb0_083y)) + _225);
  SV_Target.y = ((((((min((max((((((_254 * 2.0f) - (_284 * 0.05401932820677757f)) + (_277 * 0.010248533450067043f)) + (_291 * 0.11361470818519592f)) + _304), 0.0f)), 1.0f)) * _239) - _226) + (_254 * _324)) * (cb0_083y)) + _226);
  SV_Target.z = ((((((min((max((((((_277 * 0.0003652969317045063f) + (_255 * 2.0f)) + (_284 * 0.004121614620089531f)) - (_291 * 0.693511426448822f)) + _304), 0.0f)), 1.0f)) * _239) - _227) + (_255 * _324)) * (cb0_083y)) + _227);
  SV_Target.w = (saturate(((_197 + 9.999999974752427e-07f) + (cb0_001w))));
  if (RENODX_UI_CLAMP == 0.f) {
    return (SV_Target);
  } else {
    return saturate(SV_Target);
  }
}
