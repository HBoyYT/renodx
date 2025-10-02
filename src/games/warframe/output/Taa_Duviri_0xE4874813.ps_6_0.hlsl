#include "../common.hlsl"
#include "../shared.h"

Texture2D<float4> t0 : register(t0);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t2 : register(t2);

Texture3D<float4> t3 : register(t3);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t6 : register(t6);

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
  float cb0_018x : packoffset(c018.x);
  float cb0_018y : packoffset(c018.y);
  float cb0_019x : packoffset(c019.x);
  float cb0_020x : packoffset(c020.x);
};

SamplerState s0 : register(s0);

SamplerState s1 : register(s1);

SamplerState s2 : register(s2);

SamplerState s3 : register(s3);

SamplerState s4 : register(s4);

SamplerState s10 : register(s10);

SamplerState s8 : register(s8);

SamplerState s6 : register(s6);

float4 main(
  noperspective float4 SV_Position : SV_Position,
  linear float4 TEXCOORD : TEXCOORD,
  linear float4 TEXCOORD_1 : TEXCOORD1
) : SV_Target {
  float4 SV_Target;
  float _27 = cb0_014x * TEXCOORD.x;
  float _28 = cb0_014y * TEXCOORD.y;
  float _29 = min(_27, cb0_009x);
  float _30 = min(_28, cb0_009y);
  float4 _31 = t10.SampleLevel(s10, float2(_29, _30), 0.0f);
  float4 _50 = t4.SampleLevel(s4, float2(min(_29, cb0_009x), min(_30, cb0_009y)), 0.0f);
  float _59 = ((((cb0_002x * 32.0f) * cb0_002z) * ((_31.x * 2.0f) + -1.0f)) + TEXCOORD.x) * cb0_002z;
  float _60 = (TEXCOORD.y - ((cb0_002w * cb0_002y) * ((_31.y * 64.0f) + -32.0f))) * cb0_002w;
  float _61 = min(_59, cb0_009x);
  float _62 = min(_60, cb0_009y);
  float4 _63 = t0.SampleLevel(s0, float2(_61, _62), 0.0f);
  float _67 = TEXCOORD.x + -0.5f;
  float _68 = TEXCOORD.y + -0.5f;
  float _69 = cb0_002z * _67;
  float _70 = cb0_002w * _68;
  float _74 = sqrt((_69 * _69) + (_70 * _70));
  float _79 = ((_74 * _74) * cb0_004x * RENODX_FX_CA_STRENGTH) / _74;
  float _81 = (_69 * cb0_002x) * _79;
  float _83 = (_70 * cb0_002y) * _79;
  float4 _90 = t0.SampleLevel(s0, float2(min((_59 - _81), cb0_009x), min((_60 - _83), cb0_009y)), 0.0f);
  float4 _104 = t0.SampleLevel(s0, float2(min((_81 + _59), cb0_009x), min((_83 + _60), cb0_009y)), 0.0f);
  float _114 = ((_104.x * 0.800000011920929f) + ((_90.x + _63.x) * 0.10000000149011612f)) * TEXCOORD_1.w;
  float _115 = (((_90.y * 0.699999988079071f) + (_63.y * 0.20000000298023224f)) + (_104.y * 0.10000000149011612f)) * TEXCOORD_1.w;
  float _116 = (((_90.z * 0.20000000298023224f) + (_63.z * 0.10000000149011612f)) + (_104.z * 0.699999988079071f)) * TEXCOORD_1.w;
  float _117 = dot(float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f), float3(_114, _115, _116));
  float4 _120 = t0.SampleLevel(s0, float2(min((_59 - cb0_002x), cb0_009x), _62), 0.0f);
  float _125 = dot(float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f), float3(_120.x, _120.y, _120.z)) * TEXCOORD_1.w;
  float4 _128 = t0.SampleLevel(s0, float2(min((_59 + cb0_002x), cb0_009x), _62), 0.0f);
  float _133 = dot(float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f), float3(_128.x, _128.y, _128.z)) * TEXCOORD_1.w;
  float4 _136 = t0.SampleLevel(s0, float2(_61, min((_60 - cb0_002y), cb0_009y)), 0.0f);
  float _141 = dot(float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f), float3(_136.x, _136.y, _136.z)) * TEXCOORD_1.w;
  float4 _144 = t0.SampleLevel(s0, float2(_61, min((_60 + cb0_002y), cb0_009y)), 0.0f);
  float _149 = dot(float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f), float3(_144.x, _144.y, _144.z)) * TEXCOORD_1.w;
  float _152 = (1.0f / (_117 + 1.0f)) * _117;
  float _177 = max(0.0f, (((cb0_008x * 0.5f) * (((((_152 * 4.0f) - ((1.0f / (_125 + 1.0f)) * _125)) - ((1.0f / (_133 + 1.0f)) * _133)) - ((1.0f / (_141 + 1.0f)) * _141)) - ((1.0f / (_149 + 1.0f)) * _149))) + _152)) / max(9.999999747378752e-06f, _152);
  float _178 = _177 * _114;
  float _179 = _177 * _115;
  float _180 = _177 * _116;
  float _184 = min(_27, cb0_010x);
  float _185 = min(_28, cb0_010y);
  float4 _186 = t2.SampleLevel(s2, float2(_184, _185), 0.0f);
  float4 _197 = t2.SampleLevel(s2, float2(min((_27 - _81), cb0_010x), min((_28 - _83), cb0_010y)), 0.0f);
  float4 _211 = t2.SampleLevel(s2, float2(min((_81 + _27), cb0_010x), min((_83 + _28), cb0_010y)), 0.0f);
  float _233 = _67 * 3.555555582046509f;
  float _234 = _68 * 3.555555582046509f;
  float _237 = sqrt(dot(float2(_233, _234), float2(_233, _234))) * 0.25f * RENODX_FX_VIGNETTE_STRENGTH;
  float _239 = (_237 * _237) + 1.0f;
  float _241 = 1.0f / (_239 * _239);
  float _242 = ((((((_211.x * 0.800000011920929f) + ((_197.x + _186.x) * 0.10000000149011612f)) * TEXCOORD_1.w) - _178) * _186.w) + _178) * _241;
  float _243 = (((((((_197.y * 0.699999988079071f) + (_186.y * 0.20000000298023224f)) + (_211.y * 0.10000000149011612f)) * TEXCOORD_1.w) - _179) * _186.w) + _179) * _241;
  float _244 = (((((((_197.z * 0.20000000298023224f) + (_186.z * 0.10000000149011612f)) + (_211.z * 0.699999988079071f)) * TEXCOORD_1.w) - _180) * _186.w) + _180) * _241;
  float4 _245 = t1.SampleLevel(s1, float2(_184, _185), 0.0f);
  float4 _255 = t6.SampleLevel(s6, float2(_29, _30), 0.0f);
  float _258 = saturate((dot(float3(_245.x, _245.y, _245.z), float3(cb0_019x, cb0_019x, cb0_019x)) + cb0_018y) + _255.x);
  float _264 = saturate(((1.0f - (_258 * 2.0f)) * cb0_018x) + _258);
  float _265 = dot(float3(_242, _243, _244), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _272 = ((_242 - _265) * _264) + _265;
  float _273 = ((_243 - _265) * _264) + _265;
  float _274 = ((_244 - _265) * _264) + _265;
  float _282 = saturate(((cb0_000w / (_50.x - cb0_000z)) + -500.0f) * 0.0020000000949949026f) * 0.22499999403953552f;
  float _310 = exp2(log2(((((_245.x * 0.20000000298023224f) - _272) * saturate(shader_injection.fx_bloom_strength + _282)) + _272) * 0.009999999776482582f) * 0.1593017578125f);
  float _311 = exp2(log2(((saturate(shader_injection.fx_bloom_strength + _282) * ((_245.y * 0.20000000298023224f) - _273)) + _273) * 0.009999999776482582f) * 0.1593017578125f);
  float _312 = exp2(log2(((saturate(shader_injection.fx_bloom_strength + _282) * ((_245.z * 0.20000000298023224f) - _274)) + _274) * 0.009999999776482582f) * 0.1593017578125f);
  float4 _343 = t3.Sample(s3, float3(((exp2(log2(((_310 * 18.8515625f) + 0.8359375f) / ((_310 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f), ((exp2(log2(((_311 * 18.8515625f) + 0.8359375f) / ((_311 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f), ((exp2(log2(((_312 * 18.8515625f) + 0.8359375f) / ((_312 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f)));
  float _347 = dot(float3(_343.x, _343.y, _343.z), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _353 = floor(TEXCOORD.x / cb0_002x);
  float _354 = floor(TEXCOORD.y / cb0_002y);
  float _364 = floor((sin(_353 * 0.03999999910593033f) * 2.0f) + sin((_354 * 0.09000000357627869f) + (_353 * 0.07000000029802322f))) + _353;
  float _365 = _364 + _354;
  float _366 = _364 - _354;
  float _373 = _365 - (floor(_365 * 0.125f) * 8.0f);
  float _374 = _366 - (floor(_366 * 0.125f) * 8.0f);
  float _376 = dot(float3(_343.x, _343.y, _343.z), float3(_343.x, _343.y, _343.z)) * 0.8999999761581421f;
  float _401 = _343.x + 0.4000000059604645f;
  float _402 = _343.y + 0.4000000059604645f;
  float _403 = _343.z + 0.4000000059604645f;
  float _420 = (((((float((bool)((bool)((bool)(_376 > 0.699999988079071f) || ((bool)(!(_374 == 0.0f)))))) * 0.75f) * float((bool)((bool)(((bool)(!(_373 == 0.0f))) || (bool)(_376 > 1.0f))))) * float((bool)((bool)(((bool)(!(_373 == 4.0f))) || (bool)(_376 > 0.3499999940395355f))))) * float((bool)((bool)((bool)(_376 > 0.18000000715255737f) || ((bool)(!(_374 == 4.0f))))))) * float((bool)((bool)(((bool)(!(_373 == 2.0f))) || (bool)(_376 > 0.10000000149011612f))))) * float((bool)((bool)((bool)(_376 > 0.019999999552965164f) || ((bool)(!(_374 == 2.0f))))));
  float _430 = (((_420 * (lerp(_401, _347, 0.5f))) - _343.x) * cb0_020x) + _343.x;
  float _431 = (((_420 * (lerp(_402, _347, 0.5f))) - _343.y) * cb0_020x) + _343.y;
  float _432 = (((_420 * (lerp(_403, _347, 0.5f))) - _343.z) * cb0_020x) + _343.z;
  float _435 = cb0_003x * 0.0009765625f;
  float _439 = frac(abs(_435));
  float _445 = frac(TEXCOORD.x * 5.39870023727417f);
  float _446 = frac(TEXCOORD.y * 5.4421000480651855f);
  float _447 = frac(select((_435 >= (-0.0f - _435)), _439, (-0.0f - _439)) * 7103.59033203125f);
  float _451 = dot(float3(_446, _447, _445), float3((_445 + 21.53510093688965f), (_446 + 14.313699722290039f), (_447 + 15.324700355529785f)));
  float _452 = _451 + _445;
  float _453 = _451 + _446;
  float _454 = _451 + _447;
  float _455 = _452 * _453;
  float _467 = frac(_455 * 97.59010314941406f) + -0.5f;
  float _468 = frac((_454 * 93.83689880371094f) * _452) + -0.5f;
  float _469 = frac((_454 * 91.69309997558594f) * _453) + -0.5f;
  float _488 = (frac(_455 * 95.43070220947266f) + -0.5f) + ((select((_430 > 0.998039186000824f), 0.0f, 1.0f) * _467) * select((_430 < 0.0019607844296842813f), 0.0f, 1.0f));
  float _489 = ((select((_431 > 0.998039186000824f), 0.0f, 1.0f) * _468) * select((_431 < 0.0019607844296842813f), 0.0f, 1.0f)) + _467;
  float _490 = ((select((_432 > 0.998039186000824f), 0.0f, 1.0f) * _469) * select((_432 < 0.0019607844296842813f), 0.0f, 1.0f)) + _468;
  float _500 = (saturate(1.0f - _347) * dot(float4(_488, _489, _490, _469), float4(0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f))) * cb0_015x;
  float _507 = saturate((_500 + _430) + (_488 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH));
  float _508 = saturate((_500 + _431) + (_489 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH));
  float _509 = saturate((_500 + _432) + (_490 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH));
  float4 _510 = t8.Sample(s8, float2(TEXCOORD.x, TEXCOORD.y));
  // float _666;
  // float _667;
  // float _668;
  // [branch]
  // if (!(_510.w < 9.999999747378752e-05f)) {
  //   float _519 = cb0_016x * 9.999999747378752e-05f;
  //   float _526 = (pow(_507, 0.012683313339948654f));
  //   float _527 = (pow(_508, 0.012683313339948654f));
  //   float _528 = (pow(_509, 0.012683313339948654f));
  //   float _553 = exp2(log2(max((_526 + -0.8359375f), 0.0f) / (18.8515625f - (_526 * 18.6875f))) * 6.277394771575928f) / _519;
  //   float _554 = exp2(log2(max((_527 + -0.8359375f), 0.0f) / (18.8515625f - (_527 * 18.6875f))) * 6.277394771575928f) / _519;
  //   float _555 = exp2(log2(max((_528 + -0.8359375f), 0.0f) / (18.8515625f - (_528 * 18.6875f))) * 6.277394771575928f) / _519;
  //   float _558 = mad(-0.07283999770879745f, _555, mad(-0.5876560211181641f, _554, (_553 * 1.6604959964752197f)));
  //   float _561 = mad(-0.00834800023585558f, _555, mad(1.1328949928283691f, _554, (_553 * -0.12454699724912643f)));
  //   float _564 = mad(1.118751049041748f, _555, mad(-0.10059700161218643f, _554, (_553 * -0.018154000863432884f)));
  //   float _589 = 1.0f - _510.w;
  //   float _593 = (select((_558 <= 0.0031308000907301903f), (_558 * 12.920000076293945f), (((pow(_558, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _589) + _510.x;
  //   float _594 = (select((_561 <= 0.0031308000907301903f), (_561 * 12.920000076293945f), (((pow(_561, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _589) + _510.y;
  //   float _595 = (select((_564 <= 0.0031308000907301903f), (_564 * 12.920000076293945f), (((pow(_564, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _589) + _510.z;
  //   float _617 = select((_593 <= 0.0392800010740757f), (_593 * 0.07739938050508499f), exp2(log2((_593 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  //   float _618 = select((_594 <= 0.0392800010740757f), (_594 * 0.07739938050508499f), exp2(log2((_594 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  //   float _619 = select((_595 <= 0.0392800010740757f), (_595 * 0.07739938050508499f), exp2(log2((_595 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  //   float _638 = exp2(log2(mad(0.04331360012292862f, _619, mad(0.3292819857597351f, _618, (_617 * 0.627403974533081f))) * _519) * 0.1593017578125f);
  //   float _639 = exp2(log2(mad(0.012477199546992779f, _619, mad(0.9417769908905029f, _618, (_617 * 0.045745600014925f))) * _519) * 0.1593017578125f);
  //   float _640 = exp2(log2(mad(0.9836069941520691f, _619, mad(0.017604099586606026f, _618, (_617 * -0.0012105499627068639f))) * _519) * 0.1593017578125f);
  //   _666 = exp2(log2(((_638 * 18.8515625f) + 0.8359375f) / ((_638 * 18.6875f) + 1.0f)) * 78.84375f);
  //   _667 = exp2(log2(((_639 * 18.8515625f) + 0.8359375f) / ((_639 * 18.6875f) + 1.0f)) * 78.84375f);
  //   _668 = exp2(log2(((_640 * 18.8515625f) + 0.8359375f) / ((_640 * 18.6875f) + 1.0f)) * 78.84375f);
  // } else {
  //   _666 = _507;
  //   _667 = _508;
  //   _668 = _509;
  // }
  // SV_Target.x = _666;
  // SV_Target.y = _667;
  // SV_Target.z = _668;

  SV_Target.rgb = BlendUI(_510, ApplyDitheringAndFilmGrain(float3(_430, _431, _432), float3(_488, _489, _490), _500, TEXCOORD.xy));
  SV_Target.w = _347;
  return SV_Target;
}
