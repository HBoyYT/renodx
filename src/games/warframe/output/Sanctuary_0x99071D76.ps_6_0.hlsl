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
  float cb0_012x : packoffset(c012.x);
  float cb0_013x : packoffset(c013.x);
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
  float _27 = min((cb0_014x * TEXCOORD.x), cb0_009x);
  float _28 = min((cb0_014y * TEXCOORD.y), cb0_009y);
  float4 _29 = t10.SampleLevel(s10, float2(_27, _28), 0.0f);
  float4 _48 = t4.SampleLevel(s4, float2(min(_27, cb0_009x), min(_28, cb0_009y)), 0.0f);
  float _57 = TEXCOORD.x + -0.5f;
  float _58 = TEXCOORD.y + -0.5f;
  float _70 = ((cb0_012x + -1.0f) * saturate((1.7000000476837158f - sqrt((_58 * _58) + (_57 * _57))) * cb0_013x)) + 1.0f;
  float _71 = _70 * cb0_002x;
  float _72 = TEXCOORD.x / _71;
  float _73 = _70 * cb0_002y;
  float _74 = TEXCOORD.y / _73;
  float _75 = frac(_72);
  float _76 = frac(_74);
  float _88 = ((select((_75 < (1.0f - _76)), 0.0f, 2.0f) * cb0_013x) + floor(_72)) * _71;
  float _89 = _73 * ((select((_76 < _75), 0.0f, 2.0f) * cb0_013x) + floor(_74));
  float _92 = (_88 + (((cb0_002x * 32.0f) * cb0_002z) * ((_29.x * 2.0f) + -1.0f))) * cb0_002z;
  float _93 = (_89 - ((cb0_002w * cb0_002y) * ((_29.y * 64.0f) + -32.0f))) * cb0_002w;
  float _94 = _88 * cb0_014x;
  float _95 = _89 * cb0_014y;
  float4 _98 = t0.SampleLevel(s0, float2(min(_92, cb0_009x), min(_93, cb0_009y)), 0.0f);
  float _104 = (_88 + -0.5f) * cb0_002z;
  float _105 = (_89 + -0.5f) * cb0_002w;
  float _109 = sqrt((_104 * _104) + (_105 * _105));
  float _114 = ((_109 * _109) * cb0_004x * RENODX_FX_CA_STRENGTH) / _109;
  float _116 = (_104 * cb0_002x) * _114;
  float _118 = (_105 * cb0_002y) * _114;
  float4 _125 = t0.SampleLevel(s0, float2(min((_92 - _116), cb0_009x), min((_93 - _118), cb0_009y)), 0.0f);
  float4 _139 = t0.SampleLevel(s0, float2(min((_116 + _92), cb0_009x), min((_118 + _93), cb0_009y)), 0.0f);
  float _146 = (_139.x * 0.800000011920929f) + ((_125.x + _98.x) * 0.10000000149011612f);
  float _147 = ((_125.y * 0.699999988079071f) + (_98.y * 0.20000000298023224f)) + (_139.y * 0.10000000149011612f);
  float _148 = ((_125.z * 0.20000000298023224f) + (_98.z * 0.10000000149011612f)) + (_139.z * 0.699999988079071f);
  float _152 = min(_94, cb0_010x);
  float _153 = min(_95, cb0_010y);
  float4 _154 = t2.SampleLevel(s2, float2(_152, _153), 0.0f);
  float4 _165 = t2.SampleLevel(s2, float2(min((_94 - _116), cb0_010x), min((_95 - _118), cb0_010y)), 0.0f);
  float4 _177 = t2.SampleLevel(s2, float2(min((_116 + _94), cb0_010x), min((_118 + _95), cb0_010y)), 0.0f);
  float _198 = _57 * 3.555555582046509f;
  float _199 = _58 * 3.555555582046509f;
  float _202 = sqrt(dot(float2(_198, _199), float2(_198, _199))) * 0.25f * RENODX_FX_VIGNETTE_STRENGTH;
  float _204 = (_202 * _202) + 1.0f;
  float _207 = (1.0f / (_204 * _204)) * TEXCOORD_1.w;
  float _208 = ((((((_165.x + _154.x) * 0.10000000149011612f) - _146) + (_177.x * 0.800000011920929f)) * _154.w) + _146) * _207;
  float _209 = ((((((_154.y * 0.20000000298023224f) - _147) + (_165.y * 0.699999988079071f)) + (_177.y * 0.10000000149011612f)) * _154.w) + _147) * _207;
  float _210 = ((((((_154.z * 0.10000000149011612f) - _148) + (_165.z * 0.20000000298023224f)) + (_177.z * 0.699999988079071f)) * _154.w) + _148) * _207;
  float4 _211 = t1.SampleLevel(s1, float2(_152, _153), 0.0f);
  float _222 = saturate(((cb0_000w / (_48.x - cb0_000z)) + -500.0f) * 0.0020000000949949026f) * 0.22499999403953552f;
  float _250 = exp2(log2(((saturate(cb0_001x + _222) * ((_211.x * 0.20000000298023224f) - _208)) + _208) * 0.009999999776482582f) * 0.1593017578125f);
  float _251 = exp2(log2(((saturate(cb0_001y + _222) * ((_211.y * 0.20000000298023224f) - _209)) + _209) * 0.009999999776482582f) * 0.1593017578125f);
  float _252 = exp2(log2(((saturate(cb0_001z + _222) * ((_211.z * 0.20000000298023224f) - _210)) + _210) * 0.009999999776482582f) * 0.1593017578125f);
  float4 _283 = t3.Sample(s3, float3(((exp2(log2(((_250 * 18.8515625f) + 0.8359375f) / ((_250 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f), ((exp2(log2(((_251 * 18.8515625f) + 0.8359375f) / ((_251 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f), ((exp2(log2(((_252 * 18.8515625f) + 0.8359375f) / ((_252 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f)));
  float _287 = dot(float3(_283.x, _283.y, _283.z), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _290 = cb0_003x * 0.0009765625f;
  float _294 = frac(abs(_290));
  float _300 = frac(TEXCOORD.x * 5.39870023727417f);
  float _301 = frac(TEXCOORD.y * 5.4421000480651855f);
  float _302 = frac(select((_290 >= (-0.0f - _290)), _294, (-0.0f - _294)) * 7103.59033203125f);
  float _306 = dot(float3(_301, _302, _300), float3((_300 + 21.53510093688965f), (_301 + 14.313699722290039f), (_302 + 15.324700355529785f)));
  float _307 = _306 + _300;
  float _308 = _306 + _301;
  float _309 = _306 + _302;
  float _310 = _307 * _308;
  float _322 = frac(_310 * 97.59010314941406f) + -0.5f;
  float _323 = frac((_309 * 93.83689880371094f) * _307) + -0.5f;
  float _324 = frac((_309 * 91.69309997558594f) * _308) + -0.5f;
  float _343 = (frac(_310 * 95.43070220947266f) + -0.5f) + ((select((_283.x < 0.0019607844296842813f), 0.0f, 1.0f) * select((_283.x > 0.998039186000824f), 0.0f, 1.0f)) * _322);
  float _344 = ((select((_283.y < 0.0019607844296842813f), 0.0f, 1.0f) * select((_283.y > 0.998039186000824f), 0.0f, 1.0f)) * _323) + _322;
  float _345 = ((select((_283.z < 0.0019607844296842813f), 0.0f, 1.0f) * select((_283.z > 0.998039186000824f), 0.0f, 1.0f)) * _324) + _323;
  float _358 = (saturate(1.0f - _287) * dot(float4(_343, _344, _345, _324), float4(0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f))) * cb0_015x;
  float _362 = saturate(((_343 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + _283.x) + _358);
  float _363 = saturate(((_344 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + _283.y) + _358);
  float _364 = saturate(((_345 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + _283.z) + _358);
  float4 _365 = t8.Sample(s8, float2(TEXCOORD.x, TEXCOORD.y));
  // float _521;
  // float _522;
  // float _523;
  // [branch]
  // if (!(_365.w < 9.999999747378752e-05f)) {
  //   float _374 = cb0_016x * 9.999999747378752e-05f;
  //   float _381 = (pow(_362, 0.012683313339948654f));
  //   float _382 = (pow(_363, 0.012683313339948654f));
  //   float _383 = (pow(_364, 0.012683313339948654f));
  //   float _408 = exp2(log2(max((_381 + -0.8359375f), 0.0f) / (18.8515625f - (_381 * 18.6875f))) * 6.277394771575928f) / _374;
  //   float _409 = exp2(log2(max((_382 + -0.8359375f), 0.0f) / (18.8515625f - (_382 * 18.6875f))) * 6.277394771575928f) / _374;
  //   float _410 = exp2(log2(max((_383 + -0.8359375f), 0.0f) / (18.8515625f - (_383 * 18.6875f))) * 6.277394771575928f) / _374;
  //   float _413 = mad(-0.07283999770879745f, _410, mad(-0.5876560211181641f, _409, (_408 * 1.6604959964752197f)));
  //   float _416 = mad(-0.00834800023585558f, _410, mad(1.1328949928283691f, _409, (_408 * -0.12454699724912643f)));
  //   float _419 = mad(1.118751049041748f, _410, mad(-0.10059700161218643f, _409, (_408 * -0.018154000863432884f)));
  //   float _444 = 1.0f - _365.w;
  //   float _448 = (select((_413 <= 0.0031308000907301903f), (_413 * 12.920000076293945f), (((pow(_413, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _444) + _365.x;
  //   float _449 = (select((_416 <= 0.0031308000907301903f), (_416 * 12.920000076293945f), (((pow(_416, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _444) + _365.y;
  //   float _450 = (select((_419 <= 0.0031308000907301903f), (_419 * 12.920000076293945f), (((pow(_419, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _444) + _365.z;
  //   float _472 = select((_448 <= 0.0392800010740757f), (_448 * 0.07739938050508499f), exp2(log2((_448 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  //   float _473 = select((_449 <= 0.0392800010740757f), (_449 * 0.07739938050508499f), exp2(log2((_449 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  //   float _474 = select((_450 <= 0.0392800010740757f), (_450 * 0.07739938050508499f), exp2(log2((_450 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  //   float _493 = exp2(log2(mad(0.04331360012292862f, _474, mad(0.3292819857597351f, _473, (_472 * 0.627403974533081f))) * _374) * 0.1593017578125f);
  //   float _494 = exp2(log2(mad(0.012477199546992779f, _474, mad(0.9417769908905029f, _473, (_472 * 0.045745600014925f))) * _374) * 0.1593017578125f);
  //   float _495 = exp2(log2(mad(0.9836069941520691f, _474, mad(0.017604099586606026f, _473, (_472 * -0.0012105499627068639f))) * _374) * 0.1593017578125f);
  //   _521 = exp2(log2(((_493 * 18.8515625f) + 0.8359375f) / ((_493 * 18.6875f) + 1.0f)) * 78.84375f);
  //   _522 = exp2(log2(((_494 * 18.8515625f) + 0.8359375f) / ((_494 * 18.6875f) + 1.0f)) * 78.84375f);
  //   _523 = exp2(log2(((_495 * 18.8515625f) + 0.8359375f) / ((_495 * 18.6875f) + 1.0f)) * 78.84375f);
  // } else {
  //   _521 = _362;
  //   _522 = _363;
  //   _523 = _364;
  // }
  // SV_Target.x = _521;
  // SV_Target.y = _522;
  // SV_Target.z = _523;

  SV_Target.rgb = BlendUI(_365, ApplyDitheringAndFilmGrain(_283.rgb, float3(_343, _344, _345), _358, TEXCOORD.xy));
  SV_Target.w = _287;
  return SV_Target;
}
