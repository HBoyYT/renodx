#include "../shared.h"

Texture2D<float4> t0 : register(t0);

Texture2D<float4> t1 : register(t2);

TextureCube<float4> t2 : register(t3);

Texture2D<float4> t3 : register(t4);

Texture2D<float4> t4 : register(t7);

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
  float cb0_042x : packoffset(c042.x);
  float cb0_042z : packoffset(c042.z);
  float cb0_042w : packoffset(c042.w);
  float cb0_047x : packoffset(c047.x);
  float cb0_047y : packoffset(c047.y);
  float cb0_047z : packoffset(c047.z);
  float cb0_047w : packoffset(c047.w);
  float cb0_048x : packoffset(c048.x);
  float cb0_048y : packoffset(c048.y);
  float cb0_055x : packoffset(c055.x);
  float cb0_055y : packoffset(c055.y);
  float cb0_055z : packoffset(c055.z);
  float cb0_055w : packoffset(c055.w);
  float cb0_056x : packoffset(c056.x);
  float cb0_056y : packoffset(c056.y);
  float cb0_083x : packoffset(c083.x);
  float cb0_083y : packoffset(c083.y);
};

SamplerState s0 : register(s0);

SamplerState s1 : register(s2);

SamplerState s2 : register(s3);

SamplerState s3 : register(s4);

