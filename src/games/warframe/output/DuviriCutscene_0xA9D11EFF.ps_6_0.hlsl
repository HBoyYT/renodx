#include "../shared.h"
#include "../common.hlsl"

Texture2D<float4> t0 : register(t0);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t2 : register(t2);

Texture3D<float4> t3 : register(t3);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t6 : register(t6);

cbuffer cb0 : register(b0) {
  float cb0_001x : packoffset(c001.x);
  float cb0_001y : packoffset(c001.y);
  float cb0_001z : packoffset(c001.z);
  float cb0_002x : packoffset(c002.x);
  float cb0_002y : packoffset(c002.y);
  float cb0_002z : packoffset(c002.z);
  float cb0_002w : packoffset(c002.w);
  float cb0_003x : packoffset(c003.x);
  float cb0_004x : packoffset(c004.x);
  float cb0_006x : packoffset(c006.x);
  float cb0_006y : packoffset(c006.y);
  float cb0_007x : packoffset(c007.x);
  float cb0_007y : packoffset(c007.y);
  float cb0_008x : packoffset(c008.x);
  float cb0_008y : packoffset(c008.y);
  float cb0_009x : packoffset(c009.x);
};

SamplerState s0 : register(s0);

SamplerState s1 : register(s1);

SamplerState s2 : register(s2);

SamplerState s3 : register(s3);

SamplerState s5 : register(s5);

SamplerState s9 : register(s9);

SamplerState s6 : register(s6);

