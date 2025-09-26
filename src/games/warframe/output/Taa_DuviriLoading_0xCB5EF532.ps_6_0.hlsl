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
  float _228 = (((((_209.x * 0.800000011920929f) + ((_195.x + _184.x) * 0.10000000149011612f)) * TEXCOORD_1.w) - _176) * _184.w) + _176;
  float _229 = ((((((_195.y * 0.699999988079071f) + (_184.y * 0.20000000298023224f)) + (_209.y * 0.10000000149011612f)) * TEXCOORD_1.w) - _177) * _184.w) + _177;
  float _230 = ((((((_195.z * 0.20000000298023224f) + (_184.z * 0.10000000149011612f)) + (_209.z * 0.699999988079071f)) * TEXCOORD_1.w) - _178) * _184.w) + _178;
  float4 _231 = t1.SampleLevel(s1, float2(_182, _183), 0.0f);
  float _242 = saturate(((cb0_000w / (_48.x - cb0_000z)) + -500.0f) * 0.0020000000949949026f) * 0.22499999403953552f;
  float _270 = exp2(log2(((saturate(cb0_001x + _242) * ((_231.x * 0.20000000298023224f) - _228)) + _228) * 0.009999999776482582f) * 0.1593017578125f);
  float _271 = exp2(log2(((saturate(cb0_001y + _242) * ((_231.y * 0.20000000298023224f) - _229)) + _229) * 0.009999999776482582f) * 0.1593017578125f);
  float _272 = exp2(log2(((saturate(cb0_001z + _242) * ((_231.z * 0.20000000298023224f) - _230)) + _230) * 0.009999999776482582f) * 0.1593017578125f);
  float4 _303 = t3.Sample(s3, float3(((exp2(log2(((_270 * 18.8515625f) + 0.8359375f) / ((_270 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f), ((exp2(log2(((_271 * 18.8515625f) + 0.8359375f) / ((_271 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f), ((exp2(log2(((_272 * 18.8515625f) + 0.8359375f) / ((_272 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f)));
  float _307 = dot(float3(_303.x, _303.y, _303.z), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _310 = cb0_003x * 0.0009765625f;
  float _314 = frac(abs(_310));
  float _320 = frac(TEXCOORD.x * 5.39870023727417f);
  float _321 = frac(TEXCOORD.y * 5.4421000480651855f);
  float _322 = frac(select((_310 >= (-0.0f - _310)), _314, (-0.0f - _314)) * 7103.59033203125f);
  float _326 = dot(float3(_321, _322, _320), float3((_320 + 21.53510093688965f), (_321 + 14.313699722290039f), (_322 + 15.324700355529785f)));
  float _327 = _326 + _320;
  float _328 = _326 + _321;
  float _329 = _326 + _322;
  float _330 = _327 * _328;
  float _342 = frac(_330 * 97.59010314941406f) + -0.5f;
  float _343 = frac((_329 * 93.83689880371094f) * _327) + -0.5f;
  float _344 = frac((_329 * 91.69309997558594f) * _328) + -0.5f;
  float _363 = (frac(_330 * 95.43070220947266f) + -0.5f) + ((select((_303.x < 0.0019607844296842813f), 0.0f, 1.0f) * select((_303.x > 0.998039186000824f), 0.0f, 1.0f)) * _342);
  float _364 = ((select((_303.y < 0.0019607844296842813f), 0.0f, 1.0f) * select((_303.y > 0.998039186000824f), 0.0f, 1.0f)) * _343) + _342;
  float _365 = ((select((_303.z < 0.0019607844296842813f), 0.0f, 1.0f) * select((_303.z > 0.998039186000824f), 0.0f, 1.0f)) * _344) + _343;
  float _378 = (saturate(1.0f - _307) * dot(float4(_363, _364, _365, _344), float4(0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f))) * cb0_015x;
  float _382 = saturate(((_363 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + _303.x) + _378);
  float _383 = saturate(((_364 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + _303.y) + _378);
  float _384 = saturate(((_365 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + _303.z) + _378);
  float4 _385 = t8.Sample(s8, float2(TEXCOORD.x, TEXCOORD.y));
  // float _541;
  // float _542;
  // float _543;
  // [branch]
  // if (!(_385.w < 9.999999747378752e-05f)) {
  //   float _394 = cb0_016x * 9.999999747378752e-05f;
  //   float _401 = (pow(_382, 0.012683313339948654f));
  //   float _402 = (pow(_383, 0.012683313339948654f));
  //   float _403 = (pow(_384, 0.012683313339948654f));
  //   float _428 = exp2(log2(max((_401 + -0.8359375f), 0.0f) / (18.8515625f - (_401 * 18.6875f))) * 6.277394771575928f) / _394;
  //   float _429 = exp2(log2(max((_402 + -0.8359375f), 0.0f) / (18.8515625f - (_402 * 18.6875f))) * 6.277394771575928f) / _394;
  //   float _430 = exp2(log2(max((_403 + -0.8359375f), 0.0f) / (18.8515625f - (_403 * 18.6875f))) * 6.277394771575928f) / _394;
  //   float _433 = mad(-0.07283999770879745f, _430, mad(-0.5876560211181641f, _429, (_428 * 1.6604959964752197f)));
  //   float _436 = mad(-0.00834800023585558f, _430, mad(1.1328949928283691f, _429, (_428 * -0.12454699724912643f)));
  //   float _439 = mad(1.118751049041748f, _430, mad(-0.10059700161218643f, _429, (_428 * -0.018154000863432884f)));
  //   float _464 = 1.0f - _385.w;
  //   float _468 = (select((_433 <= 0.0031308000907301903f), (_433 * 12.920000076293945f), (((pow(_433, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _464) + _385.x;
  //   float _469 = (select((_436 <= 0.0031308000907301903f), (_436 * 12.920000076293945f), (((pow(_436, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _464) + _385.y;
  //   float _470 = (select((_439 <= 0.0031308000907301903f), (_439 * 12.920000076293945f), (((pow(_439, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _464) + _385.z;
  //   float _492 = select((_468 <= 0.0392800010740757f), (_468 * 0.07739938050508499f), exp2(log2((_468 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  //   float _493 = select((_469 <= 0.0392800010740757f), (_469 * 0.07739938050508499f), exp2(log2((_469 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  //   float _494 = select((_470 <= 0.0392800010740757f), (_470 * 0.07739938050508499f), exp2(log2((_470 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  //   float _513 = exp2(log2(mad(0.04331360012292862f, _494, mad(0.3292819857597351f, _493, (_492 * 0.627403974533081f))) * _394) * 0.1593017578125f);
  //   float _514 = exp2(log2(mad(0.012477199546992779f, _494, mad(0.9417769908905029f, _493, (_492 * 0.045745600014925f))) * _394) * 0.1593017578125f);
  //   float _515 = exp2(log2(mad(0.9836069941520691f, _494, mad(0.017604099586606026f, _493, (_492 * -0.0012105499627068639f))) * _394) * 0.1593017578125f);
  //   _541 = exp2(log2(((_513 * 18.8515625f) + 0.8359375f) / ((_513 * 18.6875f) + 1.0f)) * 78.84375f);
  //   _542 = exp2(log2(((_514 * 18.8515625f) + 0.8359375f) / ((_514 * 18.6875f) + 1.0f)) * 78.84375f);
  //   _543 = exp2(log2(((_515 * 18.8515625f) + 0.8359375f) / ((_515 * 18.6875f) + 1.0f)) * 78.84375f);
  // } else {
  //   _541 = _382;
  //   _542 = _383;
  //   _543 = _384;
  // }
  // SV_Target.x = _541;
  // SV_Target.y = _542;
  // SV_Target.z = _543;

  SV_Target.rgb = BlendUI(_385, ApplyDitheringAndFilmGrain(_303.rgb, float3(_363, _364, _365), _378, TEXCOORD.xy));
  SV_Target.w = _307;
  return SV_Target;
}