SamplerState s4 : register(s7);

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
  float4 _49 = t0.SampleBias(s0, float2((((((1.0f / (cb0_055x)) * (cb0_055z)) * (1.0f - (cb0_055x))) + (TEXCOORD.x)) * (cb0_055x)), (((((1.0f - (cb0_055y)) * (cb0_055w)) * (1.0f / (cb0_055y))) + (TEXCOORD.y)) * (cb0_055y))), -0.5f, int2(0, 0));
  float _61 = (((cb0_007x) * (cb0_056y)) + (cb0_056x)) * 0.01745329238474369f;
  float _62 = cos(_61);
  float _63 = sin(_61);
  float _69 = ((_62 * (TEXCOORD.z)) + 1.0f) - (_63 * (TEXCOORD.w));
  float _71 = ((_62 * (TEXCOORD.w)) + 1.0f) + (_63 * (TEXCOORD.z));
  float _79 = (cb0_007x) * 0.10000000149011612f;
  float _80 = (cb0_011x) * _79;
  float _81 = (cb0_011y) * _79;
  float _82 = (cb0_010x) + 2.0f;
  float _119 = saturate((((((_82 * _82) * _82) * (((float4)(t1.Sample(s1, float2((((_69 * 0.5f) * (cb0_048x)) + _80), (((_71 * 0.5f) * (cb0_048y)) + _81))))).y)) * (((float4)(t1.Sample(s1, float2((((_69 * 1.5f) * (cb0_048x)) + _80), (((_71 * 1.5f) * (cb0_048y)) + _81))))).y)) * (((float4)(t1.Sample(s1, float2((((_69 * 3.5f) * (cb0_048x)) + _80), (((_71 * 3.5f) * (cb0_048y)) + _81))))).y)));
  float _120 = _119 * _119;
  float _129 = (saturate(((_120 * 0.5f) * (cb0_010x)))) + (saturate(((_120 + (cb0_010x)) * (cb0_010x))));
  float _130 = _129 * (_49.x);
  float _131 = _129 * (_49.y);
  float _132 = _129 * (_49.z);
  float _133 = _129 * (_49.w);
  float _201 = _130;
  float _202 = _131;
  float _203 = _132;
  float _204 = _133;
  if ((((cb0_018x) > 0.0f))) {
    float _147 = exp2(((log2(_130)) * 0.4545454680919647f));
    float _148 = exp2(((log2(_131)) * 0.4545454680919647f));
    float _149 = exp2(((log2(_132)) * 0.4545454680919647f));
    float _150 = exp2(((log2((_133 + 9.999999747378752e-05f))) * 0.4545454680919647f));
    _201 = (exp2(((log2((saturate(((cb0_006x) + (dot(float4((cb0_002x), (cb0_002y), (cb0_002z), (cb0_002w)), float4(_147, _148, _149, _150)))))))) * 2.200000047683716f)));
    _202 = (exp2(((log2((saturate(((cb0_006y) + (dot(float4((cb0_003x), (cb0_003y), (cb0_003z), (cb0_003w)), float4(_147, _148, _149, _150)))))))) * 2.200000047683716f)));
    _203 = (exp2(((log2((saturate(((cb0_006z) + (dot(float4((cb0_004x), (cb0_004y), (cb0_004z), (cb0_004w)), float4(_147, _148, _149, _150)))))))) * 2.200000047683716f)));
    _204 = (exp2(((log2((saturate(((cb0_006w) + (dot(float4((cb0_005x), (cb0_005y), (cb0_005z), (cb0_005w)), float4(_147, _148, _149, _150)))))))) * 2.200000047683716f)));
  }
  float _217 = (_204 * (COLOR.w)) * (cb0_000w);
  float _234 = ((exp2(((log2((cb0_001x))) * 2.200000047683716f))) * _217) + ((_201 * (COLOR.x)) * (cb0_000x));
  float _235 = ((exp2(((log2((cb0_001y))) * 2.200000047683716f))) * _217) + ((_202 * (COLOR.y)) * (cb0_000y));
  float _236 = ((exp2(((log2((cb0_001z))) * 2.200000047683716f))) * _217) + ((_203 * (COLOR.z)) * (cb0_000z));
  float _240 = saturate(((_217 + 9.999999974752427e-07f) + (cb0_001w)));
  float _242 = rsqrt((dot(float3((TEXCOORD_2.x), (TEXCOORD_2.y), (TEXCOORD_2.z)), float3((TEXCOORD_2.x), (TEXCOORD_2.y), (TEXCOORD_2.z)))));
  float _243 = _242 * (TEXCOORD_2.x);
  float _244 = _242 * (TEXCOORD_2.y);
  float _245 = _242 * (TEXCOORD_2.z);
  float4 _251 = t3.SampleBias(s3, float2(((cb0_013z) * (TEXCOORD.x)), ((cb0_013w) * (TEXCOORD.y))), 0.0f, int2(0, 0));
  float _258 = (((_251.w) * 2.0f) * (_251.x)) + -1.0f;
  float _259 = ((_251.y) * 2.0f) + -1.0f;
  float _265 = sqrt((saturate(((dot(float2(_258, _259), float2((-0.0f - _258), (-0.0f - _259)))) + 1.0f))));
  float _268 = (cb0_013x) * _258;
  float _269 = (cb0_013x) * _259;
  float _271 = (cb0_013y) * _258;
  float _272 = (cb0_013y) * _259;
  float _275 = mad(_265, (TEXCOORD_5.x), (mad(_269, (TEXCOORD_4.x), (_268 * (TEXCOORD_3.x)))));
  float _278 = mad(_265, (TEXCOORD_5.y), (mad(_269, (TEXCOORD_4.y), (_268 * (TEXCOORD_3.y)))));
  float _281 = mad(_265, (TEXCOORD_5.z), (mad(_269, (TEXCOORD_4.z), (_268 * (TEXCOORD_3.z)))));
  float _283 = rsqrt((dot(float3(_275, _278, _281), float3(_275, _278, _281))));
  float _284 = _283 * _275;
  float _285 = _283 * _278;
  float _286 = _283 * _281;
  float _289 = mad(_265, (TEXCOORD_5.x), (mad(_272, (TEXCOORD_4.x), (_271 * (TEXCOORD_3.x)))));
  float _292 = mad(_265, (TEXCOORD_5.y), (mad(_272, (TEXCOORD_4.y), (_271 * (TEXCOORD_3.y)))));
  float _295 = mad(_265, (TEXCOORD_5.z), (mad(_272, (TEXCOORD_4.z), (_271 * (TEXCOORD_3.z)))));
  float _297 = rsqrt((dot(float3(_289, _292, _295), float3(_289, _292, _295))));
  float _298 = _297 * _289;
  float _299 = _297 * _292;
  float _300 = _297 * _295;
  float _302 = (dot(float3(_284, _285, _286), float3(_243, _244, _245))) * 2.0f;
  float _319 = min((max((((log2((saturate(((1.0f - (dot(float3(_234, _235, _236), float3(0.3330000042915344f, 0.3330000042915344f, 0.3330000042915344f)))) + (cb0_015w)))))) * 1.2000000476837158f) + 5.0f), 0.0f)), 5.0f);
  float4 _323 = t2.SampleLevel(s2, float3((-0.0f - (_284 - (_302 * _243))), (-0.0f - (_285 - (_302 * _244))), (-0.0f - (_286 - (_302 * _245)))), _319);
  float _332 = (cb0_014x) * (_323.x);
  float _333 = (cb0_014y) * (_323.x);
  float _334 = (cb0_014z) * (_323.x);
  float _345 = (dot(float3(_298, _299, _300), float3(_243, _244, _245))) * 2.0f;
  float4 _355 = t2.SampleLevel(s2, float3((-0.0f - (_298 - (_345 * _243))), (-0.0f - (_299 - (_345 * _244))), (-0.0f - (_300 - (_345 * _245)))), _319);
  float _359 = (_355.x) * (cb0_014x);
  float _360 = (_355.x) * (cb0_014y);
  float _361 = (_355.x) * (cb0_014z);
  float _372 = (cb0_015z) * _234;
  float _373 = (cb0_015z) * _235;
  float _374 = (cb0_015z) * _236;
  float4 _391 = t4.Sample(s4, float2(((cb0_042z) * (TEXCOORD.x)), ((cb0_042w) * (TEXCOORD.y))));
  float _404 = (((_391.x) * (COLOR.x)) * (cb0_042x)) * (cb0_047x);
  float _407 = (((_391.y) * (COLOR.y)) * (cb0_042x)) * (cb0_047y);
  float _410 = (((_391.z) * (COLOR.z)) * (cb0_042x)) * (cb0_047z);
  float _413 = (_240 * 0.125f) * (_251.w);
  float _440 = (((((_413 * ((((((_355.x) - _359) * (cb0_014w)) + _359) * (cb0_015y)) + ((_372 * (cb0_015x)) * ((((_323.x) - _332) * (cb0_014w)) + _332)))) + _372) - _404) * _240) + _404) * (cb0_023x);
  float _441 = (((((_413 * ((((((_355.y) - _360) * (cb0_014w)) + _360) * (cb0_015y)) + ((_373 * (cb0_015x)) * ((((_323.y) - _333) * (cb0_014w)) + _333)))) + _373) - _407) * _240) + _407) * (cb0_023y);
  float _442 = (((((_413 * ((((((_355.z) - _361) * (cb0_014w)) + _361) * (cb0_015y)) + ((_374 * (cb0_015x)) * ((((_323.z) - _334) * (cb0_014w)) + _334)))) + _374) - _410) * _240) + _410) * (cb0_023z);
  int _446 = int(446);
  float _448 = (((bool)((_446 == 1))) ? 1.0f : 0.0f);
  float _450 = (((bool)((_446 == 2))) ? 1.0f : 0.0f);
  float _452 = (((bool)((_446 == 3))) ? 1.0f : 0.0f);
  float _454 = (((bool)((_446 == 0))) ? 0.0f : 0.8999999761581421f);
  float _461 = (_454 * 0.1120000034570694f) + 1.0f;
  float _467 = (((((bool)((_454 > 0.0f))) ? 0.10999999940395355f : 0.0f)) - (_454 * 0.07500000298023224f)) + 0.5f;
  float _468 = _467 + (_461 * (_440 + -0.5f));
  float _469 = _467 + (_461 * (_441 + -0.5f));
  float _470 = _467 + (_461 * (_442 + -0.5f));
  float _475 = ((_468 * 17.882400512695312f) + (_469 * 43.5161018371582f)) + (_470 * 4.119349956512451f);
  float _480 = ((_468 * 3.4556500911712646f) + (_469 * 27.155399322509766f)) + (_470 * 3.867140054702759f);
  float _485 = ((_468 * 0.029956599697470665f) + (_469 * 0.1843090057373047f)) + (_470 * 1.4670900106430054f);
  float _492 = (((_480 * 2.023439884185791f) - (_485 * 2.52810001373291f)) * _448) + (_475 * (1.0f - _448));
  float _499 = (((_475 * 0.4942069947719574f) + (_485 * 1.248270034790039f)) * _450) + (_480 * (1.0f - _450));
  float _506 = (((_480 * 0.8011090159416199f) - (_475 * 0.3959130048751831f)) * _452) + (_485 * (1.0f - _452));
  float _519 = ((((_499 * 0.13050441443920135f) + _468) - (_492 * 0.08094444870948792f)) - (_506 * 0.11672106385231018f)) * 0.699999988079071f;
  float _539 = 1.0f - _454;
  SV_Target.x = ((((((min((max(_468, 0.0f)), 1.0f)) * _454) - _440) + (_468 * _539)) * (cb0_083y)) + _440);
  SV_Target.y = ((((((min((max((((((_469 * 2.0f) - (_499 * 0.05401932820677757f)) + (_492 * 0.010248533450067043f)) + (_506 * 0.11361470818519592f)) + _519), 0.0f)), 1.0f)) * _454) - _441) + (_469 * _539)) * (cb0_083y)) + _441);
  SV_Target.z = ((((((min((max((((((_492 * 0.0003652969317045063f) + (_470 * 2.0f)) + (_499 * 0.004121614620089531f)) - (_506 * 0.693511426448822f)) + _519), 0.0f)), 1.0f)) * _454) - _442) + (_470 * _539)) * (cb0_083y)) + _442);
  SV_Target.w = (max(((((_391.w) * (COLOR.w)) * (cb0_042x)) * (cb0_047w)), _240));
  
  if (RENODX_UI_CLAMP == 0.f) {
    return (SV_Target);
  } else {
    return saturate(SV_Target);
  }
}
