#include "../common.hlsl"
#include "../shared.h"

Texture2D<float4> t0 : register(t0);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t2 : register(t2);

Texture3D<float4> t3 : register(t3);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t5 : register(t5);

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
  float cb0_005x : packoffset(c005.x);
  float cb0_005y : packoffset(c005.y);
  float cb0_005z : packoffset(c005.z);
  float cb0_005w : packoffset(c005.w);
  float cb0_006x : packoffset(c006.x);
  float cb0_006y : packoffset(c006.y);
  float cb0_006z : packoffset(c006.z);
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

SamplerState s5 : register(s5);

SamplerState s10 : register(s10);

SamplerState s8 : register(s8);

float4 main(
  noperspective float4 SV_Position : SV_Position,
  linear float4 TEXCOORD : TEXCOORD,
  linear float4 TEXCOORD_1 : TEXCOORD1
) : SV_Target {
  float4 SV_Target;
  float _29 = min((cb0_014x * TEXCOORD.x), cb0_009x);
  float _30 = min((cb0_014y * TEXCOORD.y), cb0_009y);
  float4 _31 = t10.SampleLevel(s10, float2(_29, _30), 0.0f);
  float4 _50 = t4.SampleLevel(s4, float2(min(_29, cb0_009x), min(_30, cb0_009y)), 0.0f);
  float _56 = cb0_000w / (_50.x - cb0_000z);
  float _62 = saturate((TEXCOORD.y * TEXCOORD.y) * cb0_006x);
  float _65 = saturate(select((_50.x <= 9.999999747378752e-06f), 1.0f, (_56 * 0.009999999776482582f)));
  float _69 = ((_65 * _65) * (1.0f - _62)) + _62;
  float4 _87 = t5.Sample(s5, float2((((cb0_005z * TEXCOORD.x) + -0.33399999141693115f) + frac(cb0_003x * cb0_006y)), (((cb0_005w * TEXCOORD.y) + -0.6669999957084656f) + frac(cb0_003x * cb0_006z))));
  float4 _106 = t5.Sample(s5, float2(((cb0_005z * TEXCOORD.x) - frac(cb0_006y * cb0_003x)), ((cb0_005w * TEXCOORD.y) - frac(cb0_006z * cb0_003x))));
  float _131 = ((((cb0_005x * _69) * cb0_002x) * cb0_002z) * (((_106.x + _87.x) * 2.0f) + -2.0f)) + TEXCOORD.x;
  float _132 = ((((cb0_005y * _69) * cb0_002y) * cb0_002w) * (((_106.y + _87.y) * 2.0f) + -2.0f)) + TEXCOORD.y;
  float _135 = (_131 + (((cb0_002x * 32.0f) * cb0_002z) * ((_31.x * 2.0f) + -1.0f))) * cb0_002z;
  float _136 = (_132 - ((cb0_002w * cb0_002y) * ((_31.y * 64.0f) + -32.0f))) * cb0_002w;
  float _140 = _131 * cb0_014x;
  float _141 = _132 * cb0_014y;
  float _145 = min(_135, cb0_009x);
  float _146 = min(_136, cb0_009y);
  float4 _147 = t0.SampleLevel(s0, float2(_145, _146), 0.0f);
  float _153 = cb0_002z * (TEXCOORD.x + -0.5f);
  float _154 = cb0_002w * (TEXCOORD.y + -0.5f);
  float _158 = sqrt((_153 * _153) + (_154 * _154));
  float _163 = ((_158 * _158) * cb0_004x * RENODX_FX_CA_STRENGTH) / _158;
  float _165 = (_153 * cb0_002x) * _163;
  float _167 = (_154 * cb0_002y) * _163;
  float4 _174 = t0.SampleLevel(s0, float2(min((_135 - _165), cb0_009x), min((_136 - _167), cb0_009y)), 0.0f);
  float4 _188 = t0.SampleLevel(s0, float2(min((_165 + _135), cb0_009x), min((_167 + _136), cb0_009y)), 0.0f);
  float _198 = ((_188.x * 0.800000011920929f) + ((_174.x + _147.x) * 0.10000000149011612f)) * TEXCOORD_1.w;
  float _199 = (((_174.y * 0.699999988079071f) + (_147.y * 0.20000000298023224f)) + (_188.y * 0.10000000149011612f)) * TEXCOORD_1.w;
  float _200 = (((_174.z * 0.20000000298023224f) + (_147.z * 0.10000000149011612f)) + (_188.z * 0.699999988079071f)) * TEXCOORD_1.w;
  float _201 = dot(float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f), float3(_198, _199, _200));
  float4 _204 = t0.SampleLevel(s0, float2(min((_135 - cb0_002x), cb0_009x), _146), 0.0f);
  float _209 = dot(float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f), float3(_204.x, _204.y, _204.z)) * TEXCOORD_1.w;
  float4 _212 = t0.SampleLevel(s0, float2(min((_135 + cb0_002x), cb0_009x), _146), 0.0f);
  float _217 = dot(float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f), float3(_212.x, _212.y, _212.z)) * TEXCOORD_1.w;
  float4 _220 = t0.SampleLevel(s0, float2(_145, min((_136 - cb0_002y), cb0_009y)), 0.0f);
  float _225 = dot(float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f), float3(_220.x, _220.y, _220.z)) * TEXCOORD_1.w;
  float4 _228 = t0.SampleLevel(s0, float2(_145, min((_136 + cb0_002y), cb0_009y)), 0.0f);
  float _233 = dot(float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f), float3(_228.x, _228.y, _228.z)) * TEXCOORD_1.w;
  float _236 = (1.0f / (_201 + 1.0f)) * _201;
  float _261 = max(0.0f, (((cb0_008x * 0.5f) * (((((_236 * 4.0f) - ((1.0f / (_209 + 1.0f)) * _209)) - ((1.0f / (_217 + 1.0f)) * _217)) - ((1.0f / (_225 + 1.0f)) * _225)) - ((1.0f / (_233 + 1.0f)) * _233))) + _236)) / max(9.999999747378752e-06f, _236);
  float _262 = _261 * _198;
  float _263 = _261 * _199;
  float _264 = _261 * _200;
  float _268 = min(_140, cb0_010x);
  float _269 = min(_141, cb0_010y);
  float4 _270 = t2.SampleLevel(s2, float2(_268, _269), 0.0f);
  float4 _281 = t2.SampleLevel(s2, float2(min((_140 - _165), cb0_010x), min((_141 - _167), cb0_010y)), 0.0f);
  float4 _295 = t2.SampleLevel(s2, float2(min((_165 + _140), cb0_010x), min((_167 + _141), cb0_010y)), 0.0f);
  float _319 = (TEXCOORD.x + -0.5f) * 3.555555582046509f;
  float _320 = (TEXCOORD.y + -0.5f) * 3.555555582046509f;
  float _323 = sqrt(dot(float2(_319, _320), float2(_319, _320))) * 0.25f * RENODX_FX_VIGNETTE_STRENGTH;
  float _325 = (_323 * _323) + 1.0f;
  float _327 = 1.0f / (_325 * _325);
  float _328 = ((((((_295.x * 0.800000011920929f) + ((_281.x + _270.x) * 0.10000000149011612f)) * TEXCOORD_1.w) - _262) * _270.w) + _262) * _327;
  float _329 = (((((((_281.y * 0.699999988079071f) + (_270.y * 0.20000000298023224f)) + (_295.y * 0.10000000149011612f)) * TEXCOORD_1.w) - _263) * _270.w) + _263) * _327;
  float _330 = (((((((_281.z * 0.20000000298023224f) + (_270.z * 0.10000000149011612f)) + (_295.z * 0.699999988079071f)) * TEXCOORD_1.w) - _264) * _270.w) + _264) * _327;
  float4 _331 = t1.SampleLevel(s1, float2(_268, _269), 0.0f);
  float _342 = saturate((_56 + -500.0f) * 0.0020000000949949026f) * 0.22499999403953552f;
  float _370 = exp2(log2(((saturate(cb0_001x + _342) * ((_331.x * 0.20000000298023224f) - _328)) + _328) * 0.009999999776482582f) * 0.1593017578125f);
  float _371 = exp2(log2(((saturate(cb0_001y + _342) * ((_331.y * 0.20000000298023224f) - _329)) + _329) * 0.009999999776482582f) * 0.1593017578125f);
  float _372 = exp2(log2(((saturate(cb0_001z + _342) * ((_331.z * 0.20000000298023224f) - _330)) + _330) * 0.009999999776482582f) * 0.1593017578125f);
  float4 _403 = t3.Sample(s3, float3(((exp2(log2(((_370 * 18.8515625f) + 0.8359375f) / ((_370 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f), ((exp2(log2(((_371 * 18.8515625f) + 0.8359375f) / ((_371 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f), ((exp2(log2(((_372 * 18.8515625f) + 0.8359375f) / ((_372 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f)));
  float _407 = dot(float3(_403.x, _403.y, _403.z), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _410 = cb0_003x * 0.0009765625f;
  float _414 = frac(abs(_410));
  float _420 = frac(TEXCOORD.x * 5.39870023727417f);
  float _421 = frac(TEXCOORD.y * 5.4421000480651855f);
  float _422 = frac(select((_410 >= (-0.0f - _410)), _414, (-0.0f - _414)) * 7103.59033203125f);
  float _426 = dot(float3(_421, _422, _420), float3((_420 + 21.53510093688965f), (_421 + 14.313699722290039f), (_422 + 15.324700355529785f)));
  float _427 = _426 + _420;
  float _428 = _426 + _421;
  float _429 = _426 + _422;
  float _430 = _427 * _428;
  float _442 = frac(_430 * 97.59010314941406f) + -0.5f;
  float _443 = frac((_429 * 93.83689880371094f) * _427) + -0.5f;
  float _444 = frac((_429 * 91.69309997558594f) * _428) + -0.5f;
  float _463 = (frac(_430 * 95.43070220947266f) + -0.5f) + ((select((_403.x < 0.0019607844296842813f), 0.0f, 1.0f) * select((_403.x > 0.998039186000824f), 0.0f, 1.0f)) * _442);
  float _464 = ((select((_403.y < 0.0019607844296842813f), 0.0f, 1.0f) * select((_403.y > 0.998039186000824f), 0.0f, 1.0f)) * _443) + _442;
  float _465 = ((select((_403.z < 0.0019607844296842813f), 0.0f, 1.0f) * select((_403.z > 0.998039186000824f), 0.0f, 1.0f)) * _444) + _443;
  float _478 = (saturate(1.0f - _407) * dot(float4(_463, _464, _465, _444), float4(0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f))) * cb0_015x;
  float _482 = saturate(((_463 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + _403.x) + _478);
  float _483 = saturate(((_464 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + _403.y) + _478);
  float _484 = saturate(((_465 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + _403.z) + _478);
  float4 _485 = t8.Sample(s8, float2(TEXCOORD.x, TEXCOORD.y));
  // float _641;
  // float _642;
  // float _643;
  // [branch]
  // if (!(_485.w < 9.999999747378752e-05f)) {
  //   float _494 = cb0_016x * 9.999999747378752e-05f;
  //   float _501 = (pow(_482, 0.012683313339948654f));
  //   float _502 = (pow(_483, 0.012683313339948654f));
  //   float _503 = (pow(_484, 0.012683313339948654f));
  //   float _528 = exp2(log2(max((_501 + -0.8359375f), 0.0f) / (18.8515625f - (_501 * 18.6875f))) * 6.277394771575928f) / _494;
  //   float _529 = exp2(log2(max((_502 + -0.8359375f), 0.0f) / (18.8515625f - (_502 * 18.6875f))) * 6.277394771575928f) / _494;
  //   float _530 = exp2(log2(max((_503 + -0.8359375f), 0.0f) / (18.8515625f - (_503 * 18.6875f))) * 6.277394771575928f) / _494;
  //   float _533 = mad(-0.07283999770879745f, _530, mad(-0.5876560211181641f, _529, (_528 * 1.6604959964752197f)));
  //   float _536 = mad(-0.00834800023585558f, _530, mad(1.1328949928283691f, _529, (_528 * -0.12454699724912643f)));
  //   float _539 = mad(1.118751049041748f, _530, mad(-0.10059700161218643f, _529, (_528 * -0.018154000863432884f)));
  //   float _564 = 1.0f - _485.w;
  //   float _568 = (select((_533 <= 0.0031308000907301903f), (_533 * 12.920000076293945f), (((pow(_533, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _564) + _485.x;
  //   float _569 = (select((_536 <= 0.0031308000907301903f), (_536 * 12.920000076293945f), (((pow(_536, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _564) + _485.y;
  //   float _570 = (select((_539 <= 0.0031308000907301903f), (_539 * 12.920000076293945f), (((pow(_539, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _564) + _485.z;
  //   float _592 = select((_568 <= 0.0392800010740757f), (_568 * 0.07739938050508499f), exp2(log2((_568 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  //   float _593 = select((_569 <= 0.0392800010740757f), (_569 * 0.07739938050508499f), exp2(log2((_569 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  //   float _594 = select((_570 <= 0.0392800010740757f), (_570 * 0.07739938050508499f), exp2(log2((_570 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  //   float _613 = exp2(log2(mad(0.04331360012292862f, _594, mad(0.3292819857597351f, _593, (_592 * 0.627403974533081f))) * _494) * 0.1593017578125f);
  //   float _614 = exp2(log2(mad(0.012477199546992779f, _594, mad(0.9417769908905029f, _593, (_592 * 0.045745600014925f))) * _494) * 0.1593017578125f);
  //   float _615 = exp2(log2(mad(0.9836069941520691f, _594, mad(0.017604099586606026f, _593, (_592 * -0.0012105499627068639f))) * _494) * 0.1593017578125f);
  //   _641 = exp2(log2(((_613 * 18.8515625f) + 0.8359375f) / ((_613 * 18.6875f) + 1.0f)) * 78.84375f);
  //   _642 = exp2(log2(((_614 * 18.8515625f) + 0.8359375f) / ((_614 * 18.6875f) + 1.0f)) * 78.84375f);
  //   _643 = exp2(log2(((_615 * 18.8515625f) + 0.8359375f) / ((_615 * 18.6875f) + 1.0f)) * 78.84375f);
  // } else {
  //   _641 = _482;
  //   _642 = _483;
  //   _643 = _484;
  // }
  // SV_Target.x = _641;
  // SV_Target.y = _642;
  // SV_Target.z = _643;

  SV_Target.rgb = BlendUI(_485, float3(_482, _483, _484));
  SV_Target.w = _407;
  return SV_Target;
}
