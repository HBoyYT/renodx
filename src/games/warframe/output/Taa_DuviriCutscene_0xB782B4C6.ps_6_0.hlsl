#include "../common.hlsl"
#include "../shared.h"

Texture2D<float4> t0 : register(t0);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t2 : register(t2);

Texture3D<float4> t3 : register(t3);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

cbuffer cb0 : register(b0) {
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
  float cb0_006x : packoffset(c006.x);
  float cb0_006y : packoffset(c006.y);
  float cb0_007x : packoffset(c007.x);
  float cb0_007y : packoffset(c007.y);
  float cb0_008x : packoffset(c008.x);
  float cb0_008y : packoffset(c008.y);
  float cb0_009x : packoffset(c009.x);
  float cb0_010x : packoffset(c010.x);
};

SamplerState s0 : register(s0);

SamplerState s1 : register(s1);

SamplerState s2 : register(s2);

SamplerState s3 : register(s3);

SamplerState s5 : register(s5);

SamplerState s9 : register(s9);

SamplerState s7 : register(s7);

SamplerState s6 : register(s6);

float4 main(
  noperspective float4 SV_Position : SV_Position,
  linear float4 TEXCOORD : TEXCOORD,
  linear float4 TEXCOORD_1 : TEXCOORD1
) : SV_Target {
  float4 SV_Target;
  float4 _31 = t9.SampleLevel(s9, float2(min((cb0_002z * TEXCOORD.x), cb0_006x), min((cb0_002w * TEXCOORD.y), cb0_006y)), 0.0f);
  float _47 = ((((cb0_002x * 32.0f) * cb0_002z) * ((_31.x * 2.0f) + -1.0f)) + TEXCOORD.x) * cb0_002z;
  float _48 = (TEXCOORD.y - ((cb0_002w * cb0_002y) * ((_31.y * 64.0f) + -32.0f))) * cb0_002w;
  float4 _51 = t6.SampleLevel(s6, float2(min(_47, cb0_006x), min(_48, cb0_006y)), 0.0f);
  float _54 = floor(_51.x * 3.0f);
  float _61 = abs(frac((_54 * 0.012000000104308128f) + _47));
  float _62 = abs(frac((_54 * 0.0020000000949949026f) + _48));
  float4 _65 = t6.SampleLevel(s6, float2(min(_61, cb0_006x), min(_62, cb0_006y)), 0.0f);
  float _68 = floor(_65.x * 4.0f);
  float _75 = abs(frac(_61 - (_68 * 0.009999999776482582f)));
  float _76 = abs(frac(_62 - (_68 * 0.007699999958276749f)));
  float _81 = cb0_008x * TEXCOORD.x;
  float _82 = cb0_008y * TEXCOORD.y;
  float _83 = min(_75, cb0_006x);
  float _84 = min(_76, cb0_006y);
  float4 _85 = t0.SampleLevel(s0, float2(_83, _84), 0.0f);
  float _91 = cb0_002z * (TEXCOORD.x + -0.5f);
  float _92 = cb0_002w * (TEXCOORD.y + -0.5f);
  float _96 = sqrt((_91 * _91) + (_92 * _92));
  float _101 = ((_96 * _96) * cb0_004x * RENODX_FX_CA_STRENGTH) / _96;
  float _103 = (_91 * cb0_002x) * _101;
  float _105 = (_92 * cb0_002y) * _101;
  float4 _112 = t0.SampleLevel(s0, float2(min((_75 - _103), cb0_006x), min((_76 - _105), cb0_006y)), 0.0f);
  float4 _126 = t0.SampleLevel(s0, float2(min((_103 + _75), cb0_006x), min((_105 + _76), cb0_006y)), 0.0f);
  float _136 = ((_126.x * 0.800000011920929f) + ((_112.x + _85.x) * 0.10000000149011612f)) * TEXCOORD_1.w;
  float _137 = (((_112.y * 0.699999988079071f) + (_85.y * 0.20000000298023224f)) + (_126.y * 0.10000000149011612f)) * TEXCOORD_1.w;
  float _138 = (((_112.z * 0.20000000298023224f) + (_85.z * 0.10000000149011612f)) + (_126.z * 0.699999988079071f)) * TEXCOORD_1.w;
  float _139 = dot(float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f), float3(_136, _137, _138));
  float4 _142 = t0.SampleLevel(s0, float2(min((_75 - cb0_002x), cb0_006x), _84), 0.0f);
  float _147 = dot(float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f), float3(_142.x, _142.y, _142.z)) * TEXCOORD_1.w;
  float4 _150 = t0.SampleLevel(s0, float2(min((_75 + cb0_002x), cb0_006x), _84), 0.0f);
  float _155 = dot(float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f), float3(_150.x, _150.y, _150.z)) * TEXCOORD_1.w;
  float4 _158 = t0.SampleLevel(s0, float2(_83, min((_76 - cb0_002y), cb0_006y)), 0.0f);
  float _163 = dot(float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f), float3(_158.x, _158.y, _158.z)) * TEXCOORD_1.w;
  float4 _166 = t0.SampleLevel(s0, float2(_83, min((_76 + cb0_002y), cb0_006y)), 0.0f);
  float _171 = dot(float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f), float3(_166.x, _166.y, _166.z)) * TEXCOORD_1.w;
  float _174 = (1.0f / (_139 + 1.0f)) * _139;
  float _199 = max(0.0f, (((cb0_005x * 0.5f) * (((((_174 * 4.0f) - ((1.0f / (_147 + 1.0f)) * _147)) - ((1.0f / (_155 + 1.0f)) * _155)) - ((1.0f / (_163 + 1.0f)) * _163)) - ((1.0f / (_171 + 1.0f)) * _171))) + _174)) / max(9.999999747378752e-06f, _174);
  float _200 = _199 * _136;
  float _201 = _199 * _137;
  float _202 = _199 * _138;
  float _206 = min(_81, cb0_007x);
  float _207 = min(_82, cb0_007y);
  float4 _208 = t2.SampleLevel(s2, float2(_206, _207), 0.0f);
  float4 _219 = t2.SampleLevel(s2, float2(min((_81 - _103), cb0_007x), min((_82 - _105), cb0_007y)), 0.0f);
  float4 _233 = t2.SampleLevel(s2, float2(min((_103 + _81), cb0_007x), min((_105 + _82), cb0_007y)), 0.0f);
  float4 _255 = t1.SampleLevel(s1, float2(_206, _207), 0.0f);
  float _278 = exp2(log2((((((((_233.x * 0.800000011920929f) + ((_219.x + _208.x) * 0.10000000149011612f)) * TEXCOORD_1.w) - _200) * _208.w) + _200) + (shader_injection.fx_bloom_strength * _255.x)) * 0.009999999776482582f) * 0.1593017578125f);
  float _279 = exp2(log2(((((((((_219.y * 0.699999988079071f) + (_208.y * 0.20000000298023224f)) + (_233.y * 0.10000000149011612f)) * TEXCOORD_1.w) - _201) * _208.w) + _201) + (shader_injection.fx_bloom_strength * _255.y)) * 0.009999999776482582f) * 0.1593017578125f);
  float _280 = exp2(log2(((((((((_219.z * 0.20000000298023224f) + (_208.z * 0.10000000149011612f)) + (_233.z * 0.699999988079071f)) * TEXCOORD_1.w) - _202) * _208.w) + _202) + (shader_injection.fx_bloom_strength * _255.z)) * 0.009999999776482582f) * 0.1593017578125f);
  float4 _311 = t3.Sample(s3, float3(((exp2(log2(((_278 * 18.8515625f) + 0.8359375f) / ((_278 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f), ((exp2(log2(((_279 * 18.8515625f) + 0.8359375f) / ((_279 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f), ((exp2(log2(((_280 * 18.8515625f) + 0.8359375f) / ((_280 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f)));
  float _315 = dot(float3(_311.x, _311.y, _311.z), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _317 = saturate(max(_51.x, _65.x)) * 0.75f;
  float4 _332 = t6.SampleLevel(s6, float2(min(_75, cb0_006x), min(_76, cb0_006y)), 0.0f);
  float _334 = _75 + 0.5f;
  float _335 = _76 + -0.5f;
  float _337 = rsqrt(dot(float3(_334, _335, 0.0f), float3(_334, _335, 0.0f)));
  float _338 = _337 * _334;
  float _339 = _337 * _335;
  float _342 = cb0_003x * 0.05999999865889549f;
  float4 _347 = t5.SampleLevel(s5, float2(min((_342 + _75), cb0_006x), min((_342 + _76), cb0_006y)), 0.0f);
  float _349 = _347.x * 0.001953125f;
  float _351 = (_339 * _339) * _349;
  float _353 = (_338 * _338) * _349;
  float _354 = _351 + _75;
  float _355 = _353 + _76;
  float4 _358 = t6.SampleLevel(s6, float2(min(_354, cb0_006x), min(_355, cb0_006y)), 0.0f);
  float _364 = _354 + _351;
  float _365 = _355 + _353;
  float4 _368 = t6.SampleLevel(s6, float2(min(_364, cb0_006x), min(_365, cb0_006y)), 0.0f);
  float _375 = _364 + _351;
  float _376 = _365 + _353;
  float4 _379 = t6.SampleLevel(s6, float2(min(_375, cb0_006x), min(_376, cb0_006y)), 0.0f);
  float _386 = _375 + _351;
  float _387 = _376 + _353;
  float4 _390 = t6.SampleLevel(s6, float2(min(_386, cb0_006x), min(_387, cb0_006y)), 0.0f);
  float _397 = _386 + _351;
  float _398 = _387 + _353;
  float4 _401 = t6.SampleLevel(s6, float2(min(_397, cb0_006x), min(_398, cb0_006y)), 0.0f);
  float _408 = _397 + _351;
  float _409 = _398 + _353;
  float4 _412 = t6.SampleLevel(s6, float2(min(_408, cb0_006x), min(_409, cb0_006y)), 0.0f);
  float _419 = _408 + _351;
  float _420 = _409 + _353;
  float4 _423 = t6.SampleLevel(s6, float2(min(_419, cb0_006x), min(_420, cb0_006y)), 0.0f);
  float4 _434 = t6.SampleLevel(s6, float2(min((_419 + _351), cb0_006x), min((_420 + _353), cb0_006y)), 0.0f);
  float _443 = saturate(1.0f - ((((((((saturate(abs(_332.x - _368.x) + -0.014999999664723873f) + saturate(abs(_332.x - _358.x) + -0.014999999664723873f)) + saturate(abs(_332.x - _379.x) + -0.014999999664723873f)) + saturate(abs(_332.x - _390.x) + -0.014999999664723873f)) + saturate(abs(_332.x - _401.x) + -0.014999999664723873f)) + saturate(abs(_332.x - _412.x) + -0.014999999664723873f)) + saturate(abs(_332.x - _423.x) + -0.014999999664723873f)) + saturate(abs(_332.x - _434.x) + -0.014999999664723873f)) * 0.25f));
  float _445 = (_443 * _443) * _443;
  float _446 = _445 * ((_317 * (_315 - _311.x)) + _311.x);
  float _447 = _445 * ((_317 * (_315 - _311.y)) + _311.y);
  float _448 = _445 * ((_317 * (_315 - _311.z)) + _311.z);
  float _449 = cb0_003x * 0.0009765625f;
  float _453 = frac(abs(_449));
  float _459 = frac(TEXCOORD.x * 5.39870023727417f);
  float _460 = frac(TEXCOORD.y * 5.4421000480651855f);
  float _461 = frac(select((_449 >= (-0.0f - _449)), _453, (-0.0f - _453)) * 7103.59033203125f);
  float _465 = dot(float3(_460, _461, _459), float3((_459 + 21.53510093688965f), (_460 + 14.313699722290039f), (_461 + 15.324700355529785f)));
  float _466 = _465 + _459;
  float _467 = _465 + _460;
  float _468 = _465 + _461;
  float _469 = _466 * _467;
  float _481 = frac(_469 * 97.59010314941406f) + -0.5f;
  float _482 = frac((_468 * 93.83689880371094f) * _466) + -0.5f;
  float _483 = frac((_468 * 91.69309997558594f) * _467) + -0.5f;
  float _502 = (frac(_469 * 95.43070220947266f) + -0.5f) + ((select((_446 < 0.0019607844296842813f), 0.0f, 1.0f) * select((_446 > 0.998039186000824f), 0.0f, 1.0f)) * _481);
  float _503 = ((select((_447 < 0.0019607844296842813f), 0.0f, 1.0f) * select((_447 > 0.998039186000824f), 0.0f, 1.0f)) * _482) + _481;
  float _504 = ((select((_448 < 0.0019607844296842813f), 0.0f, 1.0f) * select((_448 > 0.998039186000824f), 0.0f, 1.0f)) * _483) + _482;
  float _517 = (saturate(1.0f - _315) * dot(float4(_502, _503, _504, _483), float4(0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f))) * cb0_009x;
  float _521 = saturate(((_502 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + _446) + _517);
  float _522 = saturate(((_503 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + _447) + _517);
  float _523 = saturate(((_504 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + _448) + _517);
  float4 _524 = t7.Sample(s7, float2(TEXCOORD.x, TEXCOORD.y));
  // float _680;
  // float _681;
  // float _682;
  // [branch]
  // if (!(_524.w < 9.999999747378752e-05f)) {
  //   float _533 = cb0_010x * 9.999999747378752e-05f;
  //   float _540 = (pow(_521, 0.012683313339948654f));
  //   float _541 = (pow(_522, 0.012683313339948654f));
  //   float _542 = (pow(_523, 0.012683313339948654f));
  //   float _567 = exp2(log2(max((_540 + -0.8359375f), 0.0f) / (18.8515625f - (_540 * 18.6875f))) * 6.277394771575928f) / _533;
  //   float _568 = exp2(log2(max((_541 + -0.8359375f), 0.0f) / (18.8515625f - (_541 * 18.6875f))) * 6.277394771575928f) / _533;
  //   float _569 = exp2(log2(max((_542 + -0.8359375f), 0.0f) / (18.8515625f - (_542 * 18.6875f))) * 6.277394771575928f) / _533;
  //   float _572 = mad(-0.07283999770879745f, _569, mad(-0.5876560211181641f, _568, (_567 * 1.6604959964752197f)));
  //   float _575 = mad(-0.00834800023585558f, _569, mad(1.1328949928283691f, _568, (_567 * -0.12454699724912643f)));
  //   float _578 = mad(1.118751049041748f, _569, mad(-0.10059700161218643f, _568, (_567 * -0.018154000863432884f)));
  //   float _603 = 1.0f - _524.w;
  //   float _607 = (select((_572 <= 0.0031308000907301903f), (_572 * 12.920000076293945f), (((pow(_572, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _603) + _524.x;
  //   float _608 = (select((_575 <= 0.0031308000907301903f), (_575 * 12.920000076293945f), (((pow(_575, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _603) + _524.y;
  //   float _609 = (select((_578 <= 0.0031308000907301903f), (_578 * 12.920000076293945f), (((pow(_578, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _603) + _524.z;
  //   float _631 = select((_607 <= 0.0392800010740757f), (_607 * 0.07739938050508499f), exp2(log2((_607 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  //   float _632 = select((_608 <= 0.0392800010740757f), (_608 * 0.07739938050508499f), exp2(log2((_608 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  //   float _633 = select((_609 <= 0.0392800010740757f), (_609 * 0.07739938050508499f), exp2(log2((_609 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  //   float _652 = exp2(log2(mad(0.04331360012292862f, _633, mad(0.3292819857597351f, _632, (_631 * 0.627403974533081f))) * _533) * 0.1593017578125f);
  //   float _653 = exp2(log2(mad(0.012477199546992779f, _633, mad(0.9417769908905029f, _632, (_631 * 0.045745600014925f))) * _533) * 0.1593017578125f);
  //   float _654 = exp2(log2(mad(0.9836069941520691f, _633, mad(0.017604099586606026f, _632, (_631 * -0.0012105499627068639f))) * _533) * 0.1593017578125f);
  //   _680 = exp2(log2(((_652 * 18.8515625f) + 0.8359375f) / ((_652 * 18.6875f) + 1.0f)) * 78.84375f);
  //   _681 = exp2(log2(((_653 * 18.8515625f) + 0.8359375f) / ((_653 * 18.6875f) + 1.0f)) * 78.84375f);
  //   _682 = exp2(log2(((_654 * 18.8515625f) + 0.8359375f) / ((_654 * 18.6875f) + 1.0f)) * 78.84375f);
  // } else {
  //   _680 = _521;
  //   _681 = _522;
  //   _682 = _523;
  // }
  // SV_Target.x = _680;
  // SV_Target.y = _681;
  // SV_Target.z = _682;

  SV_Target.rgb = BlendUI(_524, ApplyDitheringAndFilmGrain(float3(_446, _447, _448), float3(_502, _503, _504), _517, TEXCOORD.xy));
  SV_Target.w = _315;
  return SV_Target;
}
