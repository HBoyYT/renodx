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
  float _109 = (_102.x * 0.800000011920929f) + ((_88.x + _61.x) * 0.10000000149011612f);
  float _110 = ((_88.y * 0.699999988079071f) + (_61.y * 0.20000000298023224f)) + (_102.y * 0.10000000149011612f);
  float _111 = ((_88.z * 0.20000000298023224f) + (_61.z * 0.10000000149011612f)) + (_102.z * 0.699999988079071f);
  float _115 = min(_25, cb0_010x);
  float _116 = min(_26, cb0_010y);
  float4 _117 = t2.SampleLevel(s2, float2(_115, _116), 0.0f);
  float4 _128 = t2.SampleLevel(s2, float2(min((_25 - _79), cb0_010x), min((_26 - _81), cb0_010y)), 0.0f);
  float4 _140 = t2.SampleLevel(s2, float2(min((_79 + _25), cb0_010x), min((_81 + _26), cb0_010y)), 0.0f);
  float _161 = _65 * 3.555555582046509f;
  float _162 = _66 * 3.555555582046509f;
  float _165 = sqrt(dot(float2(_161, _162), float2(_161, _162))) * 0.25f * RENODX_FX_VIGNETTE_STRENGTH;
  float _167 = (_165 * _165) + 1.0f;
  float _170 = (1.0f / (_167 * _167)) * TEXCOORD_1.w;
  float _171 = ((((((_128.x + _117.x) * 0.10000000149011612f) - _109) + (_140.x * 0.800000011920929f)) * _117.w) + _109) * _170;
  float _172 = ((((((_117.y * 0.20000000298023224f) - _110) + (_128.y * 0.699999988079071f)) + (_140.y * 0.10000000149011612f)) * _117.w) + _110) * _170;
  float _173 = ((((((_117.z * 0.10000000149011612f) - _111) + (_128.z * 0.20000000298023224f)) + (_140.z * 0.699999988079071f)) * _117.w) + _111) * _170;
  float4 _174 = t1.SampleLevel(s1, float2(_115, _116), 0.0f);
  float _185 = saturate(((cb0_000w / (_48.x - cb0_000z)) + -500.0f) * 0.0020000000949949026f) * 0.22499999403953552f;
  float _213 = exp2(log2(((saturate(shader_injection.fx_bloom_strength + _185) * ((_174.x * 0.20000000298023224f) - _171)) + _171) * 0.009999999776482582f) * 0.1593017578125f);
  float _214 = exp2(log2(((saturate(shader_injection.fx_bloom_strength + _185) * ((_174.y * 0.20000000298023224f) - _172)) + _172) * 0.009999999776482582f) * 0.1593017578125f);
  float _215 = exp2(log2(((saturate(shader_injection.fx_bloom_strength + _185) * ((_174.z * 0.20000000298023224f) - _173)) + _173) * 0.009999999776482582f) * 0.1593017578125f);
  float4 _246 = t3.Sample(s3, float3(((exp2(log2(((_213 * 18.8515625f) + 0.8359375f) / ((_213 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f), ((exp2(log2(((_214 * 18.8515625f) + 0.8359375f) / ((_214 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f), ((exp2(log2(((_215 * 18.8515625f) + 0.8359375f) / ((_215 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f)));
  float _250 = dot(float3(_246.x, _246.y, _246.z), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _253 = cb0_003x * 0.0009765625f;
  float _257 = frac(abs(_253));
  float _263 = frac(TEXCOORD.x * 5.39870023727417f);
  float _264 = frac(TEXCOORD.y * 5.4421000480651855f);
  float _265 = frac(select((_253 >= (-0.0f - _253)), _257, (-0.0f - _257)) * 7103.59033203125f);
  float _269 = dot(float3(_264, _265, _263), float3((_263 + 21.53510093688965f), (_264 + 14.313699722290039f), (_265 + 15.324700355529785f)));
  float _270 = _269 + _263;
  float _271 = _269 + _264;
  float _272 = _269 + _265;
  float _273 = _270 * _271;
  float _285 = frac(_273 * 97.59010314941406f) + -0.5f;
  float _286 = frac((_272 * 93.83689880371094f) * _270) + -0.5f;
  float _287 = frac((_272 * 91.69309997558594f) * _271) + -0.5f;
  float _306 = (frac(_273 * 95.43070220947266f) + -0.5f) + ((select((_246.x < 0.0019607844296842813f), 0.0f, 1.0f) * select((_246.x > 0.998039186000824f), 0.0f, 1.0f)) * _285);
  float _307 = ((select((_246.y < 0.0019607844296842813f), 0.0f, 1.0f) * select((_246.y > 0.998039186000824f), 0.0f, 1.0f)) * _286) + _285;
  float _308 = ((select((_246.z < 0.0019607844296842813f), 0.0f, 1.0f) * select((_246.z > 0.998039186000824f), 0.0f, 1.0f)) * _287) + _286;
  float _321 = (saturate(1.0f - _250) * dot(float4(_306, _307, _308, _287), float4(0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f))) * cb0_015x;
  float _325 = saturate(((_306 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + _246.x) + _321);
  float _326 = saturate(((_307 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + _246.y) + _321);
  float _327 = saturate(((_308 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + _246.z) + _321);
  float4 _328 = t8.Sample(s8, float2(TEXCOORD.x, TEXCOORD.y));
  // float _484;
  // float _485;
  // float _486;
  // [branch]
  // if (!(_328.w < 9.999999747378752e-05f)) {
  //   float _337 = cb0_016x * 9.999999747378752e-05f;
  //   float _344 = (pow(_325, 0.012683313339948654f));
  //   float _345 = (pow(_326, 0.012683313339948654f));
  //   float _346 = (pow(_327, 0.012683313339948654f));
  //   float _371 = exp2(log2(max((_344 + -0.8359375f), 0.0f) / (18.8515625f - (_344 * 18.6875f))) * 6.277394771575928f) / _337;
  //   float _372 = exp2(log2(max((_345 + -0.8359375f), 0.0f) / (18.8515625f - (_345 * 18.6875f))) * 6.277394771575928f) / _337;
  //   float _373 = exp2(log2(max((_346 + -0.8359375f), 0.0f) / (18.8515625f - (_346 * 18.6875f))) * 6.277394771575928f) / _337;
  //   float _376 = mad(-0.07283999770879745f, _373, mad(-0.5876560211181641f, _372, (_371 * 1.6604959964752197f)));
  //   float _379 = mad(-0.00834800023585558f, _373, mad(1.1328949928283691f, _372, (_371 * -0.12454699724912643f)));
  //   float _382 = mad(1.118751049041748f, _373, mad(-0.10059700161218643f, _372, (_371 * -0.018154000863432884f)));
  //   float _407 = 1.0f - _328.w;
  //   float _411 = (select((_376 <= 0.0031308000907301903f), (_376 * 12.920000076293945f), (((pow(_376, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _407) + _328.x;
  //   float _412 = (select((_379 <= 0.0031308000907301903f), (_379 * 12.920000076293945f), (((pow(_379, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _407) + _328.y;
  //   float _413 = (select((_382 <= 0.0031308000907301903f), (_382 * 12.920000076293945f), (((pow(_382, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _407) + _328.z;
  //   float _435 = select((_411 <= 0.0392800010740757f), (_411 * 0.07739938050508499f), exp2(log2((_411 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  //   float _436 = select((_412 <= 0.0392800010740757f), (_412 * 0.07739938050508499f), exp2(log2((_412 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  //   float _437 = select((_413 <= 0.0392800010740757f), (_413 * 0.07739938050508499f), exp2(log2((_413 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  //   float _456 = exp2(log2(mad(0.04331360012292862f, _437, mad(0.3292819857597351f, _436, (_435 * 0.627403974533081f))) * _337) * 0.1593017578125f);
  //   float _457 = exp2(log2(mad(0.012477199546992779f, _437, mad(0.9417769908905029f, _436, (_435 * 0.045745600014925f))) * _337) * 0.1593017578125f);
  //   float _458 = exp2(log2(mad(0.9836069941520691f, _437, mad(0.017604099586606026f, _436, (_435 * -0.0012105499627068639f))) * _337) * 0.1593017578125f);
  //   _484 = exp2(log2(((_456 * 18.8515625f) + 0.8359375f) / ((_456 * 18.6875f) + 1.0f)) * 78.84375f);
  //   _485 = exp2(log2(((_457 * 18.8515625f) + 0.8359375f) / ((_457 * 18.6875f) + 1.0f)) * 78.84375f);
  //   _486 = exp2(log2(((_458 * 18.8515625f) + 0.8359375f) / ((_458 * 18.6875f) + 1.0f)) * 78.84375f);
  // } else {
  //   _484 = _325;
  //   _485 = _326;
  //   _486 = _327;
  // }
  // SV_Target.x = _484;
  // SV_Target.y = _485;
  // SV_Target.z = _486;
  
  SV_Target.rgb = BlendUI(_328, ApplyDitheringAndFilmGrain(_246.rgb, float3(_306, _307, _308), _321, TEXCOORD.xy));
  SV_Target.w = _250;
  return SV_Target;
}
