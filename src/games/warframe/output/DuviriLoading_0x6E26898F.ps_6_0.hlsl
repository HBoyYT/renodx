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
  float _159 = ((((((_128.x + _117.x) * 0.10000000149011612f) - _109) + (_140.x * 0.800000011920929f)) * _117.w) + _109) * TEXCOORD_1.w;
  float _161 = ((((((_117.y * 0.20000000298023224f) - _110) + (_128.y * 0.699999988079071f)) + (_140.y * 0.10000000149011612f)) * _117.w) + _110) * TEXCOORD_1.w;
  float _163 = ((((((_117.z * 0.10000000149011612f) - _111) + (_128.z * 0.20000000298023224f)) + (_140.z * 0.699999988079071f)) * _117.w) + _111) * TEXCOORD_1.w;
  float4 _164 = t1.SampleLevel(s1, float2(_115, _116), 0.0f);
  float _175 = saturate(((cb0_000w / (_48.x - cb0_000z)) + -500.0f) * 0.0020000000949949026f) * 0.22499999403953552f;
  float _203 = exp2(log2(((saturate(shader_injection.fx_bloom_strength + _175) * ((_164.x * 0.20000000298023224f) - _159)) + _159) * 0.009999999776482582f) * 0.1593017578125f);
  float _204 = exp2(log2(((saturate(shader_injection.fx_bloom_strength + _175) * ((_164.y * 0.20000000298023224f) - _161)) + _161) * 0.009999999776482582f) * 0.1593017578125f);
  float _205 = exp2(log2(((saturate(shader_injection.fx_bloom_strength + _175) * ((_164.z * 0.20000000298023224f) - _163)) + _163) * 0.009999999776482582f) * 0.1593017578125f);
  float4 _236 = t3.Sample(s3, float3(((exp2(log2(((_203 * 18.8515625f) + 0.8359375f) / ((_203 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f), ((exp2(log2(((_204 * 18.8515625f) + 0.8359375f) / ((_204 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f), ((exp2(log2(((_205 * 18.8515625f) + 0.8359375f) / ((_205 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f)));
  float _240 = dot(float3(_236.x, _236.y, _236.z), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _243 = cb0_003x * 0.0009765625f;
  float _247 = frac(abs(_243));
  float _253 = frac(TEXCOORD.x * 5.39870023727417f);
  float _254 = frac(TEXCOORD.y * 5.4421000480651855f);
  float _255 = frac(select((_243 >= (-0.0f - _243)), _247, (-0.0f - _247)) * 7103.59033203125f);
  float _259 = dot(float3(_254, _255, _253), float3((_253 + 21.53510093688965f), (_254 + 14.313699722290039f), (_255 + 15.324700355529785f)));
  float _260 = _259 + _253;
  float _261 = _259 + _254;
  float _262 = _259 + _255;
  float _263 = _260 * _261;
  float _275 = frac(_263 * 97.59010314941406f) + -0.5f;
  float _276 = frac((_262 * 93.83689880371094f) * _260) + -0.5f;
  float _277 = frac((_262 * 91.69309997558594f) * _261) + -0.5f;
  float _296 = (frac(_263 * 95.43070220947266f) + -0.5f) + ((select((_236.x < 0.0019607844296842813f), 0.0f, 1.0f) * select((_236.x > 0.998039186000824f), 0.0f, 1.0f)) * _275);
  float _297 = ((select((_236.y < 0.0019607844296842813f), 0.0f, 1.0f) * select((_236.y > 0.998039186000824f), 0.0f, 1.0f)) * _276) + _275;
  float _298 = ((select((_236.z < 0.0019607844296842813f), 0.0f, 1.0f) * select((_236.z > 0.998039186000824f), 0.0f, 1.0f)) * _277) + _276;
  float _311 = (saturate(1.0f - _240) * dot(float4(_296, _297, _298, _277), float4(0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f))) * cb0_015x;
  float _315 = saturate(((_296 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + _236.x) + _311);
  float _316 = saturate(((_297 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + _236.y) + _311);
  float _317 = saturate(((_298 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + _236.z) + _311);
  float4 _318 = t8.Sample(s8, float2(TEXCOORD.x, TEXCOORD.y));
  // float _474;
  // float _475;
  // float _476;
  // [branch]
  // if (!(_318.w < 9.999999747378752e-05f)) {
  //   float _327 = cb0_016x * 9.999999747378752e-05f;
  //   float _334 = (pow(_315, 0.012683313339948654f));
  //   float _335 = (pow(_316, 0.012683313339948654f));
  //   float _336 = (pow(_317, 0.012683313339948654f));
  //   float _361 = exp2(log2(max((_334 + -0.8359375f), 0.0f) / (18.8515625f - (_334 * 18.6875f))) * 6.277394771575928f) / _327;
  //   float _362 = exp2(log2(max((_335 + -0.8359375f), 0.0f) / (18.8515625f - (_335 * 18.6875f))) * 6.277394771575928f) / _327;
  //   float _363 = exp2(log2(max((_336 + -0.8359375f), 0.0f) / (18.8515625f - (_336 * 18.6875f))) * 6.277394771575928f) / _327;
  //   float _366 = mad(-0.07283999770879745f, _363, mad(-0.5876560211181641f, _362, (_361 * 1.6604959964752197f)));
  //   float _369 = mad(-0.00834800023585558f, _363, mad(1.1328949928283691f, _362, (_361 * -0.12454699724912643f)));
  //   float _372 = mad(1.118751049041748f, _363, mad(-0.10059700161218643f, _362, (_361 * -0.018154000863432884f)));
  //   float _397 = 1.0f - _318.w;
  //   float _401 = (select((_366 <= 0.0031308000907301903f), (_366 * 12.920000076293945f), (((pow(_366, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _397) + _318.x;
  //   float _402 = (select((_369 <= 0.0031308000907301903f), (_369 * 12.920000076293945f), (((pow(_369, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _397) + _318.y;
  //   float _403 = (select((_372 <= 0.0031308000907301903f), (_372 * 12.920000076293945f), (((pow(_372, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _397) + _318.z;
  //   float _425 = select((_401 <= 0.0392800010740757f), (_401 * 0.07739938050508499f), exp2(log2((_401 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  //   float _426 = select((_402 <= 0.0392800010740757f), (_402 * 0.07739938050508499f), exp2(log2((_402 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  //   float _427 = select((_403 <= 0.0392800010740757f), (_403 * 0.07739938050508499f), exp2(log2((_403 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  //   float _446 = exp2(log2(mad(0.04331360012292862f, _427, mad(0.3292819857597351f, _426, (_425 * 0.627403974533081f))) * _327) * 0.1593017578125f);
  //   float _447 = exp2(log2(mad(0.012477199546992779f, _427, mad(0.9417769908905029f, _426, (_425 * 0.045745600014925f))) * _327) * 0.1593017578125f);
  //   float _448 = exp2(log2(mad(0.9836069941520691f, _427, mad(0.017604099586606026f, _426, (_425 * -0.0012105499627068639f))) * _327) * 0.1593017578125f);
  //   _474 = exp2(log2(((_446 * 18.8515625f) + 0.8359375f) / ((_446 * 18.6875f) + 1.0f)) * 78.84375f);
  //   _475 = exp2(log2(((_447 * 18.8515625f) + 0.8359375f) / ((_447 * 18.6875f) + 1.0f)) * 78.84375f);
  //   _476 = exp2(log2(((_448 * 18.8515625f) + 0.8359375f) / ((_448 * 18.6875f) + 1.0f)) * 78.84375f);
  // } else {
  //   _474 = _315;
  //   _475 = _316;
  //   _476 = _317;
  // }
  // SV_Target.x = _474;
  // SV_Target.y = _475;
  // SV_Target.z = _476;

  SV_Target.rgb = BlendUI(_318, ApplyDitheringAndFilmGrain(_236.rgb, float3(_296, _297, _298), _311, TEXCOORD.xy));
  SV_Target.w = _240;
  return SV_Target;
}
