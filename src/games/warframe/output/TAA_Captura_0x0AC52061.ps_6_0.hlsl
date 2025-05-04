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
  float _57 = min(_55, (cb0_009x));
  float _58 = min(_56, (cb0_009y));
  float4 _59 = t0.SampleLevel(s0, float2(_57, _58), 0.0f);
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
  float _229 = _63 * 3.555555582046509f;
  float _230 = _64 * 3.555555582046509f;
  float _233 = (sqrt((dot(float2(_229, _230), float2(_229, _230))))) * 0.25f * RENODX_FX_VIGNETTE_STRENGTH;
  float _235 = (_233 * _233) + 1.0f;
  float _237 = 1.0f / (_235 * _235);
  float _238 = (((((((_207.x) * 0.800000011920929f) + (((_193.x) + (_182.x)) * 0.10000000149011612f)) * (TEXCOORD_1.w)) - _174) * (_182.w)) + _174) * _237;
  float _239 = ((((((((_193.y) * 0.699999988079071f) + ((_182.y) * 0.20000000298023224f)) + ((_207.y) * 0.10000000149011612f)) * (TEXCOORD_1.w)) - _175) * (_182.w)) + _175) * _237;
  float _240 = ((((((((_193.z) * 0.20000000298023224f) + ((_182.z) * 0.10000000149011612f)) + ((_207.z) * 0.699999988079071f)) * (TEXCOORD_1.w)) - _176) * (_182.w)) + _176) * _237;
  float4 _241 = t1.SampleLevel(s1, float2(_180, _181), 0.0f);
  float _252 = (saturate(((_52 + -500.0f) * 0.0020000000949949026f))) * 0.22499999403953552f;
  float _268 = ((saturate(((cb0_001x) + _252))) * (((_241.x) * 0.20000000298023224f) - _238)) + _238;
  float _269 = ((saturate(((cb0_001y) + _252))) * (((_241.y) * 0.20000000298023224f) - _239)) + _239;
  float _270 = ((saturate(((cb0_001z) + _252))) * (((_241.z) * 0.20000000298023224f) - _240)) + _240;
  float4 _292 = t3.Sample(s3, float3((((saturate((((log2((_268 + 0.002667719265446067f))) * 0.0714285746216774f) + 0.6107269525527954f))) * 0.96875f) + 0.015625f), (((saturate((((log2((_269 + 0.002667719265446067f))) * 0.0714285746216774f) + 0.6107269525527954f))) * 0.96875f) + 0.015625f), (((saturate((((log2((_270 + 0.002667719265446067f))) * 0.0714285746216774f) + 0.6107269525527954f))) * 0.96875f) + 0.015625f)));
  float _302 = saturate(((_52 - (cb0_011x)) / ((cb0_011y) - (cb0_011x))));
  float _306 = max(0.0f, (_268 + -0.004000000189989805f));
  float _307 = max(0.0f, (_269 + -0.004000000189989805f));
  float _308 = max(0.0f, (_270 + -0.004000000189989805f));
  float _309 = _306 * 6.199999809265137f;
  float _310 = _307 * 6.199999809265137f;
  float _311 = _308 * 6.199999809265137f;
  float _327 = ((_309 + 0.5f) * _306) / (((_309 + 1.7000000476837158f) * _306) + 0.05999999865889549f);
  float _328 = ((_310 + 0.5f) * _307) / (((_310 + 1.7000000476837158f) * _307) + 0.05999999865889549f);
  float _329 = ((_311 + 0.5f) * _308) / (((_311 + 1.7000000476837158f) * _308) + 0.05999999865889549f);
  float _336 = (((_292.x) - _327) * _302) + _327;
  float _337 = (((_292.y) - _328) * _302) + _328;
  float _338 = (((_292.z) - _329) * _302) + _329;
  float _339 = dot(float3(_336, _337, _338), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _342 = (cb0_003x) * 0.0009765625f;
  float _346 = frac((abs(_342)));
  float _352 = frac(((TEXCOORD.x) * 5.39870023727417f));
  float _353 = frac(((TEXCOORD.y) * 5.4421000480651855f));
  float _354 = frac((((((bool)((_342 >= (-0.0f - _342)))) ? _346 : (-0.0f - _346))) * 7103.59033203125f));
  float _358 = dot(float3(_353, _354, _352), float3((_352 + 21.53510093688965f), (_353 + 14.313699722290039f), (_354 + 15.324700355529785f)));
  float _359 = _358 + _352;
  float _360 = _358 + _353;
  float _361 = _358 + _354;
  float _362 = _359 * _360;
  float _374 = (frac((_362 * 97.59010314941406f))) + -0.5f;
  float _375 = (frac(((_361 * 93.83689880371094f) * _359))) + -0.5f;
  float _376 = (frac(((_361 * 91.69309997558594f) * _360))) + -0.5f;
  float _395 = ((frac((_362 * 95.43070220947266f))) + -0.5f) + ((((((bool)((_336 < 0.0019607844296842813f))) ? 0.0f : 1.0f)) * ((((bool)((_336 > 0.998039186000824f))) ? 0.0f : 1.0f))) * _374);
  float _396 = ((((((bool)((_337 < 0.0019607844296842813f))) ? 0.0f : 1.0f)) * ((((bool)((_337 > 0.998039186000824f))) ? 0.0f : 1.0f))) * _375) + _374;
  float _397 = ((((((bool)((_338 < 0.0019607844296842813f))) ? 0.0f : 1.0f)) * ((((bool)((_338 > 0.998039186000824f))) ? 0.0f : 1.0f))) * _376) + _375;
  float _410 = ((saturate((1.0f - _339))) * (dot(float4(_395, _396, _397, _376), float4(0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f)))) * (cb0_015x);
  SV_Target.x = ((((RENODX_FX_DITHERING_STRENGTH * ((_395) * 0.003921568859368563f) + _336) + _410)));
  SV_Target.y = ((((RENODX_FX_DITHERING_STRENGTH * ((_396) * 0.003921568859368563f) + _337) + _410)));
  SV_Target.z = ((((RENODX_FX_DITHERING_STRENGTH * ((_397) * 0.003921568859368563f) + _338) + _410)));
  SV_Target.w = _339;

  return SV_Target;
}
