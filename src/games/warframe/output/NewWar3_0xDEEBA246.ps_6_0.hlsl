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
  float4 _147 = t0.SampleLevel(s0, float2(min(_135, cb0_009x), min(_136, cb0_009y)), 0.0f);
  float _153 = cb0_002z * (TEXCOORD.x + -0.5f);
  float _154 = cb0_002w * (TEXCOORD.y + -0.5f);
  float _158 = sqrt((_153 * _153) + (_154 * _154));
  float _163 = ((_158 * _158) * cb0_004x * RENODX_FX_CA_STRENGTH) / _158;
  float _165 = (_153 * cb0_002x) * _163;
  float _167 = (_154 * cb0_002y) * _163;
  float4 _174 = t0.SampleLevel(s0, float2(min((_135 - _165), cb0_009x), min((_136 - _167), cb0_009y)), 0.0f);
  float4 _188 = t0.SampleLevel(s0, float2(min((_165 + _135), cb0_009x), min((_167 + _136), cb0_009y)), 0.0f);
  float _195 = (_188.x * 0.800000011920929f) + ((_174.x + _147.x) * 0.10000000149011612f);
  float _196 = ((_174.y * 0.699999988079071f) + (_147.y * 0.20000000298023224f)) + (_188.y * 0.10000000149011612f);
  float _197 = ((_174.z * 0.20000000298023224f) + (_147.z * 0.10000000149011612f)) + (_188.z * 0.699999988079071f);
  float _201 = min(_140, cb0_010x);
  float _202 = min(_141, cb0_010y);
  float4 _203 = t2.SampleLevel(s2, float2(_201, _202), 0.0f);
  float4 _214 = t2.SampleLevel(s2, float2(min((_140 - _165), cb0_010x), min((_141 - _167), cb0_010y)), 0.0f);
  float4 _226 = t2.SampleLevel(s2, float2(min((_165 + _140), cb0_010x), min((_167 + _141), cb0_010y)), 0.0f);
  float _249 = (TEXCOORD.x + -0.5f) * 3.555555582046509f;
  float _250 = (TEXCOORD.y + -0.5f) * 3.555555582046509f;
  float _253 = sqrt(dot(float2(_249, _250), float2(_249, _250))) * 0.25f * RENODX_FX_VIGNETTE_STRENGTH;
  float _255 = (_253 * _253) + 1.0f;
  float _258 = (1.0f / (_255 * _255)) * TEXCOORD_1.w;
  float _259 = ((((((_214.x + _203.x) * 0.10000000149011612f) - _195) + (_226.x * 0.800000011920929f)) * _203.w) + _195) * _258;
  float _260 = ((((((_203.y * 0.20000000298023224f) - _196) + (_214.y * 0.699999988079071f)) + (_226.y * 0.10000000149011612f)) * _203.w) + _196) * _258;
  float _261 = ((((((_203.z * 0.10000000149011612f) - _197) + (_214.z * 0.20000000298023224f)) + (_226.z * 0.699999988079071f)) * _203.w) + _197) * _258;
  float4 _262 = t1.SampleLevel(s1, float2(_201, _202), 0.0f);
  float _273 = saturate((_56 + -500.0f) * 0.0020000000949949026f) * 0.22499999403953552f;
  float _301 = exp2(log2(((saturate(shader_injection.fx_bloom_strength + _273) * ((_262.x * 0.20000000298023224f) - _259)) + _259) * 0.009999999776482582f) * 0.1593017578125f);
  float _302 = exp2(log2(((saturate(shader_injection.fx_bloom_strength + _273) * ((_262.y * 0.20000000298023224f) - _260)) + _260) * 0.009999999776482582f) * 0.1593017578125f);
  float _303 = exp2(log2(((saturate(shader_injection.fx_bloom_strength + _273) * ((_262.z * 0.20000000298023224f) - _261)) + _261) * 0.009999999776482582f) * 0.1593017578125f);
  float4 _334 = t3.Sample(s3, float3(((exp2(log2(((_301 * 18.8515625f) + 0.8359375f) / ((_301 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f), ((exp2(log2(((_302 * 18.8515625f) + 0.8359375f) / ((_302 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f), ((exp2(log2(((_303 * 18.8515625f) + 0.8359375f) / ((_303 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f)));
  float _338 = dot(float3(_334.x, _334.y, _334.z), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _341 = cb0_003x * 0.0009765625f;
  float _345 = frac(abs(_341));
  float _351 = frac(TEXCOORD.x * 5.39870023727417f);
  float _352 = frac(TEXCOORD.y * 5.4421000480651855f);
  float _353 = frac(select((_341 >= (-0.0f - _341)), _345, (-0.0f - _345)) * 7103.59033203125f);
  float _357 = dot(float3(_352, _353, _351), float3((_351 + 21.53510093688965f), (_352 + 14.313699722290039f), (_353 + 15.324700355529785f)));
  float _358 = _357 + _351;
  float _359 = _357 + _352;
  float _360 = _357 + _353;
  float _361 = _358 * _359;
  float _373 = frac(_361 * 97.59010314941406f) + -0.5f;
  float _374 = frac((_360 * 93.83689880371094f) * _358) + -0.5f;
  float _375 = frac((_360 * 91.69309997558594f) * _359) + -0.5f;
  float _394 = (frac(_361 * 95.43070220947266f) + -0.5f) + ((select((_334.x < 0.0019607844296842813f), 0.0f, 1.0f) * select((_334.x > 0.998039186000824f), 0.0f, 1.0f)) * _373);
  float _395 = ((select((_334.y < 0.0019607844296842813f), 0.0f, 1.0f) * select((_334.y > 0.998039186000824f), 0.0f, 1.0f)) * _374) + _373;
  float _396 = ((select((_334.z < 0.0019607844296842813f), 0.0f, 1.0f) * select((_334.z > 0.998039186000824f), 0.0f, 1.0f)) * _375) + _374;
  float _409 = (saturate(1.0f - _338) * dot(float4(_394, _395, _396, _375), float4(0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f))) * cb0_015x;
  float _413 = saturate(((_394 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + _334.x) + _409);
  float _414 = saturate(((_395 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + _334.y) + _409);
  float _415 = saturate(((_396 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + _334.z) + _409);
  float4 _416 = t8.Sample(s8, float2(TEXCOORD.x, TEXCOORD.y));
  // float _572;
  // float _573;
  // float _574;
  // [branch]
  // if (!(_416.w < 9.999999747378752e-05f)) {
  //   float _425 = cb0_016x * 9.999999747378752e-05f;
  //   float _432 = (pow(_413, 0.012683313339948654f));
  //   float _433 = (pow(_414, 0.012683313339948654f));
  //   float _434 = (pow(_415, 0.012683313339948654f));
  //   float _459 = exp2(log2(max((_432 + -0.8359375f), 0.0f) / (18.8515625f - (_432 * 18.6875f))) * 6.277394771575928f) / _425;
  //   float _460 = exp2(log2(max((_433 + -0.8359375f), 0.0f) / (18.8515625f - (_433 * 18.6875f))) * 6.277394771575928f) / _425;
  //   float _461 = exp2(log2(max((_434 + -0.8359375f), 0.0f) / (18.8515625f - (_434 * 18.6875f))) * 6.277394771575928f) / _425;
  //   float _464 = mad(-0.07283999770879745f, _461, mad(-0.5876560211181641f, _460, (_459 * 1.6604959964752197f)));
  //   float _467 = mad(-0.00834800023585558f, _461, mad(1.1328949928283691f, _460, (_459 * -0.12454699724912643f)));
  //   float _470 = mad(1.118751049041748f, _461, mad(-0.10059700161218643f, _460, (_459 * -0.018154000863432884f)));
  //   float _495 = 1.0f - _416.w;
  //   float _499 = (select((_464 <= 0.0031308000907301903f), (_464 * 12.920000076293945f), (((pow(_464, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _495) + _416.x;
  //   float _500 = (select((_467 <= 0.0031308000907301903f), (_467 * 12.920000076293945f), (((pow(_467, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _495) + _416.y;
  //   float _501 = (select((_470 <= 0.0031308000907301903f), (_470 * 12.920000076293945f), (((pow(_470, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _495) + _416.z;
  //   float _523 = select((_499 <= 0.0392800010740757f), (_499 * 0.07739938050508499f), exp2(log2((_499 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  //   float _524 = select((_500 <= 0.0392800010740757f), (_500 * 0.07739938050508499f), exp2(log2((_500 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  //   float _525 = select((_501 <= 0.0392800010740757f), (_501 * 0.07739938050508499f), exp2(log2((_501 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  //   float _544 = exp2(log2(mad(0.04331360012292862f, _525, mad(0.3292819857597351f, _524, (_523 * 0.627403974533081f))) * _425) * 0.1593017578125f);
  //   float _545 = exp2(log2(mad(0.012477199546992779f, _525, mad(0.9417769908905029f, _524, (_523 * 0.045745600014925f))) * _425) * 0.1593017578125f);
  //   float _546 = exp2(log2(mad(0.9836069941520691f, _525, mad(0.017604099586606026f, _524, (_523 * -0.0012105499627068639f))) * _425) * 0.1593017578125f);
  //   _572 = exp2(log2(((_544 * 18.8515625f) + 0.8359375f) / ((_544 * 18.6875f) + 1.0f)) * 78.84375f);
  //   _573 = exp2(log2(((_545 * 18.8515625f) + 0.8359375f) / ((_545 * 18.6875f) + 1.0f)) * 78.84375f);
  //   _574 = exp2(log2(((_546 * 18.8515625f) + 0.8359375f) / ((_546 * 18.6875f) + 1.0f)) * 78.84375f);
  // } else {
  //   _572 = _413;
  //   _573 = _414;
  //   _574 = _415;
  // }
  // SV_Target.x = _572;
  // SV_Target.y = _573;
  // SV_Target.z = _574;

  SV_Target.rgb = BlendUI(_416, ApplyDitheringAndFilmGrain(_334.rgb, float3(_394, _395, _396), _409, TEXCOORD.xy));
  SV_Target.w = _338;
  return SV_Target;
}
