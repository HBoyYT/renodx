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
  float4 _61 = t0.SampleLevel(s0, float2(min(_57, cb0_009x), min(_58, cb0_009y)), 0.0f);
  float _67 = cb0_002z * (TEXCOORD.x + -0.5f);
  float _68 = cb0_002w * (TEXCOORD.y + -0.5f);
  float _72 = sqrt((_67 * _67) + (_68 * _68));
  float _77 = ((_72 * _72) * cb0_004x * RENODX_FX_CA_STRENGTH) / _72;
  float _79 = (_67 * cb0_002x) * _77;
  float _81 = (_68 * cb0_002y) * _77;
  float4 _88 = t0.SampleLevel(s0, float2(min((_57 - _79), cb0_009x), min((_58 - _81), cb0_009y)), 0.0f);
  float4 _102 = t0.SampleLevel(s0, float2(min((_79 + _57), cb0_009x), min((_81 + _58), cb0_009y)), 0.0f);
  float _109 = (_102.x * 0.800000011920929f) + ((_88.x + _61.x) * 0.10000000149011612f);
  float _110 = ((_88.y * 0.699999988079071f) + (_61.y * 0.20000000298023224f)) + (_102.y * 0.10000000149011612f);
  float _111 = ((_88.z * 0.20000000298023224f) + (_61.z * 0.10000000149011612f)) + (_102.z * 0.699999988079071f);
  float _115 = min(_25, cb0_010x);
  float _116 = min(_26, cb0_010y);
  float4 _117 = t2.SampleLevel(s2, float2(_115, _116), 0.0f);
  float4 _128 = t2.SampleLevel(s2, float2(min((_25 - _79), cb0_010x), min((_26 - _81), cb0_010y)), 0.0f);
  float4 _140 = t2.SampleLevel(s2, float2(min((_79 + _25), cb0_010x), min((_81 + _26), cb0_010y)), 0.0f);
  float _163 = (TEXCOORD.x + -0.5f) * 3.555555582046509f;
  float _164 = (TEXCOORD.y + -0.5f) * 3.555555582046509f;
  float _167 = sqrt(dot(float2(_163, _164), float2(_163, _164))) * 0.25f * RENODX_FX_VIGNETTE_STRENGTH;
  float _169 = (_167 * _167) + 1.0f;
  float _172 = (1.0f / (_169 * _169)) * TEXCOORD_1.w;
  float _173 = ((((((_128.x + _117.x) * 0.10000000149011612f) - _109) + (_140.x * 0.800000011920929f)) * _117.w) + _109) * _172;
  float _174 = ((((((_117.y * 0.20000000298023224f) - _110) + (_128.y * 0.699999988079071f)) + (_140.y * 0.10000000149011612f)) * _117.w) + _110) * _172;
  float _175 = ((((((_117.z * 0.10000000149011612f) - _111) + (_128.z * 0.20000000298023224f)) + (_140.z * 0.699999988079071f)) * _117.w) + _111) * _172;
  float4 _176 = t1.SampleLevel(s1, float2(_115, _116), 0.0f);
  float _187 = saturate(((cb0_000w / (_48.x - cb0_000z)) + -500.0f) * 0.0020000000949949026f) * 0.22499999403953552f;
  float _215 = exp2(log2(((saturate(shader_injection.fx_bloom_strength + _187) * ((_176.x * 0.20000000298023224f) - _173)) + _173) * 0.009999999776482582f) * 0.1593017578125f);
  float _216 = exp2(log2(((saturate(shader_injection.fx_bloom_strength + _187) * ((_176.y * 0.20000000298023224f) - _174)) + _174) * 0.009999999776482582f) * 0.1593017578125f);
  float _217 = exp2(log2(((saturate(shader_injection.fx_bloom_strength + _187) * ((_176.z * 0.20000000298023224f) - _175)) + _175) * 0.009999999776482582f) * 0.1593017578125f);
  float4 _248 = t3.Sample(s3, float3(((exp2(log2(((_215 * 18.8515625f) + 0.8359375f) / ((_215 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f), ((exp2(log2(((_216 * 18.8515625f) + 0.8359375f) / ((_216 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f), ((exp2(log2(((_217 * 18.8515625f) + 0.8359375f) / ((_217 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f)));
  float _252 = dot(float3(_248.x, _248.y, _248.z), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _255 = cb0_003x * 0.0009765625f;
  float _259 = frac(abs(_255));
  float _265 = frac(TEXCOORD.x * 5.39870023727417f);
  float _266 = frac(TEXCOORD.y * 5.4421000480651855f);
  float _267 = frac(select((_255 >= (-0.0f - _255)), _259, (-0.0f - _259)) * 7103.59033203125f);
  float _271 = dot(float3(_266, _267, _265), float3((_265 + 21.53510093688965f), (_266 + 14.313699722290039f), (_267 + 15.324700355529785f)));
  float _272 = _271 + _265;
  float _273 = _271 + _266;
  float _274 = _271 + _267;
  float _275 = _272 * _273;
  float _287 = frac(_275 * 97.59010314941406f) + -0.5f;
  float _288 = frac((_274 * 93.83689880371094f) * _272) + -0.5f;
  float _289 = frac((_274 * 91.69309997558594f) * _273) + -0.5f;
  float _308 = (frac(_275 * 95.43070220947266f) + -0.5f) + ((select((_248.x < 0.0019607844296842813f), 0.0f, 1.0f) * select((_248.x > 0.998039186000824f), 0.0f, 1.0f)) * _287);
  float _309 = ((select((_248.y < 0.0019607844296842813f), 0.0f, 1.0f) * select((_248.y > 0.998039186000824f), 0.0f, 1.0f)) * _288) + _287;
  float _310 = ((select((_248.z < 0.0019607844296842813f), 0.0f, 1.0f) * select((_248.z > 0.998039186000824f), 0.0f, 1.0f)) * _289) + _288;
  float _323 = (saturate(1.0f - _252) * dot(float4(_308, _309, _310, _289), float4(0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f))) * cb0_015x;
  float _327 = saturate(((_308 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + _248.x) + _323);
  float _328 = saturate(((_309 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + _248.y) + _323);
  float _329 = saturate(((_310 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + _248.z) + _323);
  float4 _330 = t8.Sample(s8, float2(TEXCOORD.x, TEXCOORD.y));
  // float _486;
  // float _487;
  // float _488;
  // [branch]
  // if (!(_330.w < 9.999999747378752e-05f)) {
  //   float _339 = cb0_016x * 9.999999747378752e-05f;
  //   float _346 = (pow(_327, 0.012683313339948654f));
  //   float _347 = (pow(_328, 0.012683313339948654f));
  //   float _348 = (pow(_329, 0.012683313339948654f));
  //   float _373 = exp2(log2(max((_346 + -0.8359375f), 0.0f) / (18.8515625f - (_346 * 18.6875f))) * 6.277394771575928f) / _339;
  //   float _374 = exp2(log2(max((_347 + -0.8359375f), 0.0f) / (18.8515625f - (_347 * 18.6875f))) * 6.277394771575928f) / _339;
  //   float _375 = exp2(log2(max((_348 + -0.8359375f), 0.0f) / (18.8515625f - (_348 * 18.6875f))) * 6.277394771575928f) / _339;
  //   float _378 = mad(-0.07283999770879745f, _375, mad(-0.5876560211181641f, _374, (_373 * 1.6604959964752197f)));
  //   float _381 = mad(-0.00834800023585558f, _375, mad(1.1328949928283691f, _374, (_373 * -0.12454699724912643f)));
  //   float _384 = mad(1.118751049041748f, _375, mad(-0.10059700161218643f, _374, (_373 * -0.018154000863432884f)));
  //   float _409 = 1.0f - _330.w;
  //   float _413 = (select((_378 <= 0.0031308000907301903f), (_378 * 12.920000076293945f), (((pow(_378, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _409) + _330.x;
  //   float _414 = (select((_381 <= 0.0031308000907301903f), (_381 * 12.920000076293945f), (((pow(_381, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _409) + _330.y;
  //   float _415 = (select((_384 <= 0.0031308000907301903f), (_384 * 12.920000076293945f), (((pow(_384, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _409) + _330.z;
  //   float _437 = select((_413 <= 0.0392800010740757f), (_413 * 0.07739938050508499f), exp2(log2((_413 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  //   float _438 = select((_414 <= 0.0392800010740757f), (_414 * 0.07739938050508499f), exp2(log2((_414 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  //   float _439 = select((_415 <= 0.0392800010740757f), (_415 * 0.07739938050508499f), exp2(log2((_415 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  //   float _458 = exp2(log2(mad(0.04331360012292862f, _439, mad(0.3292819857597351f, _438, (_437 * 0.627403974533081f))) * _339) * 0.1593017578125f);
  //   float _459 = exp2(log2(mad(0.012477199546992779f, _439, mad(0.9417769908905029f, _438, (_437 * 0.045745600014925f))) * _339) * 0.1593017578125f);
  //   float _460 = exp2(log2(mad(0.9836069941520691f, _439, mad(0.017604099586606026f, _438, (_437 * -0.0012105499627068639f))) * _339) * 0.1593017578125f);
  //   _486 = exp2(log2(((_458 * 18.8515625f) + 0.8359375f) / ((_458 * 18.6875f) + 1.0f)) * 78.84375f);
  //   _487 = exp2(log2(((_459 * 18.8515625f) + 0.8359375f) / ((_459 * 18.6875f) + 1.0f)) * 78.84375f);
  //   _488 = exp2(log2(((_460 * 18.8515625f) + 0.8359375f) / ((_460 * 18.6875f) + 1.0f)) * 78.84375f);
  // } else {
  //   _486 = _327;
  //   _487 = _328;
  //   _488 = _329;
  // }
  // SV_Target.x = _486;
  // SV_Target.y = _487;
  // SV_Target.z = _488;

  SV_Target.rgb = BlendUI(_330, ApplyDitheringAndFilmGrain(_248.rgb, float3(_308, _309, _310), _323, TEXCOORD.xy));
  SV_Target.w = _252;
  return SV_Target;
}
