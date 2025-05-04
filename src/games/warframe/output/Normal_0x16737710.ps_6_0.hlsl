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
    noperspective float4 SV_Position: SV_Position,
    linear float4 TEXCOORD: TEXCOORD,
    linear float4 TEXCOORD_1: TEXCOORD1
) : SV_Target {
  float4 SV_Target;
  float _23 = (cb0_014x) * (TEXCOORD.x);
  float _24 = (cb0_014y) * (TEXCOORD.y);
  float _25 = min(_23, (cb0_009x));
  float _26 = min(_24, (cb0_009y));
  float4 _27 = t5.SampleLevel(s5, float2(_25, _26), 0.0f);
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
  float _183 = (saturate(((((cb0_000w) / ((((float4)(t4.SampleLevel(s4, float2((min(_25, (cb0_009x))), (min(_26, (cb0_009y)))), 0.0f))).x) - (cb0_000z))) + -500.0f) * 0.0020000000949949026f))) * 0.22499999403953552f;
  float4 _223 = t3.Sample(s3, float3((((saturate((((log2(((_169 + 0.002667719265446067f) + ((saturate(((cb0_001x) + _183))) * (((_172.x) * 0.20000000298023224f) - _169))))) * 0.0714285746216774f) + 0.6107269525527954f))) * 0.96875f) + 0.015625f), (((saturate((((log2(((_170 + 0.002667719265446067f) + ((saturate(((cb0_001y) + _183))) * (((_172.y) * 0.20000000298023224f) - _170))))) * 0.0714285746216774f) + 0.6107269525527954f))) * 0.96875f) + 0.015625f), (((saturate((((log2(((_171 + 0.002667719265446067f) + ((saturate(((cb0_001z) + _183))) * (((_172.z) * 0.20000000298023224f) - _171))))) * 0.0714285746216774f) + 0.6107269525527954f))) * 0.96875f) + 0.015625f)));
  float _227 = dot(float3((_223.x), (_223.y), (_223.z)), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _230 = (cb0_003x) * 0.0009765625f;
  float _234 = frac((abs(_230)));
  float _240 = frac(((TEXCOORD.x) * 5.39870023727417f));
  float _241 = frac(((TEXCOORD.y) * 5.4421000480651855f));
  float _242 = frac((((((bool)((_230 >= (-0.0f - _230)))) ? _234 : (-0.0f - _234))) * 7103.59033203125f));
  float _246 = dot(float3(_241, _242, _240), float3((_240 + 21.53510093688965f), (_241 + 14.313699722290039f), (_242 + 15.324700355529785f)));
  float _247 = _246 + _240;
  float _248 = _246 + _241;
  float _249 = _246 + _242;
  float _250 = _247 * _248;
  float _262 = (frac((_250 * 97.59010314941406f))) + -0.5f;
  float _263 = (frac(((_249 * 93.83689880371094f) * _247))) + -0.5f;
  float _264 = (frac(((_249 * 91.69309997558594f) * _248))) + -0.5f;
  float _283 = ((frac((_250 * 95.43070220947266f))) + -0.5f) + ((((((bool)(((_223.x) < 0.0019607844296842813f))) ? 0.0f : 1.0f)) * ((((bool)(((_223.x) > 0.998039186000824f))) ? 0.0f : 1.0f))) * _262);
  float _284 = ((((((bool)(((_223.y) < 0.0019607844296842813f))) ? 0.0f : 1.0f)) * ((((bool)(((_223.y) > 0.998039186000824f))) ? 0.0f : 1.0f))) * _263) + _262;
  float _285 = ((((((bool)(((_223.z) < 0.0019607844296842813f))) ? 0.0f : 1.0f)) * ((((bool)(((_223.z) > 0.998039186000824f))) ? 0.0f : 1.0f))) * _264) + _263;
  float _298 = ((saturate((1.0f - _227))) * (dot(float4(_283, _284, _285, _264), float4(0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f)))) * (cb0_015x);
  SV_Target.x = ((((RENODX_FX_DITHERING_STRENGTH * ((_283) * 0.003921568859368563f) + (_223.x)) + _298)));
  SV_Target.y = ((((RENODX_FX_DITHERING_STRENGTH * ((_284) * 0.003921568859368563f) + (_223.y)) + _298)));
  SV_Target.z = ((((RENODX_FX_DITHERING_STRENGTH * ((_285) * 0.003921568859368563f) + (_223.z)) + _298)));
  SV_Target.w = _227;

  return SV_Target;
}
