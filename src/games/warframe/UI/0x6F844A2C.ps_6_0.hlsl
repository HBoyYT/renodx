#include "../shared.h"

Texture2D<float4> t0 : register(t0);

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
  float cb0_018x : packoffset(c018.x);
  float cb0_023x : packoffset(c023.x);
  float cb0_023y : packoffset(c023.y);
  float cb0_023z : packoffset(c023.z);
  float cb0_083x : packoffset(c083.x);
  float cb0_083y : packoffset(c083.y);
};

SamplerState s0 : register(s0);

float4 main(
  noperspective float4 SV_Position : SV_Position,
  linear float4 COLOR : COLOR,
  linear float4 TEXCOORD : TEXCOORD,
  linear float4 TEXCOORD_1 : TEXCOORD1
) : SV_Target {
  float4 SV_Target;
  float4 _10 = t0.SampleBias(s0, float2((TEXCOORD.x), (TEXCOORD.y)), -0.5f, int2(0, 0));
  float _82 = (_10.x);
  float _83 = (_10.y);
  float _84 = (_10.z);
  float _85 = (_10.w);
  if ((((cb0_018x) > 0.0f))) {
    float _28 = exp2(((log2((_10.x))) * 0.4545454680919647f));
    float _29 = exp2(((log2((_10.y))) * 0.4545454680919647f));
    float _30 = exp2(((log2((_10.z))) * 0.4545454680919647f));
    float _31 = exp2(((log2(((_10.w) + 9.999999747378752e-05f))) * 0.4545454680919647f));
    _82 = (exp2(((log2((saturate(((cb0_006x) + (dot(float4((cb0_002x), (cb0_002y), (cb0_002z), (cb0_002w)), float4(_28, _29, _30, _31)))))))) * 2.200000047683716f)));
    _83 = (exp2(((log2((saturate(((cb0_006y) + (dot(float4((cb0_003x), (cb0_003y), (cb0_003z), (cb0_003w)), float4(_28, _29, _30, _31)))))))) * 2.200000047683716f)));
    _84 = (exp2(((log2((saturate(((cb0_006z) + (dot(float4((cb0_004x), (cb0_004y), (cb0_004z), (cb0_004w)), float4(_28, _29, _30, _31)))))))) * 2.200000047683716f)));
    _85 = (exp2(((log2((saturate(((cb0_006w) + (dot(float4((cb0_005x), (cb0_005y), (cb0_005z), (cb0_005w)), float4(_28, _29, _30, _31)))))))) * 2.200000047683716f)));
  }
  float _98 = (_85 * (COLOR.w)) * (cb0_000w);
  float _126 = (cb0_023x) * (((exp2(((log2((cb0_001x))) * 2.200000047683716f))) * _98) + ((_82 * (COLOR.x)) * (cb0_000x)));
  float _127 = (cb0_023y) * (((exp2(((log2((cb0_001y))) * 2.200000047683716f))) * _98) + ((_83 * (COLOR.y)) * (cb0_000y)));
  float _128 = (cb0_023z) * (((exp2(((log2((cb0_001z))) * 2.200000047683716f))) * _98) + ((_84 * (COLOR.z)) * (cb0_000z)));
  int _132 = int(132);
  float _134 = (((bool)((_132 == 1))) ? 1.0f : 0.0f);
  float _136 = (((bool)((_132 == 2))) ? 1.0f : 0.0f);
  float _138 = (((bool)((_132 == 3))) ? 1.0f : 0.0f);
  float _140 = (((bool)((_132 == 0))) ? 0.0f : 0.8999999761581421f);
  float _147 = (_140 * 0.1120000034570694f) + 1.0f;
  float _153 = (((((bool)((_140 > 0.0f))) ? 0.10999999940395355f : 0.0f)) - (_140 * 0.07500000298023224f)) + 0.5f;
  float _154 = _153 + (_147 * (_126 + -0.5f));
  float _155 = _153 + (_147 * (_127 + -0.5f));
  float _156 = _153 + (_147 * (_128 + -0.5f));
  float _161 = ((_154 * 17.882400512695312f) + (_155 * 43.5161018371582f)) + (_156 * 4.119349956512451f);
  float _166 = ((_154 * 3.4556500911712646f) + (_155 * 27.155399322509766f)) + (_156 * 3.867140054702759f);
  float _171 = ((_154 * 0.029956599697470665f) + (_155 * 0.1843090057373047f)) + (_156 * 1.4670900106430054f);
  float _178 = (((_166 * 2.023439884185791f) - (_171 * 2.52810001373291f)) * _134) + (_161 * (1.0f - _134));
  float _185 = (((_161 * 0.4942069947719574f) + (_171 * 1.248270034790039f)) * _136) + (_166 * (1.0f - _136));
  float _192 = (((_166 * 0.8011090159416199f) - (_161 * 0.3959130048751831f)) * _138) + (_171 * (1.0f - _138));
  float _205 = ((((_185 * 0.13050441443920135f) + _154) - (_178 * 0.08094444870948792f)) - (_192 * 0.11672106385231018f)) * 0.699999988079071f;
  float _225 = 1.0f - _140;
  SV_Target.x = ((((((min((max(_154, 0.0f)), 1.0f)) * _140) - _126) + (_154 * _225)) * (cb0_083y)) + _126);
  SV_Target.y = ((((((min((max((((((_155 * 2.0f) - (_185 * 0.05401932820677757f)) + (_178 * 0.010248533450067043f)) + (_192 * 0.11361470818519592f)) + _205), 0.0f)), 1.0f)) * _140) - _127) + (_155 * _225)) * (cb0_083y)) + _127);
  SV_Target.z = ((((((min((max((((((_178 * 0.0003652969317045063f) + (_156 * 2.0f)) + (_185 * 0.004121614620089531f)) - (_192 * 0.693511426448822f)) + _205), 0.0f)), 1.0f)) * _140) - _128) + (_156 * _225)) * (cb0_083y)) + _128);
  SV_Target.w = (saturate(((_98 + 9.999999974752427e-07f) + (cb0_001w))));

  if (RENODX_UI_CLAMP == 0.f) {
    return (SV_Target);
  } else {
    return saturate(SV_Target);
  }
}
