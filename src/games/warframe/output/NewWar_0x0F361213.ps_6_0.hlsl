#include "../shared.h"
#include "../common.hlsl"

Texture2D<float4> t0 : register(t0);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t2 : register(t2);

Texture3D<float4> t3 : register(t3);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t6 : register(t10);

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
};

SamplerState s0 : register(s0);

SamplerState s1 : register(s1);

SamplerState s2 : register(s2);

SamplerState s3 : register(s3);

SamplerState s4 : register(s4);

SamplerState s5 : register(s5);

SamplerState s6 : register(s10);

float4 main(
  noperspective float4 SV_Position : SV_Position,
  linear float4 TEXCOORD : TEXCOORD,
  linear float4 TEXCOORD_1 : TEXCOORD1
) : SV_Target {
  float4 SV_Target;
  float _27 = min(((cb0_014x) * (TEXCOORD.x)), (cb0_009x));
  float _28 = min(((cb0_014y) * (TEXCOORD.y)), (cb0_009y));
  float4 _29 = t6.SampleLevel(s6, float2(_27, _28), 0.0f);
  float _54 = (cb0_000w) / ((((float4)(t4.SampleLevel(s4, float2((min(_27, (cb0_009x))), (min(_28, (cb0_009y)))), 0.0f))).x) - (cb0_000z));
  float _60 = saturate((((TEXCOORD.y) * (TEXCOORD.y)) * (cb0_006x)));
  float _63 = saturate(((((bool)(((((float4)(t4.SampleLevel(s4, float2((min(_27, (cb0_009x))), (min(_28, (cb0_009y)))), 0.0f))).x) <= 9.999999747378752e-06f))) ? 1.0f : (_54 * 0.009999999776482582f))));
  float _67 = ((_63 * _63) * (1.0f - _60)) + _60;
  float4 _85 = t5.Sample(s5, float2(((((cb0_005z) * (TEXCOORD.x)) + -0.33399999141693115f) + (frac(((cb0_003x) * (cb0_006y))))), ((((cb0_005w) * (TEXCOORD.y)) + -0.6669999957084656f) + (frac(((cb0_003x) * (cb0_006z)))))));
  float4 _104 = t5.Sample(s5, float2((((cb0_005z) * (TEXCOORD.x)) - (frac(((cb0_006y) * (cb0_003x))))), (((cb0_005w) * (TEXCOORD.y)) - (frac(((cb0_006z) * (cb0_003x)))))));
  float _129 = (((((cb0_005x) * _67) * (cb0_002x)) * (cb0_002z)) * ((((_104.x) + (_85.x)) * 2.0f) + -2.0f)) + (TEXCOORD.x);
  float _130 = (((((cb0_005y) * _67) * (cb0_002y)) * (cb0_002w)) * ((((_104.y) + (_85.y)) * 2.0f) + -2.0f)) + (TEXCOORD.y);
  float _133 = (_129 + ((((cb0_002x) * 32.0f) * (cb0_002z)) * (((_29.x) * 2.0f) + -1.0f))) * (cb0_002z);
  float _134 = (_130 - (((cb0_002w) * (cb0_002y)) * (((_29.y) * 64.0f) + -32.0f))) * (cb0_002w);
  float _138 = _129 * (cb0_014x);
  float _139 = _130 * (cb0_014y);
  float4 _145 = t0.SampleLevel(s0, float2((min(_133, (cb0_009x))), (min(_134, (cb0_009y)))), 0.0f);
  float _151 = (cb0_002z) * ((TEXCOORD.x) + -0.5f);
  float _152 = (cb0_002w) * ((TEXCOORD.y) + -0.5f);
  float _156 = sqrt(((_151 * _151) + (_152 * _152)));
  float _161 = ((_156 * _156) * (cb0_004x * RENODX_FX_CA_STRENGTH)) / _156;
  float _163 = (_151 * (cb0_002x)) * _161;
  float _165 = (_152 * (cb0_002y)) * _161;
  float4 _172 = t0.SampleLevel(s0, float2((min((_133 - _163), (cb0_009x))), (min((_134 - _165), (cb0_009y)))), 0.0f);
  float4 _186 = t0.SampleLevel(s0, float2((min((_163 + _133), (cb0_009x))), (min((_165 + _134), (cb0_009y)))), 0.0f);
  float _193 = ((_186.x) * 0.800000011920929f) + (((_172.x) + (_145.x)) * 0.10000000149011612f);
  float _194 = (((_172.y) * 0.699999988079071f) + ((_145.y) * 0.20000000298023224f)) + ((_186.y) * 0.10000000149011612f);
  float _195 = (((_172.z) * 0.20000000298023224f) + ((_145.z) * 0.10000000149011612f)) + ((_186.z) * 0.699999988079071f);
  float _199 = min(_138, (cb0_010x));
  float _200 = min(_139, (cb0_010y));
  float4 _201 = t2.SampleLevel(s2, float2(_199, _200), 0.0f);
  float4 _212 = t2.SampleLevel(s2, float2((min((_138 - _163), (cb0_010x))), (min((_139 - _165), (cb0_010y)))), 0.0f);
  float4 _224 = t2.SampleLevel(s2, float2((min((_163 + _138), (cb0_010x))), (min((_165 + _139), (cb0_010y)))), 0.0f);
  float _247 = ((TEXCOORD.x) + -0.5f) * 3.555555582046509f;
  float _248 = ((TEXCOORD.y) + -0.5f) * 3.555555582046509f;
  float _251 = (sqrt((dot(float2(_247, _248), float2(_247, _248))))) * 0.25f * RENODX_FX_VIGNETTE_STRENGTH;
  float _253 = (_251 * _251) + 1.0f;
  float _256 = (1.0f / (_253 * _253)) * (TEXCOORD_1.w);
  float _257 = (((((((_212.x) + (_201.x)) * 0.10000000149011612f) - _193) + ((_224.x) * 0.800000011920929f)) * (_201.w)) + _193) * _256;
  float _258 = (((((((_201.y) * 0.20000000298023224f) - _194) + ((_212.y) * 0.699999988079071f)) + ((_224.y) * 0.10000000149011612f)) * (_201.w)) + _194) * _256;
  float _259 = (((((((_201.z) * 0.10000000149011612f) - _195) + ((_212.z) * 0.20000000298023224f)) + ((_224.z) * 0.699999988079071f)) * (_201.w)) + _195) * _256;
  float4 _260 = t1.SampleLevel(s1, float2(_199, _200), 0.0f);
  float _271 = (saturate(((_54 + -500.0f) * 0.0020000000949949026f))) * 0.22499999403953552f;
  float4 _311 = t3.Sample(s3, float3((((saturate((((log2(((_257 + 0.002667719265446067f) + ((saturate(((cb0_001x) + _271))) * (((_260.x) * 0.20000000298023224f) - _257))))) * 0.0714285746216774f) + 0.6107269525527954f))) * 0.96875f) + 0.015625f), (((saturate((((log2(((_258 + 0.002667719265446067f) + ((saturate(((cb0_001y) + _271))) * (((_260.y) * 0.20000000298023224f) - _258))))) * 0.0714285746216774f) + 0.6107269525527954f))) * 0.96875f) + 0.015625f), (((saturate((((log2(((_259 + 0.002667719265446067f) + ((saturate(((cb0_001z) + _271))) * (((_260.z) * 0.20000000298023224f) - _259))))) * 0.0714285746216774f) + 0.6107269525527954f))) * 0.96875f) + 0.015625f)));
  float _315 = dot(float3((_311.x), (_311.y), (_311.z)), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _318 = (cb0_003x) * 0.0009765625f;
  float _322 = frac((abs(_318)));
  float _328 = frac(((TEXCOORD.x) * 5.39870023727417f));
  float _329 = frac(((TEXCOORD.y) * 5.4421000480651855f));
  float _330 = frac((((((bool)((_318 >= (-0.0f - _318)))) ? _322 : (-0.0f - _322))) * 7103.59033203125f));
  float _334 = dot(float3(_329, _330, _328), float3((_328 + 21.53510093688965f), (_329 + 14.313699722290039f), (_330 + 15.324700355529785f)));
  float _335 = _334 + _328;
  float _336 = _334 + _329;
  float _337 = _334 + _330;
  float _338 = _335 * _336;
  float _350 = (frac((_338 * 97.59010314941406f))) + -0.5f;
  float _351 = (frac(((_337 * 93.83689880371094f) * _335))) + -0.5f;
  float _352 = (frac(((_337 * 91.69309997558594f) * _336))) + -0.5f;
  float _371 = ((frac((_338 * 95.43070220947266f))) + -0.5f) + ((((((bool)(((_311.x) < 0.0019607844296842813f))) ? 0.0f : 1.0f)) * ((((bool)(((_311.x) > 0.998039186000824f))) ? 0.0f : 1.0f))) * _350);
  float _372 = ((((((bool)(((_311.y) < 0.0019607844296842813f))) ? 0.0f : 1.0f)) * ((((bool)(((_311.y) > 0.998039186000824f))) ? 0.0f : 1.0f))) * _351) + _350;
  float _373 = ((((((bool)(((_311.z) < 0.0019607844296842813f))) ? 0.0f : 1.0f)) * ((((bool)(((_311.z) > 0.998039186000824f))) ? 0.0f : 1.0f))) * _352) + _351;
  float _386 = ((saturate((1.0f - _315))) * (dot(float4(_371, _372, _373, _352), float4(0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f)))) * (cb0_015x);
  SV_Target.x = ((((RENODX_FX_DITHERING_STRENGTH * ((_371) * 0.003921568859368563f) + (_311.x)) + _386)));
  SV_Target.y = ((((RENODX_FX_DITHERING_STRENGTH * ((_372) * 0.003921568859368563f) + (_311.y)) + _386)));
  SV_Target.z = ((((RENODX_FX_DITHERING_STRENGTH * ((_373) * 0.003921568859368563f) + (_311.z)) + _386)));
  SV_Target.w = _315;

  return SV_Target;
}
