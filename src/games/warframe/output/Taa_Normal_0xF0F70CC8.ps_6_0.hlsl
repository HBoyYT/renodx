#include "../common.hlsl"
#include "../shared.h"

Texture2D<float4> t0 : register(t0);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t2 : register(t2);

Texture3D<float4> t3 : register(t3);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t8 : register(t8);

cbuffer cb0 : register(b0) {
  float cb0_000z : packoffset(c000.z);
  float cb0_000w : packoffset(c000.w);
  float cb0_001x : packoffset(c001.x);
  float cb0_001y : packoffset(c001.y);
  float cb0_001z : packoffset(c001.z);
  float cb0_002x : packoffset(c002.x);
  float cb0_002y : packoffset(c002.y);
  float cb0_002z : packoffset(c002.z);
  float cb0_002w : packoffset(c002.w);
  float cb0_003x : packoffset(c003.x);
  float cb0_004x : packoffset(c004.x);
  float cb0_008x : packoffset(c008.x);
  float cb0_009x : packoffset(c009.x);
  float cb0_009y : packoffset(c009.y);
  float cb0_010x : packoffset(c010.x);
  float cb0_010y : packoffset(c010.y);
  float cb0_014x : packoffset(c014.x);
  float cb0_014y : packoffset(c014.y);
  float cb0_015x : packoffset(c015.x);
  float cb0_016x : packoffset(c016.x);
};

SamplerState s0 : register(s0);

SamplerState s1 : register(s1);

SamplerState s2 : register(s2);

SamplerState s3 : register(s3);

SamplerState s4 : register(s4);

SamplerState s10 : register(s10);

SamplerState s8 : register(s8);

