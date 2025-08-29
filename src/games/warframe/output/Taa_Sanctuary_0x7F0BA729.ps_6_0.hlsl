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
  float _96 = min(_92, cb0_009x);
  float _97 = min(_93, cb0_009y);
  float4 _98 = t0.SampleLevel(s0, float2(_96, _97), 0.0f);
  float _104 = (_88 + -0.5f) * cb0_002z;
  float _105 = (_89 + -0.5f) * cb0_002w;
  float _109 = sqrt((_104 * _104) + (_105 * _105));
  float _114 = ((_109 * _109) * cb0_004x * RENODX_FX_CA_STRENGTH) / _109;
  float _116 = (_104 * cb0_002x) * _114;
  float _118 = (_105 * cb0_002y) * _114;
  float4 _125 = t0.SampleLevel(s0, float2(min((_92 - _116), cb0_009x), min((_93 - _118), cb0_009y)), 0.0f);
  float4 _139 = t0.SampleLevel(s0, float2(min((_116 + _92), cb0_009x), min((_118 + _93), cb0_009y)), 0.0f);
  float _149 = ((_139.x * 0.800000011920929f) + ((_125.x + _98.x) * 0.10000000149011612f)) * TEXCOORD_1.w;
  float _150 = (((_125.y * 0.699999988079071f) + (_98.y * 0.20000000298023224f)) + (_139.y * 0.10000000149011612f)) * TEXCOORD_1.w;
  float _151 = (((_125.z * 0.20000000298023224f) + (_98.z * 0.10000000149011612f)) + (_139.z * 0.699999988079071f)) * TEXCOORD_1.w;
  float _152 = dot(float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f), float3(_149, _150, _151));
  float4 _155 = t0.SampleLevel(s0, float2(min((_92 - cb0_002x), cb0_009x), _97), 0.0f);
  float _160 = dot(float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f), float3(_155.x, _155.y, _155.z)) * TEXCOORD_1.w;
  float4 _163 = t0.SampleLevel(s0, float2(min((_92 + cb0_002x), cb0_009x), _97), 0.0f);
  float _168 = dot(float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f), float3(_163.x, _163.y, _163.z)) * TEXCOORD_1.w;
  float4 _171 = t0.SampleLevel(s0, float2(_96, min((_93 - cb0_002y), cb0_009y)), 0.0f);
  float _176 = dot(float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f), float3(_171.x, _171.y, _171.z)) * TEXCOORD_1.w;
  float4 _179 = t0.SampleLevel(s0, float2(_96, min((_93 + cb0_002y), cb0_009y)), 0.0f);
  float _184 = dot(float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f), float3(_179.x, _179.y, _179.z)) * TEXCOORD_1.w;
  float _187 = (1.0f / (_152 + 1.0f)) * _152;
  float _212 = max(0.0f, (((cb0_008x * 0.5f) * (((((_187 * 4.0f) - ((1.0f / (_160 + 1.0f)) * _160)) - ((1.0f / (_168 + 1.0f)) * _168)) - ((1.0f / (_176 + 1.0f)) * _176)) - ((1.0f / (_184 + 1.0f)) * _184))) + _187)) / max(9.999999747378752e-06f, _187);
  float _213 = _212 * _149;
  float _214 = _212 * _150;
  float _215 = _212 * _151;
  float _219 = min(_94, cb0_010x);
  float _220 = min(_95, cb0_010y);
  float4 _221 = t2.SampleLevel(s2, float2(_219, _220), 0.0f);
  float4 _232 = t2.SampleLevel(s2, float2(min((_94 - _116), cb0_010x), min((_95 - _118), cb0_010y)), 0.0f);
  float4 _246 = t2.SampleLevel(s2, float2(min((_116 + _94), cb0_010x), min((_118 + _95), cb0_010y)), 0.0f);
  float _268 = _57 * 3.555555582046509f;
  float _269 = _58 * 3.555555582046509f;
  float _272 = sqrt(dot(float2(_268, _269), float2(_268, _269))) * 0.25f * RENODX_FX_VIGNETTE_STRENGTH;
  float _274 = (_272 * _272) + 1.0f;
  float _276 = 1.0f / (_274 * _274);
  float _277 = ((((((_246.x * 0.800000011920929f) + ((_232.x + _221.x) * 0.10000000149011612f)) * TEXCOORD_1.w) - _213) * _221.w) + _213) * _276;
  float _278 = (((((((_232.y * 0.699999988079071f) + (_221.y * 0.20000000298023224f)) + (_246.y * 0.10000000149011612f)) * TEXCOORD_1.w) - _214) * _221.w) + _214) * _276;
  float _279 = (((((((_232.z * 0.20000000298023224f) + (_221.z * 0.10000000149011612f)) + (_246.z * 0.699999988079071f)) * TEXCOORD_1.w) - _215) * _221.w) + _215) * _276;
  float4 _280 = t1.SampleLevel(s1, float2(_219, _220), 0.0f);
  float _291 = saturate(((cb0_000w / (_48.x - cb0_000z)) + -500.0f) * 0.0020000000949949026f) * 0.22499999403953552f;
  float _319 = exp2(log2(((saturate(cb0_001x + _291) * ((_280.x * 0.20000000298023224f) - _277)) + _277) * 0.009999999776482582f) * 0.1593017578125f);
  float _320 = exp2(log2(((saturate(cb0_001y + _291) * ((_280.y * 0.20000000298023224f) - _278)) + _278) * 0.009999999776482582f) * 0.1593017578125f);
  float _321 = exp2(log2(((saturate(cb0_001z + _291) * ((_280.z * 0.20000000298023224f) - _279)) + _279) * 0.009999999776482582f) * 0.1593017578125f);
  float4 _352 = t3.Sample(s3, float3(((exp2(log2(((_319 * 18.8515625f) + 0.8359375f) / ((_319 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f), ((exp2(log2(((_320 * 18.8515625f) + 0.8359375f) / ((_320 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f), ((exp2(log2(((_321 * 18.8515625f) + 0.8359375f) / ((_321 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f)));
  float _356 = dot(float3(_352.x, _352.y, _352.z), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _359 = cb0_003x * 0.0009765625f;
  float _363 = frac(abs(_359));
  float _369 = frac(TEXCOORD.x * 5.39870023727417f);
  float _370 = frac(TEXCOORD.y * 5.4421000480651855f);
  float _371 = frac(select((_359 >= (-0.0f - _359)), _363, (-0.0f - _363)) * 7103.59033203125f);
  float _375 = dot(float3(_370, _371, _369), float3((_369 + 21.53510093688965f), (_370 + 14.313699722290039f), (_371 + 15.324700355529785f)));
  float _376 = _375 + _369;
  float _377 = _375 + _370;
  float _378 = _375 + _371;
  float _379 = _376 * _377;
  float _391 = frac(_379 * 97.59010314941406f) + -0.5f;
  float _392 = frac((_378 * 93.83689880371094f) * _376) + -0.5f;
  float _393 = frac((_378 * 91.69309997558594f) * _377) + -0.5f;
  float _412 = (frac(_379 * 95.43070220947266f) + -0.5f) + ((select((_352.x < 0.0019607844296842813f), 0.0f, 1.0f) * select((_352.x > 0.998039186000824f), 0.0f, 1.0f)) * _391);
  float _413 = ((select((_352.y < 0.0019607844296842813f), 0.0f, 1.0f) * select((_352.y > 0.998039186000824f), 0.0f, 1.0f)) * _392) + _391;
  float _414 = ((select((_352.z < 0.0019607844296842813f), 0.0f, 1.0f) * select((_352.z > 0.998039186000824f), 0.0f, 1.0f)) * _393) + _392;
  float _427 = (saturate(1.0f - _356) * dot(float4(_412, _413, _414, _393), float4(0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f))) * cb0_015x;
  float _431 = saturate(((_412 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + _352.x) + _427);
  float _432 = saturate(((_413 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + _352.y) + _427);
  float _433 = saturate(((_414 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + _352.z) + _427);
  float4 _434 = t8.Sample(s8, float2(TEXCOORD.x, TEXCOORD.y));
  // float _590;
  // float _591;
  // float _592;
  // [branch]
  // if (!(_434.w < 9.999999747378752e-05f)) {
  //   float _443 = cb0_016x * 9.999999747378752e-05f;
  //   float _450 = (pow(_431, 0.012683313339948654f));
  //   float _451 = (pow(_432, 0.012683313339948654f));
  //   float _452 = (pow(_433, 0.012683313339948654f));
  //   float _477 = exp2(log2(max((_450 + -0.8359375f), 0.0f) / (18.8515625f - (_450 * 18.6875f))) * 6.277394771575928f) / _443;
  //   float _478 = exp2(log2(max((_451 + -0.8359375f), 0.0f) / (18.8515625f - (_451 * 18.6875f))) * 6.277394771575928f) / _443;
  //   float _479 = exp2(log2(max((_452 + -0.8359375f), 0.0f) / (18.8515625f - (_452 * 18.6875f))) * 6.277394771575928f) / _443;
  //   float _482 = mad(-0.07283999770879745f, _479, mad(-0.5876560211181641f, _478, (_477 * 1.6604959964752197f)));
  //   float _485 = mad(-0.00834800023585558f, _479, mad(1.1328949928283691f, _478, (_477 * -0.12454699724912643f)));
  //   float _488 = mad(1.118751049041748f, _479, mad(-0.10059700161218643f, _478, (_477 * -0.018154000863432884f)));
  //   float _513 = 1.0f - _434.w;
  //   float _517 = (select((_482 <= 0.0031308000907301903f), (_482 * 12.920000076293945f), (((pow(_482, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _513) + _434.x;
  //   float _518 = (select((_485 <= 0.0031308000907301903f), (_485 * 12.920000076293945f), (((pow(_485, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _513) + _434.y;
  //   float _519 = (select((_488 <= 0.0031308000907301903f), (_488 * 12.920000076293945f), (((pow(_488, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _513) + _434.z;
  //   float _541 = select((_517 <= 0.0392800010740757f), (_517 * 0.07739938050508499f), exp2(log2((_517 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  //   float _542 = select((_518 <= 0.0392800010740757f), (_518 * 0.07739938050508499f), exp2(log2((_518 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  //   float _543 = select((_519 <= 0.0392800010740757f), (_519 * 0.07739938050508499f), exp2(log2((_519 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  //   float _562 = exp2(log2(mad(0.04331360012292862f, _543, mad(0.3292819857597351f, _542, (_541 * 0.627403974533081f))) * _443) * 0.1593017578125f);
  //   float _563 = exp2(log2(mad(0.012477199546992779f, _543, mad(0.9417769908905029f, _542, (_541 * 0.045745600014925f))) * _443) * 0.1593017578125f);
  //   float _564 = exp2(log2(mad(0.9836069941520691f, _543, mad(0.017604099586606026f, _542, (_541 * -0.0012105499627068639f))) * _443) * 0.1593017578125f);
  //   _590 = exp2(log2(((_562 * 18.8515625f) + 0.8359375f) / ((_562 * 18.6875f) + 1.0f)) * 78.84375f);
  //   _591 = exp2(log2(((_563 * 18.8515625f) + 0.8359375f) / ((_563 * 18.6875f) + 1.0f)) * 78.84375f);
  //   _592 = exp2(log2(((_564 * 18.8515625f) + 0.8359375f) / ((_564 * 18.6875f) + 1.0f)) * 78.84375f);
  // } else {
  //   _590 = _431;
  //   _591 = _432;
  //   _592 = _433;
  // }
  // SV_Target.x = _590;
  // SV_Target.y = _591;
  // SV_Target.z = _592;

  SV_Target.rgb = BlendUI(_434, float3(_431, _432, _433));
  SV_Target.w = _356;
  return SV_Target;
}
