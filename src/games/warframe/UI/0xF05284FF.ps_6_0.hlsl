#include "../shared.h"

Texture2D<float4> t0 : register(t0);

TextureCube<float4> t1 : register(t3);

Texture2D<float4> t2 : register(t4);

Texture2D<float4> t3 : register(t6);

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
  float cb0_013x : packoffset(c013.x);
  float cb0_013y : packoffset(c013.y);
  float cb0_013z : packoffset(c013.z);
  float cb0_013w : packoffset(c013.w);
  float cb0_014x : packoffset(c014.x);
  float cb0_014y : packoffset(c014.y);
  float cb0_014z : packoffset(c014.z);
  float cb0_014w : packoffset(c014.w);
  float cb0_015x : packoffset(c015.x);
  float cb0_015y : packoffset(c015.y);
  float cb0_015z : packoffset(c015.z);
  float cb0_015w : packoffset(c015.w);
  float cb0_018x : packoffset(c018.x);
  float cb0_023x : packoffset(c023.x);
  float cb0_023y : packoffset(c023.y);
  float cb0_023z : packoffset(c023.z);
  float cb0_083x : packoffset(c083.x);
  float cb0_083y : packoffset(c083.y);
};

SamplerState s0 : register(s0);

SamplerState s1 : register(s3);

SamplerState s2 : register(s4);

SamplerState s3 : register(s6);