float4 main(
  noperspective float4 SV_Position : SV_Position,
  linear float4 TEXCOORD : TEXCOORD,
  linear float4 TEXCOORD_1 : TEXCOORD1
) : SV_Target {
  float4 SV_Target;
  float4 _29 = t9.SampleLevel(s9, float2(min((cb0_002z * TEXCOORD.x), cb0_006x), min((cb0_002w * TEXCOORD.y), cb0_006y)), 0.0f);
  float _45 = ((((cb0_002x * 32.0f) * cb0_002z) * ((_29.x * 2.0f) + -1.0f)) + TEXCOORD.x) * cb0_002z;
  float _46 = (TEXCOORD.y - ((cb0_002w * cb0_002y) * ((_29.y * 64.0f) + -32.0f))) * cb0_002w;
  float4 _49 = t6.SampleLevel(s6, float2(min(_45, cb0_006x), min(_46, cb0_006y)), 0.0f);
  float _52 = floor(_49.x * 3.0f);
  float _59 = abs(frac((_52 * 0.012000000104308128f) + _45));
  float _60 = abs(frac((_52 * 0.0020000000949949026f) + _46));
  float4 _63 = t6.SampleLevel(s6, float2(min(_59, cb0_006x), min(_60, cb0_006y)), 0.0f);
  float _66 = floor(_63.x * 4.0f);
  float _73 = abs(frac(_59 - (_66 * 0.009999999776482582f)));
  float _74 = abs(frac(_60 - (_66 * 0.007699999958276749f)));
  float _79 = cb0_008x * TEXCOORD.x;
  float _80 = cb0_008y * TEXCOORD.y;
  float4 _83 = t0.SampleLevel(s0, float2(min(_73, cb0_006x), min(_74, cb0_006y)), 0.0f);
  float _89 = cb0_002z * (TEXCOORD.x + -0.5f);
  float _90 = cb0_002w * (TEXCOORD.y + -0.5f);
  float _94 = sqrt((_89 * _89) + (_90 * _90));
  float _99 = ((_94 * _94) * cb0_004x) / _94;
  float _101 = (_89 * cb0_002x) * _99;
  float _103 = (_90 * cb0_002y) * _99;
  float4 _110 = t0.SampleLevel(s0, float2(min((_73 - _101), cb0_006x), min((_74 - _103), cb0_006y)), 0.0f);
  float4 _124 = t0.SampleLevel(s0, float2(min((_101 + _73), cb0_006x), min((_103 + _74), cb0_006y)), 0.0f);
  float _131 = (_124.x * 0.800000011920929f) + ((_110.x + _83.x) * 0.10000000149011612f);
  float _132 = ((_110.y * 0.699999988079071f) + (_83.y * 0.20000000298023224f)) + (_124.y * 0.10000000149011612f);
  float _133 = ((_110.z * 0.20000000298023224f) + (_83.z * 0.10000000149011612f)) + (_124.z * 0.699999988079071f);
  float _137 = min(_79, cb0_007x);
  float _138 = min(_80, cb0_007y);
  float4 _139 = t2.SampleLevel(s2, float2(_137, _138), 0.0f);
  float4 _150 = t2.SampleLevel(s2, float2(min((_79 - _101), cb0_007x), min((_80 - _103), cb0_007y)), 0.0f);
  float4 _162 = t2.SampleLevel(s2, float2(min((_101 + _79), cb0_007x), min((_103 + _80), cb0_007y)), 0.0f);
  float4 _180 = t1.SampleLevel(s1, float2(_137, _138), 0.0f);
  float4 _221 = t3.Sample(s3, float3(((saturate((log2(((((((((_150.x + _139.x) * 0.10000000149011612f) - _131) + (_162.x * 0.800000011920929f)) * _139.w) + _131) * TEXCOORD_1.w) + 0.002667719265446067f) + (cb0_001x * _180.x)) * 0.0714285746216774f) + 0.6107269525527954f) * 0.96875f) + 0.015625f), ((saturate((log2(((((((((_139.y * 0.20000000298023224f) - _132) + (_150.y * 0.699999988079071f)) + (_162.y * 0.10000000149011612f)) * _139.w) + _132) * TEXCOORD_1.w) + 0.002667719265446067f) + (cb0_001y * _180.y)) * 0.0714285746216774f) + 0.6107269525527954f) * 0.96875f) + 0.015625f), ((saturate((log2(((((((((_139.z * 0.10000000149011612f) - _133) + (_150.z * 0.20000000298023224f)) + (_162.z * 0.699999988079071f)) * _139.w) + _133) * TEXCOORD_1.w) + 0.002667719265446067f) + (cb0_001z * _180.z)) * 0.0714285746216774f) + 0.6107269525527954f) * 0.96875f) + 0.015625f)));
  float _225 = dot(float3(_221.x, _221.y, _221.z), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _227 = saturate(max(_49.x, _63.x)) * 0.75f;
  float4 _242 = t6.SampleLevel(s6, float2(min(_73, cb0_006x), min(_74, cb0_006y)), 0.0f);
  float _244 = _73 + 0.5f;
  float _245 = _74 + -0.5f;
  float _247 = rsqrt(dot(float3(_244, _245, 0.0f), float3(_244, _245, 0.0f)));
  float _248 = _247 * _244;
  float _249 = _247 * _245;
  float _252 = cb0_003x * 0.05999999865889549f;
  float4 _257 = t5.SampleLevel(s5, float2(min((_252 + _73), cb0_006x), min((_252 + _74), cb0_006y)), 0.0f);
  float _259 = _257.x * 0.001953125f;
  float _261 = (_249 * _249) * _259;
  float _263 = (_248 * _248) * _259;
  float _264 = _261 + _73;
  float _265 = _263 + _74;
  float4 _268 = t6.SampleLevel(s6, float2(min(_264, cb0_006x), min(_265, cb0_006y)), 0.0f);
  float _274 = _264 + _261;
  float _275 = _265 + _263;
  float4 _278 = t6.SampleLevel(s6, float2(min(_274, cb0_006x), min(_275, cb0_006y)), 0.0f);
  float _285 = _274 + _261;
  float _286 = _275 + _263;
  float4 _289 = t6.SampleLevel(s6, float2(min(_285, cb0_006x), min(_286, cb0_006y)), 0.0f);
  float _296 = _285 + _261;
  float _297 = _286 + _263;
  float4 _300 = t6.SampleLevel(s6, float2(min(_296, cb0_006x), min(_297, cb0_006y)), 0.0f);
  float _307 = _296 + _261;
  float _308 = _297 + _263;
  float4 _311 = t6.SampleLevel(s6, float2(min(_307, cb0_006x), min(_308, cb0_006y)), 0.0f);
  float _318 = _307 + _261;
  float _319 = _308 + _263;
  float4 _322 = t6.SampleLevel(s6, float2(min(_318, cb0_006x), min(_319, cb0_006y)), 0.0f);
  float _329 = _318 + _261;
  float _330 = _319 + _263;
  float4 _333 = t6.SampleLevel(s6, float2(min(_329, cb0_006x), min(_330, cb0_006y)), 0.0f);
  float4 _344 = t6.SampleLevel(s6, float2(min((_329 + _261), cb0_006x), min((_330 + _263), cb0_006y)), 0.0f);
  float _353 = saturate(1.0f - ((((((((saturate(abs(_242.x - _278.x) + -0.014999999664723873f) + saturate(abs(_242.x - _268.x) + -0.014999999664723873f)) + saturate(abs(_242.x - _289.x) + -0.014999999664723873f)) + saturate(abs(_242.x - _300.x) + -0.014999999664723873f)) + saturate(abs(_242.x - _311.x) + -0.014999999664723873f)) + saturate(abs(_242.x - _322.x) + -0.014999999664723873f)) + saturate(abs(_242.x - _333.x) + -0.014999999664723873f)) + saturate(abs(_242.x - _344.x) + -0.014999999664723873f)) * 0.25f));
  float _355 = (_353 * _353) * _353;
  float _356 = _355 * ((_227 * (_225 - _221.x)) + _221.x);
  float _357 = _355 * ((_227 * (_225 - _221.y)) + _221.y);
  float _358 = _355 * ((_227 * (_225 - _221.z)) + _221.z);
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
  float _412 = (frac(_379 * 95.43070220947266f) + -0.5f) + ((select((_356 < 0.0019607844296842813f), 0.0f, 1.0f) * select((_356 > 0.998039186000824f), 0.0f, 1.0f)) * _391);
  float _413 = ((select((_357 < 0.0019607844296842813f), 0.0f, 1.0f) * select((_357 > 0.998039186000824f), 0.0f, 1.0f)) * _392) + _391;
  float _414 = ((select((_358 < 0.0019607844296842813f), 0.0f, 1.0f) * select((_358 > 0.998039186000824f), 0.0f, 1.0f)) * _393) + _392;
  float _427 = (saturate(1.0f - _225) * dot(float4(_412, _413, _414, _393), float4(0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f))) * cb0_009x;
  SV_Target.x = (((RENODX_FX_DITHERING_STRENGTH * (_412 * 0.003921568859368563f) + _356)) + _427);
  SV_Target.y = (((RENODX_FX_DITHERING_STRENGTH * (_413 * 0.003921568859368563f) + _357)) + _427);
  SV_Target.z = (((RENODX_FX_DITHERING_STRENGTH * (_414 * 0.003921568859368563f) + _358)) + _427);
  SV_Target.w = _225;
  return SV_Target;
}
