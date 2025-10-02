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
  float _67 = cb0_002z * (TEXCOORD.x + -0.5f);
  float _68 = cb0_002w * (TEXCOORD.y + -0.5f);
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
  float _233 = (TEXCOORD.x + -0.5f) * 3.555555582046509f;
  float _234 = (TEXCOORD.y + -0.5f) * 3.555555582046509f;
  float _237 = sqrt(dot(float2(_233, _234), float2(_233, _234))) * 0.25f * RENODX_FX_VIGNETTE_STRENGTH;
  float _239 = (_237 * _237) + 1.0f;
  float _241 = 1.0f / (_239 * _239);
  float _242 = ((((((_209.x * 0.800000011920929f) + ((_195.x + _184.x) * 0.10000000149011612f)) * TEXCOORD_1.w) - _176) * _184.w) + _176) * _241;
  float _243 = (((((((_195.y * 0.699999988079071f) + (_184.y * 0.20000000298023224f)) + (_209.y * 0.10000000149011612f)) * TEXCOORD_1.w) - _177) * _184.w) + _177) * _241;
  float _244 = (((((((_195.z * 0.20000000298023224f) + (_184.z * 0.10000000149011612f)) + (_209.z * 0.699999988079071f)) * TEXCOORD_1.w) - _178) * _184.w) + _178) * _241;
  float4 _245 = t1.SampleLevel(s1, float2(_182, _183), 0.0f);
  float _256 = saturate(((cb0_000w / (_48.x - cb0_000z)) + -500.0f) * 0.0020000000949949026f) * 0.22499999403953552f;
  float _284 = exp2(log2(((saturate(shader_injection.fx_bloom_strength + _256) * ((_245.x * 0.20000000298023224f) - _242)) + _242) * 0.009999999776482582f) * 0.1593017578125f);
  float _285 = exp2(log2(((saturate(shader_injection.fx_bloom_strength + _256) * ((_245.y * 0.20000000298023224f) - _243)) + _243) * 0.009999999776482582f) * 0.1593017578125f);
  float _286 = exp2(log2(((saturate(shader_injection.fx_bloom_strength + _256) * ((_245.z * 0.20000000298023224f) - _244)) + _244) * 0.009999999776482582f) * 0.1593017578125f);
  float4 _317 = t3.Sample(s3, float3(((exp2(log2(((_284 * 18.8515625f) + 0.8359375f) / ((_284 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f), ((exp2(log2(((_285 * 18.8515625f) + 0.8359375f) / ((_285 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f), ((exp2(log2(((_286 * 18.8515625f) + 0.8359375f) / ((_286 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f)));
  float _321 = dot(float3(_317.x, _317.y, _317.z), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _324 = cb0_003x * 0.0009765625f;
  float _328 = frac(abs(_324));
  float _334 = frac(TEXCOORD.x * 5.39870023727417f);
  float _335 = frac(TEXCOORD.y * 5.4421000480651855f);
  float _336 = frac(select((_324 >= (-0.0f - _324)), _328, (-0.0f - _328)) * 7103.59033203125f);
  float _340 = dot(float3(_335, _336, _334), float3((_334 + 21.53510093688965f), (_335 + 14.313699722290039f), (_336 + 15.324700355529785f)));
  float _341 = _340 + _334;
  float _342 = _340 + _335;
  float _343 = _340 + _336;
  float _344 = _341 * _342;
  float _356 = frac(_344 * 97.59010314941406f) + -0.5f;
  float _357 = frac((_343 * 93.83689880371094f) * _341) + -0.5f;
  float _358 = frac((_343 * 91.69309997558594f) * _342) + -0.5f;
  float _377 = (frac(_344 * 95.43070220947266f) + -0.5f) + ((select((_317.x < 0.0019607844296842813f), 0.0f, 1.0f) * select((_317.x > 0.998039186000824f), 0.0f, 1.0f)) * _356);
  float _378 = ((select((_317.y < 0.0019607844296842813f), 0.0f, 1.0f) * select((_317.y > 0.998039186000824f), 0.0f, 1.0f)) * _357) + _356;
  float _379 = ((select((_317.z < 0.0019607844296842813f), 0.0f, 1.0f) * select((_317.z > 0.998039186000824f), 0.0f, 1.0f)) * _358) + _357;
  float _392 = (saturate(1.0f - _321) * dot(float4(_377, _378, _379, _358), float4(0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f))) * cb0_015x;
  float _396 = saturate(((_377 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + _317.x) + _392);
  float _397 = saturate(((_378 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + _317.y) + _392);
  float _398 = saturate(((_379 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + _317.z) + _392);
  float4 _399 = t8.Sample(s8, float2(TEXCOORD.x, TEXCOORD.y));
  // float _555;
  // float _556;
  // float _557;
  // [branch]
  // if (!(_399.w < 9.999999747378752e-05f)) {
  //   float _408 = cb0_016x * 9.999999747378752e-05f;
  //   float _415 = (pow(_396, 0.012683313339948654f));
  //   float _416 = (pow(_397, 0.012683313339948654f));
  //   float _417 = (pow(_398, 0.012683313339948654f));
  //   float _442 = exp2(log2(max((_415 + -0.8359375f), 0.0f) / (18.8515625f - (_415 * 18.6875f))) * 6.277394771575928f) / _408;
  //   float _443 = exp2(log2(max((_416 + -0.8359375f), 0.0f) / (18.8515625f - (_416 * 18.6875f))) * 6.277394771575928f) / _408;
  //   float _444 = exp2(log2(max((_417 + -0.8359375f), 0.0f) / (18.8515625f - (_417 * 18.6875f))) * 6.277394771575928f) / _408;
  //   float _447 = mad(-0.07283999770879745f, _444, mad(-0.5876560211181641f, _443, (_442 * 1.6604959964752197f)));
  //   float _450 = mad(-0.00834800023585558f, _444, mad(1.1328949928283691f, _443, (_442 * -0.12454699724912643f)));
  //   float _453 = mad(1.118751049041748f, _444, mad(-0.10059700161218643f, _443, (_442 * -0.018154000863432884f)));
  //   float _478 = 1.0f - _399.w;
  //   float _482 = (select((_447 <= 0.0031308000907301903f), (_447 * 12.920000076293945f), (((pow(_447, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _478) + _399.x;
  //   float _483 = (select((_450 <= 0.0031308000907301903f), (_450 * 12.920000076293945f), (((pow(_450, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _478) + _399.y;
  //   float _484 = (select((_453 <= 0.0031308000907301903f), (_453 * 12.920000076293945f), (((pow(_453, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _478) + _399.z;
  //   float _506 = select((_482 <= 0.0392800010740757f), (_482 * 0.07739938050508499f), exp2(log2((_482 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  //   float _507 = select((_483 <= 0.0392800010740757f), (_483 * 0.07739938050508499f), exp2(log2((_483 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  //   float _508 = select((_484 <= 0.0392800010740757f), (_484 * 0.07739938050508499f), exp2(log2((_484 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  //   float _527 = exp2(log2(mad(0.04331360012292862f, _508, mad(0.3292819857597351f, _507, (_506 * 0.627403974533081f))) * _408) * 0.1593017578125f);
  //   float _528 = exp2(log2(mad(0.012477199546992779f, _508, mad(0.9417769908905029f, _507, (_506 * 0.045745600014925f))) * _408) * 0.1593017578125f);
  //   float _529 = exp2(log2(mad(0.9836069941520691f, _508, mad(0.017604099586606026f, _507, (_506 * -0.0012105499627068639f))) * _408) * 0.1593017578125f);
  //   _555 = exp2(log2(((_527 * 18.8515625f) + 0.8359375f) / ((_527 * 18.6875f) + 1.0f)) * 78.84375f);
  //   _556 = exp2(log2(((_528 * 18.8515625f) + 0.8359375f) / ((_528 * 18.6875f) + 1.0f)) * 78.84375f);
  //   _557 = exp2(log2(((_529 * 18.8515625f) + 0.8359375f) / ((_529 * 18.6875f) + 1.0f)) * 78.84375f);
  // } else {
  //   _555 = _396;
  //   _556 = _397;
  //   _557 = _398;
  // }
  // SV_Target.x = _555;
  // SV_Target.y = _556;
  // SV_Target.z = _557;

  SV_Target.rgb = BlendUI(_399, ApplyDitheringAndFilmGrain(_317.rgb, float3(_377, _378, _379), _392, TEXCOORD.xy));
  SV_Target.w = _321;
  return SV_Target;
}