float4 main(
  noperspective float4 SV_Position : SV_Position,
  linear float4 COLOR : COLOR,
  linear float4 TEXCOORD : TEXCOORD,
  linear float4 TEXCOORD_1 : TEXCOORD1,
  linear float3 TEXCOORD_2 : TEXCOORD2,
  linear float3 TEXCOORD_3 : TEXCOORD3,
  linear float3 TEXCOORD_4 : TEXCOORD4,
  linear float3 TEXCOORD_5 : TEXCOORD5,
  linear float3 TEXCOORD_6 : TEXCOORD6
) : SV_Target {
  float4 SV_Target;
  float4 _28 = t0.SampleBias(s0, float2((TEXCOORD.x), (TEXCOORD.y)), -0.5f, int2(0, 0));
  float _100 = (_28.x);
  float _101 = (_28.y);
  float _102 = (_28.z);
  float _103 = (_28.w);
  if ((((cb0_018x) > 0.0f))) {
    float _46 = exp2(((log2((_28.x))) * 0.4545454680919647f));
    float _47 = exp2(((log2((_28.y))) * 0.4545454680919647f));
    float _48 = exp2(((log2((_28.z))) * 0.4545454680919647f));
    float _49 = exp2(((log2(((_28.w) + 9.999999747378752e-05f))) * 0.4545454680919647f));
    _100 = (exp2(((log2((saturate(((cb0_006x) + (dot(float4((cb0_002x), (cb0_002y), (cb0_002z), (cb0_002w)), float4(_46, _47, _48, _49)))))))) * 2.200000047683716f)));
    _101 = (exp2(((log2((saturate(((cb0_006y) + (dot(float4((cb0_003x), (cb0_003y), (cb0_003z), (cb0_003w)), float4(_46, _47, _48, _49)))))))) * 2.200000047683716f)));
    _102 = (exp2(((log2((saturate(((cb0_006z) + (dot(float4((cb0_004x), (cb0_004y), (cb0_004z), (cb0_004w)), float4(_46, _47, _48, _49)))))))) * 2.200000047683716f)));
    _103 = (exp2(((log2((saturate(((cb0_006w) + (dot(float4((cb0_005x), (cb0_005y), (cb0_005z), (cb0_005w)), float4(_46, _47, _48, _49)))))))) * 2.200000047683716f)));
  }
  float _116 = (_103 * (COLOR.w)) * (cb0_000w);
  float _133 = ((exp2(((log2((cb0_001x))) * 2.200000047683716f))) * _116) + ((_100 * (COLOR.x)) * (cb0_000x));
  float _134 = ((exp2(((log2((cb0_001y))) * 2.200000047683716f))) * _116) + ((_101 * (COLOR.y)) * (cb0_000y));
  float _135 = ((exp2(((log2((cb0_001z))) * 2.200000047683716f))) * _116) + ((_102 * (COLOR.z)) * (cb0_000z));
  float _139 = saturate(((_116 + 9.999999974752427e-07f) + (cb0_001w)));
  float _141 = rsqrt((dot(float3((TEXCOORD_2.x), (TEXCOORD_2.y), (TEXCOORD_2.z)), float3((TEXCOORD_2.x), (TEXCOORD_2.y), (TEXCOORD_2.z)))));
  float _142 = _141 * (TEXCOORD_2.x);
  float _143 = _141 * (TEXCOORD_2.y);
  float _144 = _141 * (TEXCOORD_2.z);
  float _148 = (cb0_013z) * (TEXCOORD.x);
  float _149 = (cb0_013w) * (TEXCOORD.y);
  float4 _150 = t2.SampleBias(s2, float2(_148, _149), 0.0f, int2(0, 0));
  float _157 = (((_150.w) * 2.0f) * (_150.x)) + -1.0f;
  float _158 = ((_150.y) * 2.0f) + -1.0f;
  float _164 = sqrt((saturate(((dot(float2(_157, _158), float2((-0.0f - _157), (-0.0f - _158)))) + 1.0f))));
  float _167 = (cb0_013x) * _157;
  float _168 = (cb0_013x) * _158;
  float _170 = (cb0_013y) * _157;
  float _171 = (cb0_013y) * _158;
  float _174 = mad(_164, (TEXCOORD_5.x), (mad(_168, (TEXCOORD_4.x), (_167 * (TEXCOORD_3.x)))));
  float _177 = mad(_164, (TEXCOORD_5.y), (mad(_168, (TEXCOORD_4.y), (_167 * (TEXCOORD_3.y)))));
  float _180 = mad(_164, (TEXCOORD_5.z), (mad(_168, (TEXCOORD_4.z), (_167 * (TEXCOORD_3.z)))));
  float _182 = rsqrt((dot(float3(_174, _177, _180), float3(_174, _177, _180))));
  float _183 = _182 * _174;
  float _184 = _182 * _177;
  float _185 = _182 * _180;
  float _188 = mad(_164, (TEXCOORD_5.x), (mad(_171, (TEXCOORD_4.x), (_170 * (TEXCOORD_3.x)))));
  float _191 = mad(_164, (TEXCOORD_5.y), (mad(_171, (TEXCOORD_4.y), (_170 * (TEXCOORD_3.y)))));
  float _194 = mad(_164, (TEXCOORD_5.z), (mad(_171, (TEXCOORD_4.z), (_170 * (TEXCOORD_3.z)))));
  float _196 = rsqrt((dot(float3(_188, _191, _194), float3(_188, _191, _194))));
  float _197 = _196 * _188;
  float _198 = _196 * _191;
  float _199 = _196 * _194;
  float _201 = (dot(float3(_183, _184, _185), float3(_142, _143, _144))) * 2.0f;
  float _218 = min((max((((log2((saturate(((1.0f - (dot(float3(_133, _134, _135), float3(0.3330000042915344f, 0.3330000042915344f, 0.3330000042915344f)))) + (cb0_015w)))))) * 1.2000000476837158f) + 5.0f), 0.0f)), 5.0f);
  float4 _222 = t1.SampleLevel(s1, float3((-0.0f - (_183 - (_201 * _142))), (-0.0f - (_184 - (_201 * _143))), (-0.0f - (_185 - (_201 * _144)))), _218);
  float _231 = (cb0_014x) * (_222.x);
  float _232 = (cb0_014y) * (_222.x);
  float _233 = (cb0_014z) * (_222.x);
  float _244 = (dot(float3(_197, _198, _199), float3(_142, _143, _144))) * 2.0f;
  float4 _254 = t1.SampleLevel(s1, float3((-0.0f - (_197 - (_244 * _142))), (-0.0f - (_198 - (_244 * _143))), (-0.0f - (_199 - (_244 * _144)))), _218);
  float _258 = (_254.x) * (cb0_014x);
  float _259 = (_254.x) * (cb0_014y);
  float _260 = (_254.x) * (cb0_014z);
  float _274 = (cb0_015z) * _133;
  float _275 = (cb0_015z) * _134;
  float _276 = (cb0_015z) * _135;
  float _290 = (_139 * 0.125f) * (((float4)(t3.Sample(s3, float2(_148, _149)))).x);
  float _303 = ((_290 * ((((cb0_015x) * ((((_222.x) - _231) * (cb0_014w)) + _231)) * _274) + ((cb0_015y) * ((((_254.x) - _258) * (cb0_014w)) + _258)))) + _274) * (cb0_023x);
  float _304 = ((_290 * ((((cb0_015x) * ((((_222.y) - _232) * (cb0_014w)) + _232)) * _275) + ((cb0_015y) * ((((_254.y) - _259) * (cb0_014w)) + _259)))) + _275) * (cb0_023y);
  float _305 = ((_290 * ((((cb0_015x) * ((((_222.z) - _233) * (cb0_014w)) + _233)) * _276) + ((cb0_015y) * ((((_254.z) - _260) * (cb0_014w)) + _260)))) + _276) * (cb0_023z);
  int _309 = int(309);
  float _311 = (((bool)((_309 == 1))) ? 1.0f : 0.0f);
  float _313 = (((bool)((_309 == 2))) ? 1.0f : 0.0f);
  float _315 = (((bool)((_309 == 3))) ? 1.0f : 0.0f);
  float _317 = (((bool)((_309 == 0))) ? 0.0f : 0.8999999761581421f);
  float _324 = (_317 * 0.1120000034570694f) + 1.0f;
  float _330 = (((((bool)((_317 > 0.0f))) ? 0.10999999940395355f : 0.0f)) - (_317 * 0.07500000298023224f)) + 0.5f;
  float _331 = ((_303 + -0.5f) * _324) + _330;
  float _332 = ((_304 + -0.5f) * _324) + _330;
  float _333 = ((_305 + -0.5f) * _324) + _330;
  float _338 = ((_331 * 17.882400512695312f) + (_332 * 43.5161018371582f)) + (_333 * 4.119349956512451f);
  float _343 = ((_331 * 3.4556500911712646f) + (_332 * 27.155399322509766f)) + (_333 * 3.867140054702759f);
  float _348 = ((_331 * 0.029956599697470665f) + (_332 * 0.1843090057373047f)) + (_333 * 1.4670900106430054f);
  float _355 = (((_343 * 2.023439884185791f) - (_348 * 2.52810001373291f)) * _311) + (_338 * (1.0f - _311));
  float _362 = (((_338 * 0.4942069947719574f) + (_348 * 1.248270034790039f)) * _313) + (_343 * (1.0f - _313));
  float _369 = (((_343 * 0.8011090159416199f) - (_338 * 0.3959130048751831f)) * _315) + (_348 * (1.0f - _315));
  float _382 = ((((_362 * 0.13050441443920135f) + _331) - (_355 * 0.08094444870948792f)) - (_369 * 0.11672106385231018f)) * 0.699999988079071f;
  float _402 = 1.0f - _317;
  SV_Target.x = ((((((min((max(_331, 0.0f)), 1.0f)) * _317) - _303) + (_331 * _402)) * (cb0_083y)) + _303);
  SV_Target.y = ((((((min((max((((((_332 * 2.0f) - (_362 * 0.05401932820677757f)) + (_355 * 0.010248533450067043f)) + (_369 * 0.11361470818519592f)) + _382), 0.0f)), 1.0f)) * _317) - _304) + (_332 * _402)) * (cb0_083y)) + _304);
  SV_Target.z = ((((((min((max((((((_355 * 0.0003652969317045063f) + (_333 * 2.0f)) + (_362 * 0.004121614620089531f)) - (_369 * 0.693511426448822f)) + _382), 0.0f)), 1.0f)) * _317) - _305) + (_333 * _402)) * (cb0_083y)) + _305);
  SV_Target.w = _139;
  if (RENODX_UI_CLAMP == 0.f) {
    return (SV_Target);
  } else {
    return saturate(SV_Target);
  }
}
