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
  float cb0_008x : packoffset(c008.x);
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
  float _59 = min(_57, (cb0_009x));
  float _60 = min(_58, (cb0_009y));
  float4 _61 = t0.SampleLevel(s0, float2(_59, _60), 0.0f);
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
  float _112 = (((_102.x) * 0.800000011920929f) + (((_88.x) + (_61.x)) * 0.10000000149011612f)) * (TEXCOORD_1.w);
  float _113 = ((((_88.y) * 0.699999988079071f) + ((_61.y) * 0.20000000298023224f)) + ((_102.y) * 0.10000000149011612f)) * (TEXCOORD_1.w);
  float _114 = ((((_88.z) * 0.20000000298023224f) + ((_61.z) * 0.10000000149011612f)) + ((_102.z) * 0.699999988079071f)) * (TEXCOORD_1.w);
  float _115 = dot(float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f), float3(_112, _113, _114));
  float4 _118 = t0.SampleLevel(s0, float2((min((_57 - (cb0_002x)), (cb0_009x))), _60), 0.0f);
  float _123 = (dot(float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f), float3((_118.x), (_118.y), (_118.z)))) * (TEXCOORD_1.w);
  float4 _126 = t0.SampleLevel(s0, float2((min((_57 + (cb0_002x)), (cb0_009x))), _60), 0.0f);
  float _131 = (dot(float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f), float3((_126.x), (_126.y), (_126.z)))) * (TEXCOORD_1.w);
  float4 _134 = t0.SampleLevel(s0, float2(_59, (min((_58 - (cb0_002y)), (cb0_009y)))), 0.0f);
  float _139 = (dot(float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f), float3((_134.x), (_134.y), (_134.z)))) * (TEXCOORD_1.w);
  float4 _142 = t0.SampleLevel(s0, float2(_59, (min((_58 + (cb0_002y)), (cb0_009y)))), 0.0f);
  float _147 = (dot(float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f), float3((_142.x), (_142.y), (_142.z)))) * (TEXCOORD_1.w);
  float _150 = (1.0f / (_115 + 1.0f)) * _115;
  float _175 = (max(0.0f, ((((cb0_008x) * 0.5f) * (((((_150 * 4.0f) - ((1.0f / (_123 + 1.0f)) * _123)) - ((1.0f / (_131 + 1.0f)) * _131)) - ((1.0f / (_139 + 1.0f)) * _139)) - ((1.0f / (_147 + 1.0f)) * _147))) + _150))) / (max(9.999999747378752e-06f, _150));
  float _176 = _175 * _112;
  float _177 = _175 * _113;
  float _178 = _175 * _114;
  float _182 = min(_25, (cb0_010x));
  float _183 = min(_26, (cb0_010y));
  float4 _184 = t2.SampleLevel(s2, float2(_182, _183), 0.0f);
  float4 _195 = t2.SampleLevel(s2, float2((min((_25 - _79), (cb0_010x))), (min((_26 - _81), (cb0_010y)))), 0.0f);
  float4 _209 = t2.SampleLevel(s2, float2((min((_79 + _25), (cb0_010x))), (min((_81 + _26), (cb0_010y)))), 0.0f);
  float _231 = _65 * 3.555555582046509f;
  float _232 = _66 * 3.555555582046509f;
  float _235 = (sqrt((dot(float2(_231, _232), float2(_231, _232))))) * 0.25f * RENODX_FX_VIGNETTE_STRENGTH;
  float _237 = (_235 * _235) + 1.0f;
  float _239 = 1.0f / (_237 * _237);
  float _240 = (((((((_209.x) * 0.800000011920929f) + (((_195.x) + (_184.x)) * 0.10000000149011612f)) * (TEXCOORD_1.w)) - _176) * (_184.w)) + _176) * _239;
  float _241 = ((((((((_195.y) * 0.699999988079071f) + ((_184.y) * 0.20000000298023224f)) + ((_209.y) * 0.10000000149011612f)) * (TEXCOORD_1.w)) - _177) * (_184.w)) + _177) * _239;
  float _242 = ((((((((_195.z) * 0.20000000298023224f) + ((_184.z) * 0.10000000149011612f)) + ((_209.z) * 0.699999988079071f)) * (TEXCOORD_1.w)) - _178) * (_184.w)) + _178) * _239;
  float4 _243 = t1.SampleLevel(s1, float2(_182, _183), 0.0f);
  float _256 = saturate((((dot(float3((_243.x), (_243.y), (_243.z)), float3((cb0_019x), (cb0_019x), (cb0_019x)))) + (cb0_018y)) + (((float4)(t6.SampleLevel(s6, float2(_27, _28), 0.0f))).x)));
  float _262 = saturate((((1.0f - (_256 * 2.0f)) * (cb0_018x)) + _256));
  float _263 = dot(float3(_240, _241, _242), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _270 = ((_240 - _263) * _262) + _263;
  float _271 = ((_241 - _263) * _262) + _263;
  float _272 = ((_242 - _263) * _262) + _263;
  float _280 = (saturate(((((cb0_000w) / ((((float4)(t4.SampleLevel(s4, float2((min(_27, (cb0_009x))), (min(_28, (cb0_009y)))), 0.0f))).x) - (cb0_000z))) + -500.0f) * 0.0020000000949949026f))) * 0.22499999403953552f;
  float4 _320 = t3.Sample(s3, float3((((saturate((((log2(((_270 + 0.002667719265446067f) + ((((_243.x) * 0.20000000298023224f) - _270) * (saturate(((cb0_001x) + _280))))))) * 0.0714285746216774f) + 0.6107269525527954f))) * 0.96875f) + 0.015625f), (((saturate((((log2(((_271 + 0.002667719265446067f) + ((saturate(((cb0_001y) + _280))) * (((_243.y) * 0.20000000298023224f) - _271))))) * 0.0714285746216774f) + 0.6107269525527954f))) * 0.96875f) + 0.015625f), (((saturate((((log2(((_272 + 0.002667719265446067f) + ((saturate(((cb0_001z) + _280))) * (((_243.z) * 0.20000000298023224f) - _272))))) * 0.0714285746216774f) + 0.6107269525527954f))) * 0.96875f) + 0.015625f)));
  float _324 = dot(float3((_320.x), (_320.y), (_320.z)), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _330 = floor(((TEXCOORD.x) / (cb0_002x)));
  float _331 = floor(((TEXCOORD.y) / (cb0_002y)));
  float _341 = (floor((((sin((_330 * 0.03999999910593033f))) * 2.0f) + (sin(((_331 * 0.09000000357627869f) + (_330 * 0.07000000029802322f))))))) + _330;
  float _342 = _341 + _331;
  float _343 = _341 - _331;
  float _350 = _342 - ((floor((_342 * 0.125f))) * 8.0f);
  float _351 = _343 - ((floor((_343 * 0.125f))) * 8.0f);
  float _353 = (dot(float3((_320.x), (_320.y), (_320.z)), float3((_320.x), (_320.y), (_320.z)))) * 0.8999999761581421f;
  float _378 = (_320.x) + 0.4000000059604645f;
  float _379 = (_320.y) + 0.4000000059604645f;
  float _380 = (_320.z) + 0.4000000059604645f;
  float _397 = ((((((float((uint)((bool)(((bool)((_353 > 0.699999988079071f))) || ((bool)(!(_351 == 0.0f))))))) * 0.75f) * (float((uint)((bool)(((bool)(!(_350 == 0.0f))) || ((bool)((_353 > 1.0f)))))))) * (float((uint)((bool)(((bool)(!(_350 == 4.0f))) || ((bool)((_353 > 0.3499999940395355f)))))))) * (float((uint)((bool)(((bool)((_353 > 0.18000000715255737f))) || ((bool)(!(_351 == 4.0f)))))))) * (float((uint)((bool)(((bool)(!(_350 == 2.0f))) || ((bool)((_353 > 0.10000000149011612f)))))))) * (float((uint)((bool)(((bool)((_353 > 0.019999999552965164f))) || ((bool)(!(_351 == 2.0f)))))));
  float _407 = (((_397 * (((_324 - _378) * 0.5f) + _378)) - (_320.x)) * (cb0_020x)) + (_320.x);
  float _408 = (((_397 * (((_324 - _379) * 0.5f) + _379)) - (_320.y)) * (cb0_020x)) + (_320.y);
  float _409 = (((_397 * (((_324 - _380) * 0.5f) + _380)) - (_320.z)) * (cb0_020x)) + (_320.z);
  float _412 = (cb0_003x) * 0.0009765625f;
  float _416 = frac((abs(_412)));
  float _422 = frac(((TEXCOORD.x) * 5.39870023727417f));
  float _423 = frac(((TEXCOORD.y) * 5.4421000480651855f));
  float _424 = frac((((((bool)((_412 >= (-0.0f - _412)))) ? _416 : (-0.0f - _416))) * 7103.59033203125f));
  float _428 = dot(float3(_423, _424, _422), float3((_422 + 21.53510093688965f), (_423 + 14.313699722290039f), (_424 + 15.324700355529785f)));
  float _429 = _428 + _422;
  float _430 = _428 + _423;
  float _431 = _428 + _424;
  float _432 = _429 * _430;
  float _444 = (frac((_432 * 97.59010314941406f))) + -0.5f;
  float _445 = (frac(((_431 * 93.83689880371094f) * _429))) + -0.5f;
  float _446 = (frac(((_431 * 91.69309997558594f) * _430))) + -0.5f;
  float _465 = ((frac((_432 * 95.43070220947266f))) + -0.5f) + ((((((bool)((_407 > 0.998039186000824f))) ? 0.0f : 1.0f)) * _444) * ((((bool)((_407 < 0.0019607844296842813f))) ? 0.0f : 1.0f)));
  float _466 = ((((((bool)((_408 > 0.998039186000824f))) ? 0.0f : 1.0f)) * _445) * ((((bool)((_408 < 0.0019607844296842813f))) ? 0.0f : 1.0f))) + _444;
  float _467 = ((((((bool)((_409 > 0.998039186000824f))) ? 0.0f : 1.0f)) * _446) * ((((bool)((_409 < 0.0019607844296842813f))) ? 0.0f : 1.0f))) + _445;
  float _477 = ((saturate((1.0f - _324))) * (dot(float4(_465, _466, _467, _446), float4(0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f)))) * (cb0_015x);
  SV_Target.x = ((((_477 + _407) + RENODX_FX_DITHERING_STRENGTH * ((_465) * 0.003921568859368563f))));
  SV_Target.y = ((((_477 + _408) + RENODX_FX_DITHERING_STRENGTH * ((_466) * 0.003921568859368563f))));
  SV_Target.z = ((((_477 + _409) + RENODX_FX_DITHERING_STRENGTH * ((_467) * 0.003921568859368563f))));
  SV_Target.w = _324;

  return SV_Target;
}