float4 main(
  noperspective float4 SV_Position : SV_Position,
  linear float4 TEXCOORD : TEXCOORD,
  linear float4 TEXCOORD_1 : TEXCOORD1
) : SV_Target {
  float4 SV_Target;
  float _25 = cb0_014x * TEXCOORD.x;
  float _26 = cb0_014y * TEXCOORD.y;
  float _27 = min(_25, cb0_009x);
  float _28 = min(_26, cb0_009y);
  float4 _29 = t10.SampleLevel(s10, float2(_27, _28), 0.0f);
  float4 _48 = t4.SampleLevel(s4, float2(min(_27, cb0_009x), min(_28, cb0_009y)), 0.0f);
  float _57 = ((((cb0_002x * 32.0f) * cb0_002z) * ((_29.x * 2.0f) + -1.0f)) + TEXCOORD.x) * cb0_002z;
  float _58 = (TEXCOORD.y - ((cb0_002w * cb0_002y) * ((_29.y * 64.0f) + -32.0f))) * cb0_002w;
  float _59 = min(_57, cb0_009x);
  float _60 = min(_58, cb0_009y);
  float4 _61 = t0.SampleLevel(s0, float2(_59, _60), 0.0f);
  float _65 = TEXCOORD.x + -0.5f;
  float _66 = TEXCOORD.y + -0.5f;
  float _67 = cb0_002z * _65;
  float _68 = cb0_002w * _66;
  float _72 = sqrt((_67 * _67) + (_68 * _68));
  float _77 = ((_72 * _72) * cb0_004x * RENODX_FX_CA_STRENGTH) / _72;
  float _79 = (_67 * cb0_002x) * _77;
  float _81 = (_68 * cb0_002y) * _77;
  float4 _88 = t0.SampleLevel(s0, float2(min((_57 - _79), cb0_009x), min((_58 - _81), cb0_009y)), 0.0f);
  float4 _102 = t0.SampleLevel(s0, float2(min((_79 + _57), cb0_009x), min((_81 + _58), cb0_009y)), 0.0f);
  float _112 = ((_102.x * 0.800000011920929f) + ((_88.x + _61.x) * 0.10000000149011612f)) * TEXCOORD_1.w;
  float _113 = (((_88.y * 0.699999988079071f) + (_61.y * 0.20000000298023224f)) + (_102.y * 0.10000000149011612f)) * TEXCOORD_1.w;
  float _114 = (((_88.z * 0.20000000298023224f) + (_61.z * 0.10000000149011612f)) + (_102.z * 0.699999988079071f)) * TEXCOORD_1.w;
  float _115 = dot(float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f), float3(_112, _113, _114));
  float4 _118 = t0.SampleLevel(s0, float2(min((_57 - cb0_002x), cb0_009x), _60), 0.0f);
  float _123 = dot(float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f), float3(_118.x, _118.y, _118.z)) * TEXCOORD_1.w;
  float4 _126 = t0.SampleLevel(s0, float2(min((_57 + cb0_002x), cb0_009x), _60), 0.0f);
  float _131 = dot(float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f), float3(_126.x, _126.y, _126.z)) * TEXCOORD_1.w;
  float4 _134 = t0.SampleLevel(s0, float2(_59, min((_58 - cb0_002y), cb0_009y)), 0.0f);
  float _139 = dot(float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f), float3(_134.x, _134.y, _134.z)) * TEXCOORD_1.w;
  float4 _142 = t0.SampleLevel(s0, float2(_59, min((_58 + cb0_002y), cb0_009y)), 0.0f);
  float _147 = dot(float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f), float3(_142.x, _142.y, _142.z)) * TEXCOORD_1.w;
  float _150 = (1.0f / (_115 + 1.0f)) * _115;
  float _175 = max(0.0f, (((cb0_008x * 0.5f) * (((((_150 * 4.0f) - ((1.0f / (_123 + 1.0f)) * _123)) - ((1.0f / (_131 + 1.0f)) * _131)) - ((1.0f / (_139 + 1.0f)) * _139)) - ((1.0f / (_147 + 1.0f)) * _147))) + _150)) / max(9.999999747378752e-06f, _150);
  float _176 = _175 * _112;
  float _177 = _175 * _113;
  float _178 = _175 * _114;
  float _182 = min(_25, cb0_010x);
  float _183 = min(_26, cb0_010y);
  float4 _184 = t2.SampleLevel(s2, float2(_182, _183), 0.0f);
  float4 _195 = t2.SampleLevel(s2, float2(min((_25 - _79), cb0_010x), min((_26 - _81), cb0_010y)), 0.0f);
  float4 _209 = t2.SampleLevel(s2, float2(min((_79 + _25), cb0_010x), min((_81 + _26), cb0_010y)), 0.0f);
  float _231 = _65 * 3.555555582046509f;
  float _232 = _66 * 3.555555582046509f;
  float _235 = sqrt(dot(float2(_231, _232), float2(_231, _232))) * 0.25f * RENODX_FX_VIGNETTE_STRENGTH;
  float _237 = (_235 * _235) + 1.0f;
  float _239 = 1.0f / (_237 * _237);
  float _240 = ((((((_209.x * 0.800000011920929f) + ((_195.x + _184.x) * 0.10000000149011612f)) * TEXCOORD_1.w) - _176) * _184.w) + _176) * _239;
  float _241 = (((((((_195.y * 0.699999988079071f) + (_184.y * 0.20000000298023224f)) + (_209.y * 0.10000000149011612f)) * TEXCOORD_1.w) - _177) * _184.w) + _177) * _239;
  float _242 = (((((((_195.z * 0.20000000298023224f) + (_184.z * 0.10000000149011612f)) + (_209.z * 0.699999988079071f)) * TEXCOORD_1.w) - _178) * _184.w) + _178) * _239;
  float4 _243 = t1.SampleLevel(s1, float2(_182, _183), 0.0f);
  float _254 = saturate(((cb0_000w / (_48.x - cb0_000z)) + -500.0f) * 0.0020000000949949026f) * 0.22499999403953552f;
  float _282 = exp2(log2(((saturate(cb0_001x + _254) * ((_243.x * 0.20000000298023224f) - _240)) + _240) * 0.009999999776482582f) * 0.1593017578125f);
  float _283 = exp2(log2(((saturate(cb0_001y + _254) * ((_243.y * 0.20000000298023224f) - _241)) + _241) * 0.009999999776482582f) * 0.1593017578125f);
  float _284 = exp2(log2(((saturate(cb0_001z + _254) * ((_243.z * 0.20000000298023224f) - _242)) + _242) * 0.009999999776482582f) * 0.1593017578125f);
  float4 _315 = t3.Sample(s3, float3(((exp2(log2(((_282 * 18.8515625f) + 0.8359375f) / ((_282 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f), ((exp2(log2(((_283 * 18.8515625f) + 0.8359375f) / ((_283 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f), ((exp2(log2(((_284 * 18.8515625f) + 0.8359375f) / ((_284 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f)));
  float _319 = dot(float3(_315.x, _315.y, _315.z), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _322 = cb0_003x * 0.0009765625f;
  float _326 = frac(abs(_322));
  float _332 = frac(TEXCOORD.x * 5.39870023727417f);
  float _333 = frac(TEXCOORD.y * 5.4421000480651855f);
  float _334 = frac(select((_322 >= (-0.0f - _322)), _326, (-0.0f - _326)) * 7103.59033203125f);
  float _338 = dot(float3(_333, _334, _332), float3((_332 + 21.53510093688965f), (_333 + 14.313699722290039f), (_334 + 15.324700355529785f)));
  float _339 = _338 + _332;
  float _340 = _338 + _333;
  float _341 = _338 + _334;
  float _342 = _339 * _340;
  float _354 = frac(_342 * 97.59010314941406f) + -0.5f;
  float _355 = frac((_341 * 93.83689880371094f) * _339) + -0.5f;
  float _356 = frac((_341 * 91.69309997558594f) * _340) + -0.5f;
  float _375 = (frac(_342 * 95.43070220947266f) + -0.5f) + ((select((_315.x < 0.0019607844296842813f), 0.0f, 1.0f) * select((_315.x > 0.998039186000824f), 0.0f, 1.0f)) * _354);
  float _376 = ((select((_315.y < 0.0019607844296842813f), 0.0f, 1.0f) * select((_315.y > 0.998039186000824f), 0.0f, 1.0f)) * _355) + _354;
  float _377 = ((select((_315.z < 0.0019607844296842813f), 0.0f, 1.0f) * select((_315.z > 0.998039186000824f), 0.0f, 1.0f)) * _356) + _355;
  float _390 = (saturate(1.0f - _319) * dot(float4(_375, _376, _377, _356), float4(0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f))) * cb0_015x;
  float _394 = saturate(((_375 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + _315.x) + _390);
  float _395 = saturate(((_376 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + _315.y) + _390);
  float _396 = saturate(((_377 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + _315.z) + _390);
  float4 _397 = t8.Sample(s8, float2(TEXCOORD.x, TEXCOORD.y));
  // float _553;
  // float _554;
  // float _555;
  // [branch]
  // if (!(_397.w < 9.999999747378752e-05f)) {
  //   float _406 = cb0_016x * 9.999999747378752e-05f;
  //   float _413 = (pow(_394, 0.012683313339948654f));
  //   float _414 = (pow(_395, 0.012683313339948654f));
  //   float _415 = (pow(_396, 0.012683313339948654f));
  //   float _440 = exp2(log2(max((_413 + -0.8359375f), 0.0f) / (18.8515625f - (_413 * 18.6875f))) * 6.277394771575928f) / _406;
  //   float _441 = exp2(log2(max((_414 + -0.8359375f), 0.0f) / (18.8515625f - (_414 * 18.6875f))) * 6.277394771575928f) / _406;
  //   float _442 = exp2(log2(max((_415 + -0.8359375f), 0.0f) / (18.8515625f - (_415 * 18.6875f))) * 6.277394771575928f) / _406;
  //   float _445 = mad(-0.07283999770879745f, _442, mad(-0.5876560211181641f, _441, (_440 * 1.6604959964752197f)));
  //   float _448 = mad(-0.00834800023585558f, _442, mad(1.1328949928283691f, _441, (_440 * -0.12454699724912643f)));
  //   float _451 = mad(1.118751049041748f, _442, mad(-0.10059700161218643f, _441, (_440 * -0.018154000863432884f)));
  //   float _476 = 1.0f - _397.w;
  //   float _480 = (select((_445 <= 0.0031308000907301903f), (_445 * 12.920000076293945f), (((pow(_445, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _476) + _397.x;
  //   float _481 = (select((_448 <= 0.0031308000907301903f), (_448 * 12.920000076293945f), (((pow(_448, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _476) + _397.y;
  //   float _482 = (select((_451 <= 0.0031308000907301903f), (_451 * 12.920000076293945f), (((pow(_451, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _476) + _397.z;
  //   float _504 = select((_480 <= 0.0392800010740757f), (_480 * 0.07739938050508499f), exp2(log2((_480 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  //   float _505 = select((_481 <= 0.0392800010740757f), (_481 * 0.07739938050508499f), exp2(log2((_481 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  //   float _506 = select((_482 <= 0.0392800010740757f), (_482 * 0.07739938050508499f), exp2(log2((_482 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  //   float _525 = exp2(log2(mad(0.04331360012292862f, _506, mad(0.3292819857597351f, _505, (_504 * 0.627403974533081f))) * _406) * 0.1593017578125f);
  //   float _526 = exp2(log2(mad(0.012477199546992779f, _506, mad(0.9417769908905029f, _505, (_504 * 0.045745600014925f))) * _406) * 0.1593017578125f);
  //   float _527 = exp2(log2(mad(0.9836069941520691f, _506, mad(0.017604099586606026f, _505, (_504 * -0.0012105499627068639f))) * _406) * 0.1593017578125f);
  //   _553 = exp2(log2(((_525 * 18.8515625f) + 0.8359375f) / ((_525 * 18.6875f) + 1.0f)) * 78.84375f);
  //   _554 = exp2(log2(((_526 * 18.8515625f) + 0.8359375f) / ((_526 * 18.6875f) + 1.0f)) * 78.84375f);
  //   _555 = exp2(log2(((_527 * 18.8515625f) + 0.8359375f) / ((_527 * 18.6875f) + 1.0f)) * 78.84375f);
  // } else {
  //   _553 = _394;
  //   _554 = _395;
  //   _555 = _396;
  // }
  // SV_Target.x = _553;
  // SV_Target.y = _554;
  // SV_Target.z = _555;

  SV_Target.rgb = BlendUI(_397, ApplyDitheringAndFilmGrain(_315.rgb, float3(_375, _376, _377), _390, TEXCOORD.xy));
  SV_Target.w = _319;
  return SV_Target;
}
