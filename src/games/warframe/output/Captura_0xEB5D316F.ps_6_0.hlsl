#include "../shared.h"
#include "../common.hlsl"

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
  float cb0_011x : packoffset(c011.x);
  float cb0_011y : packoffset(c011.y);
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
  float _23 = (cb0_014x) * (TEXCOORD.x);
  float _24 = (cb0_014y) * (TEXCOORD.y);
  float _25 = min(_23, (cb0_009x));
  float _26 = min(_24, (cb0_009y));
  float4 _27 = t5.SampleLevel(s5, float2(_25, _26), 0.0f);
  float _52 = (cb0_000w) / ((((float4)(t4.SampleLevel(s4, float2((min(_25, (cb0_009x))), (min(_26, (cb0_009y)))), 0.0f))).x) - (cb0_000z));
  float _55 = (((((cb0_002x) * 32.0f) * (cb0_002z)) * (((_27.x) * 2.0f) + -1.0f)) + (TEXCOORD.x)) * (cb0_002z);
  float _56 = ((TEXCOORD.y) - (((cb0_002w) * (cb0_002y)) * (((_27.y) * 64.0f) + -32.0f))) * (cb0_002w);
  float4 _59 = t0.SampleLevel(s0, float2((min(_55, (cb0_009x))), (min(_56, (cb0_009y)))), 0.0f);
  float _63 = (TEXCOORD.x) + -0.5f;
  float _64 = (TEXCOORD.y) + -0.5f;
  float _65 = (cb0_002z) * _63;
  float _66 = (cb0_002w) * _64;
  float _70 = sqrt(((_65 * _65) + (_66 * _66)));
  float _75 = ((_70 * _70) * (cb0_004x * RENODX_FX_CA_STRENGTH)) / _70;
  float _77 = (_65 * (cb0_002x)) * _75;
  float _79 = (_66 * (cb0_002y)) * _75;
  float4 _86 = t0.SampleLevel(s0, float2((min((_55 - _77), (cb0_009x))), (min((_56 - _79), (cb0_009y)))), 0.0f);
  float4 _100 = t0.SampleLevel(s0, float2((min((_77 + _55), (cb0_009x))), (min((_79 + _56), (cb0_009y)))), 0.0f);
  float _107 = ((_100.x) * 0.800000011920929f) + (((_86.x) + (_59.x)) * 0.10000000149011612f);
  float _108 = (((_86.y) * 0.699999988079071f) + ((_59.y) * 0.20000000298023224f)) + ((_100.y) * 0.10000000149011612f);
  float _109 = (((_86.z) * 0.20000000298023224f) + ((_59.z) * 0.10000000149011612f)) + ((_100.z) * 0.699999988079071f);
  float _113 = min(_23, (cb0_010x));
  float _114 = min(_24, (cb0_010y));
  float4 _115 = t2.SampleLevel(s2, float2(_113, _114), 0.0f);
  float4 _126 = t2.SampleLevel(s2, float2((min((_23 - _77), (cb0_010x))), (min((_24 - _79), (cb0_010y)))), 0.0f);
  float4 _138 = t2.SampleLevel(s2, float2((min((_77 + _23), (cb0_010x))), (min((_79 + _24), (cb0_010y)))), 0.0f);
  float _159 = _63 * 3.555555582046509f;
  float _160 = _64 * 3.555555582046509f;
  float _163 = (sqrt((dot(float2(_159, _160), float2(_159, _160))))) * 0.25f * RENODX_FX_VIGNETTE_STRENGTH;
  float _165 = (_163 * _163) + 1.0f;
  float _168 = (1.0f / (_165 * _165)) * (TEXCOORD_1.w);
  float _169 = (((((((_126.x) + (_115.x)) * 0.10000000149011612f) - _107) + ((_138.x) * 0.800000011920929f)) * (_115.w)) + _107) * _168;
  float _170 = (((((((_115.y) * 0.20000000298023224f) - _108) + ((_126.y) * 0.699999988079071f)) + ((_138.y) * 0.10000000149011612f)) * (_115.w)) + _108) * _168;
  float _171 = (((((((_115.z) * 0.10000000149011612f) - _109) + ((_126.z) * 0.20000000298023224f)) + ((_138.z) * 0.699999988079071f)) * (_115.w)) + _109) * _168;
  float4 _172 = t1.SampleLevel(s1, float2(_113, _114), 0.0f);
  float _183 = (saturate(((_52 + -500.0f) * 0.0020000000949949026f))) * 0.22499999403953552f;
  float _199 = ((saturate(((cb0_001x) + _183))) * (((_172.x) * 0.20000000298023224f) - _169)) + _169;
  float _200 = ((saturate(((cb0_001y) + _183))) * (((_172.y) * 0.20000000298023224f) - _170)) + _170;
  float _201 = ((saturate(((cb0_001z) + _183))) * (((_172.z) * 0.20000000298023224f) - _171)) + _171;
  float4 _223 = t3.Sample(s3, float3((((saturate((((log2((_199 + 0.002667719265446067f))) * 0.0714285746216774f) + 0.6107269525527954f))) * 0.96875f) + 0.015625f), (((saturate((((log2((_200 + 0.002667719265446067f))) * 0.0714285746216774f) + 0.6107269525527954f))) * 0.96875f) + 0.015625f), (((saturate((((log2((_201 + 0.002667719265446067f))) * 0.0714285746216774f) + 0.6107269525527954f))) * 0.96875f) + 0.015625f)));
  float _233 = saturate(((_52 - (cb0_011x)) / ((cb0_011y) - (cb0_011x))));
  float _237 = max(0.0f, (_199 + -0.004000000189989805f));
  float _238 = max(0.0f, (_200 + -0.004000000189989805f));
  float _239 = max(0.0f, (_201 + -0.004000000189989805f));
  float _240 = _237 * 6.199999809265137f;
  float _241 = _238 * 6.199999809265137f;
  float _242 = _239 * 6.199999809265137f;
  float _258 = ((_240 + 0.5f) * _237) / (((_240 + 1.7000000476837158f) * _237) + 0.05999999865889549f);
  float _259 = ((_241 + 0.5f) * _238) / (((_241 + 1.7000000476837158f) * _238) + 0.05999999865889549f);
  float _260 = ((_242 + 0.5f) * _239) / (((_242 + 1.7000000476837158f) * _239) + 0.05999999865889549f);
  float _267 = (((_223.x) - _258) * _233) + _258;
  float _268 = (((_223.y) - _259) * _233) + _259;
  float _269 = (((_223.z) - _260) * _233) + _260;
  float _270 = dot(float3(_267, _268, _269), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _273 = (cb0_003x) * 0.0009765625f;
  float _277 = frac((abs(_273)));
  float _283 = frac(((TEXCOORD.x) * 5.39870023727417f));
  float _284 = frac(((TEXCOORD.y) * 5.4421000480651855f));
  float _285 = frac((((((bool)((_273 >= (-0.0f - _273)))) ? _277 : (-0.0f - _277))) * 7103.59033203125f));
  float _289 = dot(float3(_284, _285, _283), float3((_283 + 21.53510093688965f), (_284 + 14.313699722290039f), (_285 + 15.324700355529785f)));
  float _290 = _289 + _283;
  float _291 = _289 + _284;
  float _292 = _289 + _285;
  float _293 = _290 * _291;
  float _305 = (frac((_293 * 97.59010314941406f))) + -0.5f;
  float _306 = (frac(((_292 * 93.83689880371094f) * _290))) + -0.5f;
  float _307 = (frac(((_292 * 91.69309997558594f) * _291))) + -0.5f;
  float _326 = ((frac((_293 * 95.43070220947266f))) + -0.5f) + ((((((bool)((_267 < 0.0019607844296842813f))) ? 0.0f : 1.0f)) * ((((bool)((_267 > 0.998039186000824f))) ? 0.0f : 1.0f))) * _305);
  float _327 = ((((((bool)((_268 < 0.0019607844296842813f))) ? 0.0f : 1.0f)) * ((((bool)((_268 > 0.998039186000824f))) ? 0.0f : 1.0f))) * _306) + _305;
  float _328 = ((((((bool)((_269 < 0.0019607844296842813f))) ? 0.0f : 1.0f)) * ((((bool)((_269 > 0.998039186000824f))) ? 0.0f : 1.0f))) * _307) + _306;
  float _341 = ((saturate((1.0f - _270))) * (dot(float4(_326, _327, _328, _307), float4(0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f)))) * (cb0_015x);
  SV_Target.x = ((((RENODX_FX_DITHERING_STRENGTH * ((_326) * 0.003921568859368563f) + _267) + _341)));
  SV_Target.y = ((((RENODX_FX_DITHERING_STRENGTH * ((_327) * 0.003921568859368563f) + _268) + _341)));
  SV_Target.z = ((((RENODX_FX_DITHERING_STRENGTH * ((_328) * 0.003921568859368563f) + _269) + _341)));
  SV_Target.w = _270;

  return SV_Target;
}
