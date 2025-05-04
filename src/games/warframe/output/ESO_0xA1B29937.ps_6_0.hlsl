#include "../shared.h"

Texture2D<float4> t0 : register(t0);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t2 : register(t2);

Texture3D<float4> t3 : register(t3);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t5 : register(t10);

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
};

SamplerState s0 : register(s0);

SamplerState s1 : register(s1);

SamplerState s2 : register(s2);

SamplerState s3 : register(s3);

SamplerState s4 : register(s4);

SamplerState s5 : register(s10);

float4 main(
  noperspective float4 SV_Position : SV_Position,
  linear float4 TEXCOORD : TEXCOORD,
  linear float4 TEXCOORD_1 : TEXCOORD1
) : SV_Target {
  float4 SV_Target;
  float _25 = min(((cb0_014x) * (TEXCOORD.x)), (cb0_009x));
  float _26 = min(((cb0_014y) * (TEXCOORD.y)), (cb0_009y));
  float4 _27 = t5.SampleLevel(s5, float2(_25, _26), 0.0f);
  float _55 = (TEXCOORD.x) + -0.5f;
  float _56 = (TEXCOORD.y) + -0.5f;
  float _68 = (((cb0_012x) + -1.0f) * (saturate(((1.7000000476837158f - (sqrt(((_56 * _56) + (_55 * _55))))) * (cb0_013x))))) + 1.0f;
  float _69 = _68 * (cb0_002x);
  float _70 = (TEXCOORD.x) / _69;
  float _71 = _68 * (cb0_002y);
  float _72 = (TEXCOORD.y) / _71;
  float _73 = frac(_70);
  float _74 = frac(_72);
  float _86 = ((((((bool)((_73 < (1.0f - _74)))) ? 0.0f : 2.0f)) * (cb0_013x)) + (floor(_70))) * _69;
  float _87 = _71 * ((((((bool)((_74 < _73))) ? 0.0f : 2.0f)) * (cb0_013x)) + (floor(_72)));
  float _90 = (_86 + ((((cb0_002x) * 32.0f) * (cb0_002z)) * (((_27.x) * 2.0f) + -1.0f))) * (cb0_002z);
  float _91 = (_87 - (((cb0_002w) * (cb0_002y)) * (((_27.y) * 64.0f) + -32.0f))) * (cb0_002w);
  float _92 = _86 * (cb0_014x);
  float _93 = _87 * (cb0_014y);
  float4 _96 = t0.SampleLevel(s0, float2((min(_90, (cb0_009x))), (min(_91, (cb0_009y)))), 0.0f);
  float _102 = (_86 + -0.5f) * (cb0_002z);
  float _103 = (_87 + -0.5f) * (cb0_002w);
  float _107 = sqrt(((_102 * _102) + (_103 * _103)));
  float _112 = ((_107 * _107) * (cb0_004x)) / _107;
  float _114 = (_102 * (cb0_002x)) * _112;
  float _116 = (_103 * (cb0_002y)) * _112;
  float4 _123 = t0.SampleLevel(s0, float2((min((_90 - _114), (cb0_009x))), (min((_91 - _116), (cb0_009y)))), 0.0f);
  float4 _137 = t0.SampleLevel(s0, float2((min((_114 + _90), (cb0_009x))), (min((_116 + _91), (cb0_009y)))), 0.0f);
  float _144 = ((_137.x) * 0.800000011920929f) + (((_123.x) + (_96.x)) * 0.10000000149011612f);
  float _145 = (((_123.y) * 0.699999988079071f) + ((_96.y) * 0.20000000298023224f)) + ((_137.y) * 0.10000000149011612f);
  float _146 = (((_123.z) * 0.20000000298023224f) + ((_96.z) * 0.10000000149011612f)) + ((_137.z) * 0.699999988079071f);
  float _150 = min(_92, (cb0_010x));
  float _151 = min(_93, (cb0_010y));
  float4 _152 = t2.SampleLevel(s2, float2(_150, _151), 0.0f);
  float4 _163 = t2.SampleLevel(s2, float2((min((_92 - _114), (cb0_010x))), (min((_93 - _116), (cb0_010y)))), 0.0f);
  float4 _175 = t2.SampleLevel(s2, float2((min((_114 + _92), (cb0_010x))), (min((_116 + _93), (cb0_010y)))), 0.0f);
  float _196 = _55 * 3.555555582046509f;
  float _197 = _56 * 3.555555582046509f;
  float _200 = (sqrt((dot(float2(_196, _197), float2(_196, _197))))) * 0.25f * RENODX_FX_VIGNETTE_STRENGTH;
  float _202 = (_200 * _200) + 1.0f;
  float _205 = (1.0f / (_202 * _202)) * (TEXCOORD_1.w);
  float _206 = (((((((_163.x) + (_152.x)) * 0.10000000149011612f) - _144) + ((_175.x) * 0.800000011920929f)) * (_152.w)) + _144) * _205;
  float _207 = (((((((_152.y) * 0.20000000298023224f) - _145) + ((_163.y) * 0.699999988079071f)) + ((_175.y) * 0.10000000149011612f)) * (_152.w)) + _145) * _205;
  float _208 = (((((((_152.z) * 0.10000000149011612f) - _146) + ((_163.z) * 0.20000000298023224f)) + ((_175.z) * 0.699999988079071f)) * (_152.w)) + _146) * _205;
  float4 _209 = t1.SampleLevel(s1, float2(_150, _151), 0.0f);
  float _220 = (saturate(((((cb0_000w) / ((((float4)(t4.SampleLevel(s4, float2((min(_25, (cb0_009x))), (min(_26, (cb0_009y)))), 0.0f))).x) - (cb0_000z))) + -500.0f) * 0.0020000000949949026f))) * 0.22499999403953552f;
  float4 _260 = t3.Sample(s3, float3((((saturate((((log2(((_206 + 0.002667719265446067f) + ((saturate(((cb0_001x) + _220))) * (((_209.x) * 0.20000000298023224f) - _206))))) * 0.0714285746216774f) + 0.6107269525527954f))) * 0.96875f) + 0.015625f), (((saturate((((log2(((_207 + 0.002667719265446067f) + ((saturate(((cb0_001y) + _220))) * (((_209.y) * 0.20000000298023224f) - _207))))) * 0.0714285746216774f) + 0.6107269525527954f))) * 0.96875f) + 0.015625f), (((saturate((((log2(((_208 + 0.002667719265446067f) + ((saturate(((cb0_001z) + _220))) * (((_209.z) * 0.20000000298023224f) - _208))))) * 0.0714285746216774f) + 0.6107269525527954f))) * 0.96875f) + 0.015625f)));
  float _264 = dot(float3((_260.x), (_260.y), (_260.z)), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _267 = (cb0_003x) * 0.0009765625f;
  float _271 = frac((abs(_267)));
  float _277 = frac(((TEXCOORD.x) * 5.39870023727417f));
  float _278 = frac(((TEXCOORD.y) * 5.4421000480651855f));
  float _279 = frac((((((bool)((_267 >= (-0.0f - _267)))) ? _271 : (-0.0f - _271))) * 7103.59033203125f));
  float _283 = dot(float3(_278, _279, _277), float3((_277 + 21.53510093688965f), (_278 + 14.313699722290039f), (_279 + 15.324700355529785f)));
  float _284 = _283 + _277;
  float _285 = _283 + _278;
  float _286 = _283 + _279;
  float _287 = _284 * _285;
  float _299 = (frac((_287 * 97.59010314941406f))) + -0.5f;
  float _300 = (frac(((_286 * 93.83689880371094f) * _284))) + -0.5f;
  float _301 = (frac(((_286 * 91.69309997558594f) * _285))) + -0.5f;
  float _320 = ((frac((_287 * 95.43070220947266f))) + -0.5f) + ((((((bool)(((_260.x) < 0.0019607844296842813f))) ? 0.0f : 1.0f)) * ((((bool)(((_260.x) > 0.998039186000824f))) ? 0.0f : 1.0f))) * _299);
  float _321 = ((((((bool)(((_260.y) < 0.0019607844296842813f))) ? 0.0f : 1.0f)) * ((((bool)(((_260.y) > 0.998039186000824f))) ? 0.0f : 1.0f))) * _300) + _299;
  float _322 = ((((((bool)(((_260.z) < 0.0019607844296842813f))) ? 0.0f : 1.0f)) * ((((bool)(((_260.z) > 0.998039186000824f))) ? 0.0f : 1.0f))) * _301) + _300;
  float _335 = ((saturate((1.0f - _264))) * (dot(float4(_320, _321, _322, _301), float4(0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f)))) * (cb0_015x);
  SV_Target.x = ((((RENODX_FX_DITHERING_STRENGTH * (_320 * 0.003921568859368563f) + (_260.x)) + _335)));
  SV_Target.y = ((((RENODX_FX_DITHERING_STRENGTH * (_321 * 0.003921568859368563f) + (_260.y)) + _335)));
  SV_Target.z = ((((RENODX_FX_DITHERING_STRENGTH * (_322 * 0.003921568859368563f) + (_260.z)) + _335)));
  SV_Target.w = _264;
  return SV_Target;
}
