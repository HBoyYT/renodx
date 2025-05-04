#include "../shared.h"
#include "../common.hlsl"


Texture2D<float4> t0 : register(t0);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t2 : register(t2);

Texture3D<float4> t3 : register(t3);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t5 : register(t10);

Texture2D<float4> t6 : register(t6);

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
  float cb0_018x : packoffset(c018.x);
  float cb0_018y : packoffset(c018.y);
  float cb0_019x : packoffset(c019.x);
  float cb0_020x : packoffset(c020.x);
};

SamplerState s0 : register(s0);

SamplerState s1 : register(s1);

SamplerState s2 : register(s2);

SamplerState s3 : register(s3);

SamplerState s4 : register(s4);

SamplerState s5 : register(s10);

SamplerState s6 : register(s6);

float4 main(
  noperspective float4 SV_Position : SV_Position,
  linear float4 TEXCOORD : TEXCOORD,
  linear float4 TEXCOORD_1 : TEXCOORD1
) : SV_Target {
  float4 SV_Target;
  float _25 = (cb0_014x) * (TEXCOORD.x);
  float _26 = (cb0_014y) * (TEXCOORD.y);
  float _27 = min(_25, (cb0_009x));
  float _28 = min(_26, (cb0_009y));
  float4 _29 = t5.SampleLevel(s5, float2(_27, _28), 0.0f);
  float _57 = (((((cb0_002x) * 32.0f) * (cb0_002z)) * (((_29.x) * 2.0f) + -1.0f)) + (TEXCOORD.x)) * (cb0_002z);
  float _58 = ((TEXCOORD.y) - (((cb0_002w) * (cb0_002y)) * (((_29.y) * 64.0f) + -32.0f))) * (cb0_002w);
  float4 _61 = t0.SampleLevel(s0, float2((min(_57, (cb0_009x))), (min(_58, (cb0_009y)))), 0.0f);
  float _65 = (TEXCOORD.x) + -0.5f;
  float _66 = (TEXCOORD.y) + -0.5f;
  float _67 = (cb0_002z) * _65;
  float _68 = (cb0_002w) * _66;
  float _72 = sqrt(((_67 * _67) + (_68 * _68)));
  float _77 = ((_72 * _72) * (cb0_004x * RENODX_FX_CA_STRENGTH)) / _72;
  float _79 = (_67 * (cb0_002x)) * _77;
  float _81 = (_68 * (cb0_002y)) * _77;
  float4 _88 = t0.SampleLevel(s0, float2((min((_57 - _79), (cb0_009x))), (min((_58 - _81), (cb0_009y)))), 0.0f);
  float4 _102 = t0.SampleLevel(s0, float2((min((_79 + _57), (cb0_009x))), (min((_81 + _58), (cb0_009y)))), 0.0f);
  float _109 = ((_102.x) * 0.800000011920929f) + (((_88.x) + (_61.x)) * 0.10000000149011612f);
  float _110 = (((_88.y) * 0.699999988079071f) + ((_61.y) * 0.20000000298023224f)) + ((_102.y) * 0.10000000149011612f);
  float _111 = (((_88.z) * 0.20000000298023224f) + ((_61.z) * 0.10000000149011612f)) + ((_102.z) * 0.699999988079071f);
  float _115 = min(_25, (cb0_010x));
  float _116 = min(_26, (cb0_010y));
  float4 _117 = t2.SampleLevel(s2, float2(_115, _116), 0.0f);
  float4 _128 = t2.SampleLevel(s2, float2((min((_25 - _79), (cb0_010x))), (min((_26 - _81), (cb0_010y)))), 0.0f);
  float4 _140 = t2.SampleLevel(s2, float2((min((_79 + _25), (cb0_010x))), (min((_81 + _26), (cb0_010y)))), 0.0f);
  float _161 = _65 * 3.555555582046509f;
  float _162 = _66 * 3.555555582046509f;
  float _165 = (sqrt((dot(float2(_161, _162), float2(_161, _162))))) * 0.25f * RENODX_FX_VIGNETTE_STRENGTH;
  float _167 = (_165 * _165) + 1.0f;
  float _170 = (1.0f / (_167 * _167)) * (TEXCOORD_1.w);
  float _171 = (((((((_128.x) + (_117.x)) * 0.10000000149011612f) - _109) + ((_140.x) * 0.800000011920929f)) * (_117.w)) + _109) * _170;
  float _172 = (((((((_117.y) * 0.20000000298023224f) - _110) + ((_128.y) * 0.699999988079071f)) + ((_140.y) * 0.10000000149011612f)) * (_117.w)) + _110) * _170;
  float _173 = (((((((_117.z) * 0.10000000149011612f) - _111) + ((_128.z) * 0.20000000298023224f)) + ((_140.z) * 0.699999988079071f)) * (_117.w)) + _111) * _170;
  float4 _174 = t1.SampleLevel(s1, float2(_115, _116), 0.0f);
  float _187 = saturate((((dot(float3((_174.x), (_174.y), (_174.z)), float3((cb0_019x), (cb0_019x), (cb0_019x)))) + (cb0_018y)) + (((float4)(t6.SampleLevel(s6, float2(_27, _28), 0.0f))).x)));
  float _193 = saturate((((1.0f - (_187 * 2.0f)) * (cb0_018x)) + _187));
  float _194 = dot(float3(_171, _172, _173), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _201 = ((_171 - _194) * _193) + _194;
  float _202 = ((_172 - _194) * _193) + _194;
  float _203 = ((_173 - _194) * _193) + _194;
  float _211 = (saturate(((((cb0_000w) / ((((float4)(t4.SampleLevel(s4, float2((min(_27, (cb0_009x))), (min(_28, (cb0_009y)))), 0.0f))).x) - (cb0_000z))) + -500.0f) * 0.0020000000949949026f))) * 0.22499999403953552f;
  float4 _251 = t3.Sample(s3, float3((((saturate((((log2(((_201 + 0.002667719265446067f) + ((((_174.x) * 0.20000000298023224f) - _201) * (saturate(((cb0_001x) + _211))))))) * 0.0714285746216774f) + 0.6107269525527954f))) * 0.96875f) + 0.015625f), (((saturate((((log2(((_202 + 0.002667719265446067f) + ((saturate(((cb0_001y) + _211))) * (((_174.y) * 0.20000000298023224f) - _202))))) * 0.0714285746216774f) + 0.6107269525527954f))) * 0.96875f) + 0.015625f), (((saturate((((log2(((_203 + 0.002667719265446067f) + ((saturate(((cb0_001z) + _211))) * (((_174.z) * 0.20000000298023224f) - _203))))) * 0.0714285746216774f) + 0.6107269525527954f))) * 0.96875f) + 0.015625f)));
  float _255 = dot(float3((_251.x), (_251.y), (_251.z)), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _261 = floor(((TEXCOORD.x) / (cb0_002x)));
  float _262 = floor(((TEXCOORD.y) / (cb0_002y)));
  float _272 = (floor((((sin((_261 * 0.03999999910593033f))) * 2.0f) + (sin(((_262 * 0.09000000357627869f) + (_261 * 0.07000000029802322f))))))) + _261;
  float _273 = _272 + _262;
  float _274 = _272 - _262;
  float _281 = _273 - ((floor((_273 * 0.125f))) * 8.0f);
  float _282 = _274 - ((floor((_274 * 0.125f))) * 8.0f);
  float _284 = (dot(float3((_251.x), (_251.y), (_251.z)), float3((_251.x), (_251.y), (_251.z)))) * 0.8999999761581421f;
  float _309 = (_251.x) + 0.4000000059604645f;
  float _310 = (_251.y) + 0.4000000059604645f;
  float _311 = (_251.z) + 0.4000000059604645f;
  float _328 = ((((((float((uint)((bool)(((bool)((_284 > 0.699999988079071f))) || ((bool)(!(_282 == 0.0f))))))) * 0.75f) * (float((uint)((bool)(((bool)(!(_281 == 0.0f))) || ((bool)((_284 > 1.0f)))))))) * (float((uint)((bool)(((bool)(!(_281 == 4.0f))) || ((bool)((_284 > 0.3499999940395355f)))))))) * (float((uint)((bool)(((bool)((_284 > 0.18000000715255737f))) || ((bool)(!(_282 == 4.0f)))))))) * (float((uint)((bool)(((bool)(!(_281 == 2.0f))) || ((bool)((_284 > 0.10000000149011612f)))))))) * (float((uint)((bool)(((bool)((_284 > 0.019999999552965164f))) || ((bool)(!(_282 == 2.0f)))))));
  float _338 = (((_328 * (((_255 - _309) * 0.5f) + _309)) - (_251.x)) * (cb0_020x)) + (_251.x);
  float _339 = (((_328 * (((_255 - _310) * 0.5f) + _310)) - (_251.y)) * (cb0_020x)) + (_251.y);
  float _340 = (((_328 * (((_255 - _311) * 0.5f) + _311)) - (_251.z)) * (cb0_020x)) + (_251.z);
  float _343 = (cb0_003x) * 0.0009765625f;
  float _347 = frac((abs(_343)));
  float _353 = frac(((TEXCOORD.x) * 5.39870023727417f));
  float _354 = frac(((TEXCOORD.y) * 5.4421000480651855f));
  float _355 = frac((((((bool)((_343 >= (-0.0f - _343)))) ? _347 : (-0.0f - _347))) * 7103.59033203125f));
  float _359 = dot(float3(_354, _355, _353), float3((_353 + 21.53510093688965f), (_354 + 14.313699722290039f), (_355 + 15.324700355529785f)));
  float _360 = _359 + _353;
  float _361 = _359 + _354;
  float _362 = _359 + _355;
  float _363 = _360 * _361;
  float _375 = (frac((_363 * 97.59010314941406f))) + -0.5f;
  float _376 = (frac(((_362 * 93.83689880371094f) * _360))) + -0.5f;
  float _377 = (frac(((_362 * 91.69309997558594f) * _361))) + -0.5f;
  float _396 = ((frac((_363 * 95.43070220947266f))) + -0.5f) + ((((((bool)((_338 > 0.998039186000824f))) ? 0.0f : 1.0f)) * _375) * ((((bool)((_338 < 0.0019607844296842813f))) ? 0.0f : 1.0f)));
  float _397 = ((((((bool)((_339 > 0.998039186000824f))) ? 0.0f : 1.0f)) * _376) * ((((bool)((_339 < 0.0019607844296842813f))) ? 0.0f : 1.0f))) + _375;
  float _398 = ((((((bool)((_340 > 0.998039186000824f))) ? 0.0f : 1.0f)) * _377) * ((((bool)((_340 < 0.0019607844296842813f))) ? 0.0f : 1.0f))) + _376;
  float _408 = ((saturate((1.0f - _255))) * (dot(float4(_396, _397, _398, _377), float4(0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f)))) * (cb0_015x);
  SV_Target.x = ((((_408 + _338) + RENODX_FX_DITHERING_STRENGTH * ((_396) * 0.003921568859368563f))));
  SV_Target.y = ((((_408 + _339) + RENODX_FX_DITHERING_STRENGTH * ((_397) * 0.003921568859368563f))));
  SV_Target.z = ((((_408 + _340) + RENODX_FX_DITHERING_STRENGTH * ((_398) * 0.003921568859368563f))));
  SV_Target.w = _255;

  return SV_Target;
}
