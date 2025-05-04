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
  float cb0_008x : packoffset(c008.x);
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
  float _55 = (((((cb0_002x) * 32.0f) * (cb0_002z)) * (((_27.x) * 2.0f) + -1.0f)) + (TEXCOORD.x)) * (cb0_002z);
  float _56 = ((TEXCOORD.y) - (((cb0_002w) * (cb0_002y)) * (((_27.y) * 64.0f) + -32.0f))) * (cb0_002w);
  float _57 = min(_55, (cb0_009x));
  float _58 = min(_56, (cb0_009y));
  float4 _59 = t0.SampleLevel(s0, float2(_57, _58), 0.0f);
  float _65 = (cb0_002z) * ((TEXCOORD.x) + -0.5f);
  float _66 = (cb0_002w) * ((TEXCOORD.y) + -0.5f);
  float _70 = sqrt(((_65 * _65) + (_66 * _66)));
  float _75 = ((_70 * _70) * (cb0_004x * RENODX_FX_CA_STRENGTH)) / _70;
  float _77 = (_65 * (cb0_002x)) * _75;
  float _79 = (_66 * (cb0_002y)) * _75;
  float4 _86 = t0.SampleLevel(s0, float2((min((_55 - _77), (cb0_009x))), (min((_56 - _79), (cb0_009y)))), 0.0f);
  float4 _100 = t0.SampleLevel(s0, float2((min((_77 + _55), (cb0_009x))), (min((_79 + _56), (cb0_009y)))), 0.0f);
  float _110 = (((_100.x) * 0.800000011920929f) + (((_86.x) + (_59.x)) * 0.10000000149011612f)) * (TEXCOORD_1.w);
  float _111 = ((((_86.y) * 0.699999988079071f) + ((_59.y) * 0.20000000298023224f)) + ((_100.y) * 0.10000000149011612f)) * (TEXCOORD_1.w);
  float _112 = ((((_86.z) * 0.20000000298023224f) + ((_59.z) * 0.10000000149011612f)) + ((_100.z) * 0.699999988079071f)) * (TEXCOORD_1.w);
  float _113 = dot(float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f), float3(_110, _111, _112));
  float4 _116 = t0.SampleLevel(s0, float2((min((_55 - (cb0_002x)), (cb0_009x))), _58), 0.0f);
  float _121 = (dot(float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f), float3((_116.x), (_116.y), (_116.z)))) * (TEXCOORD_1.w);
  float4 _124 = t0.SampleLevel(s0, float2((min((_55 + (cb0_002x)), (cb0_009x))), _58), 0.0f);
  float _129 = (dot(float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f), float3((_124.x), (_124.y), (_124.z)))) * (TEXCOORD_1.w);
  float4 _132 = t0.SampleLevel(s0, float2(_57, (min((_56 - (cb0_002y)), (cb0_009y)))), 0.0f);
  float _137 = (dot(float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f), float3((_132.x), (_132.y), (_132.z)))) * (TEXCOORD_1.w);
  float4 _140 = t0.SampleLevel(s0, float2(_57, (min((_56 + (cb0_002y)), (cb0_009y)))), 0.0f);
  float _145 = (dot(float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f), float3((_140.x), (_140.y), (_140.z)))) * (TEXCOORD_1.w);
  float _148 = (1.0f / (_113 + 1.0f)) * _113;
  float _173 = (max(0.0f, ((((cb0_008x) * 0.5f) * (((((_148 * 4.0f) - ((1.0f / (_121 + 1.0f)) * _121)) - ((1.0f / (_129 + 1.0f)) * _129)) - ((1.0f / (_137 + 1.0f)) * _137)) - ((1.0f / (_145 + 1.0f)) * _145))) + _148))) / (max(9.999999747378752e-06f, _148));
  float _174 = _173 * _110;
  float _175 = _173 * _111;
  float _176 = _173 * _112;
  float _180 = min(_23, (cb0_010x));
  float _181 = min(_24, (cb0_010y));
  float4 _182 = t2.SampleLevel(s2, float2(_180, _181), 0.0f);
  float4 _193 = t2.SampleLevel(s2, float2((min((_23 - _77), (cb0_010x))), (min((_24 - _79), (cb0_010y)))), 0.0f);
  float4 _207 = t2.SampleLevel(s2, float2((min((_77 + _23), (cb0_010x))), (min((_79 + _24), (cb0_010y)))), 0.0f);
  float _231 = ((TEXCOORD.x) + -0.5f) * 3.555555582046509f;
  float _232 = ((TEXCOORD.y) + -0.5f) * 3.555555582046509f;
  float _235 = (sqrt((dot(float2(_231, _232), float2(_231, _232))))) * 0.25f * RENODX_FX_VIGNETTE_STRENGTH;
  float _237 = (_235 * _235) + 1.0f;
  float _239 = 1.0f / (_237 * _237);
  float _240 = (((((((_207.x) * 0.800000011920929f) + (((_193.x) + (_182.x)) * 0.10000000149011612f)) * (TEXCOORD_1.w)) - _174) * (_182.w)) + _174) * _239;
  float _241 = ((((((((_193.y) * 0.699999988079071f) + ((_182.y) * 0.20000000298023224f)) + ((_207.y) * 0.10000000149011612f)) * (TEXCOORD_1.w)) - _175) * (_182.w)) + _175) * _239;
  float _242 = ((((((((_193.z) * 0.20000000298023224f) + ((_182.z) * 0.10000000149011612f)) + ((_207.z) * 0.699999988079071f)) * (TEXCOORD_1.w)) - _176) * (_182.w)) + _176) * _239;
  float4 _243 = t1.SampleLevel(s1, float2(_180, _181), 0.0f);
  float _254 = (saturate(((((cb0_000w) / ((((float4)(t4.SampleLevel(s4, float2((min(_25, (cb0_009x))), (min(_26, (cb0_009y)))), 0.0f))).x) - (cb0_000z))) + -500.0f) * 0.0020000000949949026f))) * 0.22499999403953552f;
  float4 _294 = t3.Sample(s3, float3((((saturate((((log2(((_240 + 0.002667719265446067f) + ((saturate(((cb0_001x) + _254))) * (((_243.x) * 0.20000000298023224f) - _240))))) * 0.0714285746216774f) + 0.6107269525527954f))) * 0.96875f) + 0.015625f), (((saturate((((log2(((_241 + 0.002667719265446067f) + ((saturate(((cb0_001y) + _254))) * (((_243.y) * 0.20000000298023224f) - _241))))) * 0.0714285746216774f) + 0.6107269525527954f))) * 0.96875f) + 0.015625f), (((saturate((((log2(((_242 + 0.002667719265446067f) + ((saturate(((cb0_001z) + _254))) * (((_243.z) * 0.20000000298023224f) - _242))))) * 0.0714285746216774f) + 0.6107269525527954f))) * 0.96875f) + 0.015625f)));
  float _298 = dot(float3((_294.x), (_294.y), (_294.z)), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _301 = (cb0_003x) * 0.0009765625f;
  float _305 = frac((abs(_301)));
  float _311 = frac(((TEXCOORD.x) * 5.39870023727417f));
  float _312 = frac(((TEXCOORD.y) * 5.4421000480651855f));
  float _313 = frac((((((bool)((_301 >= (-0.0f - _301)))) ? _305 : (-0.0f - _305))) * 7103.59033203125f));
  float _317 = dot(float3(_312, _313, _311), float3((_311 + 21.53510093688965f), (_312 + 14.313699722290039f), (_313 + 15.324700355529785f)));
  float _318 = _317 + _311;
  float _319 = _317 + _312;
  float _320 = _317 + _313;
  float _321 = _318 * _319;
  float _333 = (frac((_321 * 97.59010314941406f))) + -0.5f;
  float _334 = (frac(((_320 * 93.83689880371094f) * _318))) + -0.5f;
  float _335 = (frac(((_320 * 91.69309997558594f) * _319))) + -0.5f;
  float _354 = ((frac((_321 * 95.43070220947266f))) + -0.5f) + ((((((bool)(((_294.x) < 0.0019607844296842813f))) ? 0.0f : 1.0f)) * ((((bool)(((_294.x) > 0.998039186000824f))) ? 0.0f : 1.0f))) * _333);
  float _355 = ((((((bool)(((_294.y) < 0.0019607844296842813f))) ? 0.0f : 1.0f)) * ((((bool)(((_294.y) > 0.998039186000824f))) ? 0.0f : 1.0f))) * _334) + _333;
  float _356 = ((((((bool)(((_294.z) < 0.0019607844296842813f))) ? 0.0f : 1.0f)) * ((((bool)(((_294.z) > 0.998039186000824f))) ? 0.0f : 1.0f))) * _335) + _334;
  float _369 = ((saturate((1.0f - _298))) * (dot(float4(_354, _355, _356, _335), float4(0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f)))) * (cb0_015x);
  SV_Target.x = ((((RENODX_FX_DITHERING_STRENGTH * ((_354) * 0.003921568859368563f) + (_294.x)) + _369)));
  SV_Target.y = ((((RENODX_FX_DITHERING_STRENGTH * ((_355) * 0.003921568859368563f) + (_294.y)) + _369)));
  SV_Target.z = ((((RENODX_FX_DITHERING_STRENGTH * ((_356) * 0.003921568859368563f) + (_294.z)) + _369)));
  SV_Target.w = _298;

  return SV_Target;
}
