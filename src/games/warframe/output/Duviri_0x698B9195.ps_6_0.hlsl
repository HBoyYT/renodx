#include "../common.hlsl"
#include "../shared.h"

Texture2D<float4> t0 : register(t0);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t2 : register(t2);

Texture3D<float4> t3 : register(t3);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t8 : register(t8);

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
  float cb0_016x : packoffset(c016.x);
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

SamplerState s10 : register(s10);

SamplerState s8 : register(s8);

SamplerState s6 : register(s6);

float4 main(
  noperspective float4 SV_Position : SV_Position,
  linear float4 TEXCOORD : TEXCOORD,
  linear float4 TEXCOORD_1 : TEXCOORD1
) : SV_Target {
  float4 SV_Target;
  float _27 = cb0_014x * TEXCOORD.x;
  float _28 = cb0_014y * TEXCOORD.y;
  float _29 = min(_27, cb0_009x);
  float _30 = min(_28, cb0_009y);
  float4 _31 = t10.SampleLevel(s10, float2(_29, _30), 0.0f);
  float4 _50 = t4.SampleLevel(s4, float2(min(_29, cb0_009x), min(_30, cb0_009y)), 0.0f);
  float _59 = ((((cb0_002x * 32.0f) * cb0_002z) * ((_31.x * 2.0f) + -1.0f)) + TEXCOORD.x) * cb0_002z;
  float _60 = (TEXCOORD.y - ((cb0_002w * cb0_002y) * ((_31.y * 64.0f) + -32.0f))) * cb0_002w;
  float4 _63 = t0.SampleLevel(s0, float2(min(_59, cb0_009x), min(_60, cb0_009y)), 0.0f);
  float _67 = TEXCOORD.x + -0.5f;
  float _68 = TEXCOORD.y + -0.5f;
  float _69 = cb0_002z * _67;
  float _70 = cb0_002w * _68;
  float _74 = sqrt((_69 * _69) + (_70 * _70));
  float _79 = ((_74 * _74) * cb0_004x * RENODX_FX_CA_STRENGTH) / _74;
  float _81 = (_69 * cb0_002x) * _79;
  float _83 = (_70 * cb0_002y) * _79;
  float4 _90 = t0.SampleLevel(s0, float2(min((_59 - _81), cb0_009x), min((_60 - _83), cb0_009y)), 0.0f);
  float4 _104 = t0.SampleLevel(s0, float2(min((_81 + _59), cb0_009x), min((_83 + _60), cb0_009y)), 0.0f);
  float _111 = (_104.x * 0.800000011920929f) + ((_90.x + _63.x) * 0.10000000149011612f);
  float _112 = ((_90.y * 0.699999988079071f) + (_63.y * 0.20000000298023224f)) + (_104.y * 0.10000000149011612f);
  float _113 = ((_90.z * 0.20000000298023224f) + (_63.z * 0.10000000149011612f)) + (_104.z * 0.699999988079071f);
  float _117 = min(_27, cb0_010x);
  float _118 = min(_28, cb0_010y);
  float4 _119 = t2.SampleLevel(s2, float2(_117, _118), 0.0f);
  float4 _130 = t2.SampleLevel(s2, float2(min((_27 - _81), cb0_010x), min((_28 - _83), cb0_010y)), 0.0f);
  float4 _142 = t2.SampleLevel(s2, float2(min((_81 + _27), cb0_010x), min((_83 + _28), cb0_010y)), 0.0f);
  float _163 = _67 * 3.555555582046509f;
  float _164 = _68 * 3.555555582046509f;
  float _167 = sqrt(dot(float2(_163, _164), float2(_163, _164))) * 0.25f * RENODX_FX_VIGNETTE_STRENGTH;
  float _169 = (_167 * _167) + 1.0f;
  float _172 = (1.0f / (_169 * _169)) * TEXCOORD_1.w;
  float _173 = ((((((_130.x + _119.x) * 0.10000000149011612f) - _111) + (_142.x * 0.800000011920929f)) * _119.w) + _111) * _172;
  float _174 = ((((((_119.y * 0.20000000298023224f) - _112) + (_130.y * 0.699999988079071f)) + (_142.y * 0.10000000149011612f)) * _119.w) + _112) * _172;
  float _175 = ((((((_119.z * 0.10000000149011612f) - _113) + (_130.z * 0.20000000298023224f)) + (_142.z * 0.699999988079071f)) * _119.w) + _113) * _172;
  float4 _176 = t1.SampleLevel(s1, float2(_117, _118), 0.0f);
  float4 _186 = t6.SampleLevel(s6, float2(_29, _30), 0.0f);
  float _189 = saturate((dot(float3(_176.x, _176.y, _176.z), float3(cb0_019x, cb0_019x, cb0_019x)) + cb0_018y) + _186.x);
  float _195 = saturate(((1.0f - (_189 * 2.0f)) * cb0_018x) + _189);
  float _196 = dot(float3(_173, _174, _175), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _203 = ((_173 - _196) * _195) + _196;
  float _204 = ((_174 - _196) * _195) + _196;
  float _205 = ((_175 - _196) * _195) + _196;
  float _213 = saturate(((cb0_000w / (_50.x - cb0_000z)) + -500.0f) * 0.0020000000949949026f) * 0.22499999403953552f;
  float _241 = exp2(log2(((((_176.x * 0.20000000298023224f) - _203) * saturate(shader_injection.fx_bloom_strength + _213)) + _203) * 0.009999999776482582f) * 0.1593017578125f);
  float _242 = exp2(log2(((saturate(shader_injection.fx_bloom_strength + _213) * ((_176.y * 0.20000000298023224f) - _204)) + _204) * 0.009999999776482582f) * 0.1593017578125f);
  float _243 = exp2(log2(((saturate(shader_injection.fx_bloom_strength + _213) * ((_176.z * 0.20000000298023224f) - _205)) + _205) * 0.009999999776482582f) * 0.1593017578125f);
  float4 _274 = t3.Sample(s3, float3(((exp2(log2(((_241 * 18.8515625f) + 0.8359375f) / ((_241 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f), ((exp2(log2(((_242 * 18.8515625f) + 0.8359375f) / ((_242 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f), ((exp2(log2(((_243 * 18.8515625f) + 0.8359375f) / ((_243 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f)));
  float _278 = dot(float3(_274.x, _274.y, _274.z), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _284 = floor(TEXCOORD.x / cb0_002x);
  float _285 = floor(TEXCOORD.y / cb0_002y);
  float _295 = floor((sin(_284 * 0.03999999910593033f) * 2.0f) + sin((_285 * 0.09000000357627869f) + (_284 * 0.07000000029802322f))) + _284;
  float _296 = _295 + _285;
  float _297 = _295 - _285;
  float _304 = _296 - (floor(_296 * 0.125f) * 8.0f);
  float _305 = _297 - (floor(_297 * 0.125f) * 8.0f);
  float _307 = dot(float3(_274.x, _274.y, _274.z), float3(_274.x, _274.y, _274.z)) * 0.8999999761581421f;
  float _332 = _274.x + 0.4000000059604645f;
  float _333 = _274.y + 0.4000000059604645f;
  float _334 = _274.z + 0.4000000059604645f;
  float _351 = (((((float((bool)((bool)((bool)(_307 > 0.699999988079071f) || ((bool)(!(_305 == 0.0f)))))) * 0.75f) * float((bool)((bool)(((bool)(!(_304 == 0.0f))) || (bool)(_307 > 1.0f))))) * float((bool)((bool)(((bool)(!(_304 == 4.0f))) || (bool)(_307 > 0.3499999940395355f))))) * float((bool)((bool)((bool)(_307 > 0.18000000715255737f) || ((bool)(!(_305 == 4.0f))))))) * float((bool)((bool)(((bool)(!(_304 == 2.0f))) || (bool)(_307 > 0.10000000149011612f))))) * float((bool)((bool)((bool)(_307 > 0.019999999552965164f) || ((bool)(!(_305 == 2.0f))))));
  float _361 = (((_351 * (lerp(_332, _278, 0.5f))) - _274.x) * cb0_020x) + _274.x;
  float _362 = (((_351 * (lerp(_333, _278, 0.5f))) - _274.y) * cb0_020x) + _274.y;
  float _363 = (((_351 * (lerp(_334, _278, 0.5f))) - _274.z) * cb0_020x) + _274.z;
  float _366 = cb0_003x * 0.0009765625f;
  float _370 = frac(abs(_366));
  float _376 = frac(TEXCOORD.x * 5.39870023727417f);
  float _377 = frac(TEXCOORD.y * 5.4421000480651855f);
  float _378 = frac(select((_366 >= (-0.0f - _366)), _370, (-0.0f - _370)) * 7103.59033203125f);
  float _382 = dot(float3(_377, _378, _376), float3((_376 + 21.53510093688965f), (_377 + 14.313699722290039f), (_378 + 15.324700355529785f)));
  float _383 = _382 + _376;
  float _384 = _382 + _377;
  float _385 = _382 + _378;
  float _386 = _383 * _384;
  float _398 = frac(_386 * 97.59010314941406f) + -0.5f;
  float _399 = frac((_385 * 93.83689880371094f) * _383) + -0.5f;
  float _400 = frac((_385 * 91.69309997558594f) * _384) + -0.5f;
  float _419 = (frac(_386 * 95.43070220947266f) + -0.5f) + ((select((_361 > 0.998039186000824f), 0.0f, 1.0f) * _398) * select((_361 < 0.0019607844296842813f), 0.0f, 1.0f));
  float _420 = ((select((_362 > 0.998039186000824f), 0.0f, 1.0f) * _399) * select((_362 < 0.0019607844296842813f), 0.0f, 1.0f)) + _398;
  float _421 = ((select((_363 > 0.998039186000824f), 0.0f, 1.0f) * _400) * select((_363 < 0.0019607844296842813f), 0.0f, 1.0f)) + _399;
  float _431 = (saturate(1.0f - _278) * dot(float4(_419, _420, _421, _400), float4(0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f))) * cb0_015x;
  float _438 = saturate((_431 + _361) + (_419 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH));
  float _439 = saturate((_431 + _362) + (_420 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH));
  float _440 = saturate((_431 + _363) + (_421 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH));
  float4 _441 = t8.Sample(s8, float2(TEXCOORD.x, TEXCOORD.y));
  // float _597;
  // float _598;
  // float _599;
  // [branch]
  // if (!(_441.w < 9.999999747378752e-05f)) {
  //   float _450 = cb0_016x * 9.999999747378752e-05f;
  //   float _457 = (pow(_438, 0.012683313339948654f));
  //   float _458 = (pow(_439, 0.012683313339948654f));
  //   float _459 = (pow(_440, 0.012683313339948654f));
  //   float _484 = exp2(log2(max((_457 + -0.8359375f), 0.0f) / (18.8515625f - (_457 * 18.6875f))) * 6.277394771575928f) / _450;
  //   float _485 = exp2(log2(max((_458 + -0.8359375f), 0.0f) / (18.8515625f - (_458 * 18.6875f))) * 6.277394771575928f) / _450;
  //   float _486 = exp2(log2(max((_459 + -0.8359375f), 0.0f) / (18.8515625f - (_459 * 18.6875f))) * 6.277394771575928f) / _450;
  //   float _489 = mad(-0.07283999770879745f, _486, mad(-0.5876560211181641f, _485, (_484 * 1.6604959964752197f)));
  //   float _492 = mad(-0.00834800023585558f, _486, mad(1.1328949928283691f, _485, (_484 * -0.12454699724912643f)));
  //   float _495 = mad(1.118751049041748f, _486, mad(-0.10059700161218643f, _485, (_484 * -0.018154000863432884f)));
  //   float _520 = 1.0f - _441.w;
  //   float _524 = (select((_489 <= 0.0031308000907301903f), (_489 * 12.920000076293945f), (((pow(_489, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _520) + _441.x;
  //   float _525 = (select((_492 <= 0.0031308000907301903f), (_492 * 12.920000076293945f), (((pow(_492, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _520) + _441.y;
  //   float _526 = (select((_495 <= 0.0031308000907301903f), (_495 * 12.920000076293945f), (((pow(_495, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _520) + _441.z;
  //   float _548 = select((_524 <= 0.0392800010740757f), (_524 * 0.07739938050508499f), exp2(log2((_524 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  //   float _549 = select((_525 <= 0.0392800010740757f), (_525 * 0.07739938050508499f), exp2(log2((_525 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  //   float _550 = select((_526 <= 0.0392800010740757f), (_526 * 0.07739938050508499f), exp2(log2((_526 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  //   float _569 = exp2(log2(mad(0.04331360012292862f, _550, mad(0.3292819857597351f, _549, (_548 * 0.627403974533081f))) * _450) * 0.1593017578125f);
  //   float _570 = exp2(log2(mad(0.012477199546992779f, _550, mad(0.9417769908905029f, _549, (_548 * 0.045745600014925f))) * _450) * 0.1593017578125f);
  //   float _571 = exp2(log2(mad(0.9836069941520691f, _550, mad(0.017604099586606026f, _549, (_548 * -0.0012105499627068639f))) * _450) * 0.1593017578125f);
  //   _597 = exp2(log2(((_569 * 18.8515625f) + 0.8359375f) / ((_569 * 18.6875f) + 1.0f)) * 78.84375f);
  //   _598 = exp2(log2(((_570 * 18.8515625f) + 0.8359375f) / ((_570 * 18.6875f) + 1.0f)) * 78.84375f);
  //   _599 = exp2(log2(((_571 * 18.8515625f) + 0.8359375f) / ((_571 * 18.6875f) + 1.0f)) * 78.84375f);
  // } else {
  //   _597 = _438;
  //   _598 = _439;
  //   _599 = _440;
  // }
  // SV_Target.x = _597;
  // SV_Target.y = _598;
  // SV_Target.z = _599;

  SV_Target.rgb = BlendUI(_441, ApplyDitheringAndFilmGrain(float3(_361, _362, _363), float3(_419, _420, _421), _431, TEXCOORD.xy));
  SV_Target.w = _278;
  return SV_Target;
}
