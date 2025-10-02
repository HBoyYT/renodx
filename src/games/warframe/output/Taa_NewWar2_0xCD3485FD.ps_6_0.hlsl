#include "../common.hlsl"
#include "../shared.h"

Texture2D<float4> t0 : register(t0);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t2 : register(t2);

Texture3D<float4> t3 : register(t3);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t8 : register(t8);

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
  float cb0_007x : packoffset(c007.x);
  float cb0_008x : packoffset(c008.x);
  float cb0_009x : packoffset(c009.x);
  float cb0_009y : packoffset(c009.y);
  float cb0_010x : packoffset(c010.x);
  float cb0_010y : packoffset(c010.y);
  float cb0_014x : packoffset(c014.x);
  float cb0_014y : packoffset(c014.y);
  float cb0_015x : packoffset(c015.x);
  float cb0_016x : packoffset(c016.x);
};

SamplerState s0 : register(s0);

SamplerState s1 : register(s1);

SamplerState s2 : register(s2);

SamplerState s3 : register(s3);

SamplerState s4 : register(s4);

SamplerState s7 : register(s7);

SamplerState s10 : register(s10);

SamplerState s8 : register(s8);

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
  float _69 = cb0_002z * (TEXCOORD.x + -0.5f);
  float _70 = cb0_002w * (TEXCOORD.y + -0.5f);
  float _74 = sqrt((_69 * _69) + (_70 * _70));
  float _79 = ((_74 * _74) * cb0_004x * RENODX_FX_CA_STRENGTH) / _74;
  float _81 = (_69 * cb0_002x) * _79;
  float _83 = (_70 * cb0_002y) * _79;
  float4 _90 = t0.SampleLevel(s0, float2(min((_59 - _81), cb0_009x), min((_60 - _83), cb0_009y)), 0.0f);
  float4 _104 = t0.SampleLevel(s0, float2(min((_81 + _59), cb0_009x), min((_83 + _60), cb0_009y)), 0.0f);
  float _111 = (_104.x * 0.800000011920929f) + ((_90.x + _63.x) * 0.10000000149011612f);
  float _112 = ((_90.y * 0.699999988079071f) + (_63.y * 0.20000000298023224f)) + (_104.y * 0.10000000149011612f);
  float _113 = ((_90.z * 0.20000000298023224f) + (_63.z * 0.10000000149011612f)) + (_104.z * 0.699999988079071f);
  float _116 = _59 / cb0_002x;
  float _120 = _116 * cb0_002x;
  float _122 = _60 / ((1.0f / cb0_002y) * cb0_002y);
  float _124 = floor(_60 * 53.60000228881836f);
  float _130 = frac(_60 * 27.733333587646484f);
  float _144 = (floor(cb0_003x * 1234.0f) + floor(((select((fmod(_124, 2.0f) >= 1.0f), 0.009014423005282879f, -0.009014423005282879f) + _59) + (min((_130 * 2.0f), ((1.0f - _130) * 2.0f)) * 0.009014423005282879f)) * 55.46666717529297f)) * 0.015625f;
  float _146 = (floor(cb0_003x * 3543.0f) + _124) * 0.015625f;
  float _148 = frac(cb0_003x * 1236.0452880859375f);
  float _150 = (_148 * _148) * 0.10000000149011612f;
  float _152 = frac(cb0_003x * 2236.04541015625f);
  float _155 = ((_152 * _152) * 0.5f) * _152;
  float4 _156 = t7.Sample(s7, float2(_144, _146));
  float4 _159 = t7.Sample(s7, float2(_146, 0.0f));
  float _187;
  float _188;
  float _189;
  float _190;
  float _191;
  float _192;
  float _193;
  float _194;
  float _244;
  float _245;
  float _246;
  float _267;
  float _268;
  float _269;
  float _730;
  float _731;
  float _732;
  if ((bool)(_156.x < _150) || (bool)(_159.y < _155)) {
    float _166 = frac(_144) + -0.5f;
    float _167 = frac(_146) + -0.5f;
    float _168 = _166 * 0.030000001192092896f;
    float _169 = _167 * 0.030000001192092896f;
    _187 = (_168 + _120);
    _188 = (_169 + _122);
    _189 = ((_166 * 0.06000000238418579f) + _120);
    _190 = ((_167 * 0.06000000238418579f) + _122);
    _191 = ((_166 * 0.03750000149011612f) + _120);
    _192 = ((_167 * 0.03750000149011612f) + _122);
    _193 = ((cb0_007x * _168) + _27);
    _194 = ((_169 * cb0_007x) + _28);
  } else {
    _187 = _120;
    _188 = _122;
    _189 = _120;
    _190 = _122;
    _191 = _120;
    _192 = _122;
    _193 = _27;
    _194 = _28;
  }
  float _201 = (cb0_007x * (_189 - _59)) + _59;
  float _202 = (cb0_007x * (_190 - _60)) + _60;
  float _209 = cb0_002z / cb0_014x;
  float _210 = cb0_002w / cb0_014y;
  float4 _218 = t0.SampleLevel(s0, float2(min((_209 * _187), cb0_009x), min((_210 * _188), cb0_009y)), 0.0f);
  float4 _224 = t0.SampleLevel(s0, float2(min((_209 * _189), cb0_009x), min((_210 * _190), cb0_009y)), 0.0f);
  float4 _230 = t0.SampleLevel(s0, float2(min((_209 * _191), cb0_009x), min((_210 * _192), cb0_009y)), 0.0f);
  float4 _232 = t7.Sample(s7, float2(_144, _146));
  bool _234 = (_232.y < _150);
  float _235 = select(_234, _224.y, _218.x);
  float _236 = select(_234, _224.y, _230.z);
  float4 _237 = t7.Sample(s7, float2(_146, 0.0f));
  if ((_237.z * 3.5f) < _155) {
    _244 = 0.0f;
    _245 = dot(float3(_235, _224.y, _236), float3(0.20000000298023224f, 0.20000000298023224f, 0.20000000298023224f));
    _246 = 0.10000000149011612f;
  } else {
    _244 = _235;
    _245 = _224.y;
    _246 = _236;
  }
  float4 _247 = t7.Sample(s7, float2(_144, _146));
  float4 _251 = t7.Sample(s7, float2(_146, 0.0f));
  if ((bool)((_247.y * 1.5f) < _150) || (bool)((_251.y * 2.5f) < _155)) {
    float _258 = frac(_116 * 0.3333333432674408f);
    bool _261 = (_258 > 0.6660000085830688f);
    _267 = 0.0f;
    _268 = (select(_261, 0.0f, select((_258 > 0.3330000042915344f), 2.0f, 0.0f)) * _245);
    _269 = (select(_261, 3.0f, 0.0f) * _246);
  } else {
    _267 = _244;
    _268 = _245;
    _269 = _246;
  }
  float _279 = (lerp(_111, _267, cb0_007x)) * TEXCOORD_1.w;
  float _280 = (lerp(_112, _268, cb0_007x)) * TEXCOORD_1.w;
  float _281 = (lerp(_113, _269, cb0_007x)) * TEXCOORD_1.w;
  float _282 = dot(float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f), float3(_279, _280, _281));
  float _290 = min(_202, cb0_009y);
  float4 _291 = t0.SampleLevel(s0, float2(min((_201 - cb0_002x), cb0_009x), _290), 0.0f);
  float _296 = dot(float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f), float3(_291.x, _291.y, _291.z)) * TEXCOORD_1.w;
  float4 _299 = t0.SampleLevel(s0, float2(min((cb0_002x + _201), cb0_009x), _290), 0.0f);
  float _304 = dot(float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f), float3(_299.x, _299.y, _299.z)) * TEXCOORD_1.w;
  float _307 = min(_201, cb0_009x);
  float4 _309 = t0.SampleLevel(s0, float2(_307, min((_202 - cb0_002y), cb0_009y)), 0.0f);
  float _314 = dot(float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f), float3(_309.x, _309.y, _309.z)) * TEXCOORD_1.w;
  float4 _317 = t0.SampleLevel(s0, float2(_307, min((cb0_002y + _202), cb0_009y)), 0.0f);
  float _322 = dot(float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f), float3(_317.x, _317.y, _317.z)) * TEXCOORD_1.w;
  float _325 = (1.0f / (_282 + 1.0f)) * _282;
  float _350 = max(0.0f, (((cb0_008x * 0.5f) * (((((_325 * 4.0f) - ((1.0f / (_296 + 1.0f)) * _296)) - ((1.0f / (_304 + 1.0f)) * _304)) - ((1.0f / (_314 + 1.0f)) * _314)) - ((1.0f / (_322 + 1.0f)) * _322))) + _325)) / max(9.999999747378752e-06f, _325);
  float _351 = _350 * _279;
  float _352 = _350 * _280;
  float _353 = _350 * _281;
  float _357 = min(_193, cb0_010x);
  float _358 = min(_194, cb0_010y);
  float4 _359 = t2.SampleLevel(s2, float2(_357, _358), 0.0f);
  float4 _370 = t2.SampleLevel(s2, float2(min((_193 - _81), cb0_010x), min((_194 - _83), cb0_010y)), 0.0f);
  float4 _384 = t2.SampleLevel(s2, float2(min((_193 + _81), cb0_010x), min((_194 + _83), cb0_010y)), 0.0f);
  float _408 = (TEXCOORD.x + -0.5f) * 3.555555582046509f;
  float _409 = (TEXCOORD.y + -0.5f) * 3.555555582046509f;
  float _412 = sqrt(dot(float2(_408, _409), float2(_408, _409))) * 0.25f * RENODX_FX_VIGNETTE_STRENGTH;
  float _414 = (_412 * _412) + 1.0f;
  float _416 = 1.0f / (_414 * _414);
  float _417 = ((((((_384.x * 0.800000011920929f) + ((_370.x + _359.x) * 0.10000000149011612f)) * TEXCOORD_1.w) - _351) * _359.w) + _351) * _416;
  float _418 = (((((((_370.y * 0.699999988079071f) + (_359.y * 0.20000000298023224f)) + (_384.y * 0.10000000149011612f)) * TEXCOORD_1.w) - _352) * _359.w) + _352) * _416;
  float _419 = (((((((_370.z * 0.20000000298023224f) + (_359.z * 0.10000000149011612f)) + (_384.z * 0.699999988079071f)) * TEXCOORD_1.w) - _353) * _359.w) + _353) * _416;
  float4 _420 = t1.SampleLevel(s1, float2(_357, _358), 0.0f);
  float _431 = saturate(((cb0_000w / (_50.x - cb0_000z)) + -500.0f) * 0.0020000000949949026f) * 0.22499999403953552f;
  float _459 = exp2(log2(((saturate(shader_injection.fx_bloom_strength + _431) * ((_420.x * 0.20000000298023224f) - _417)) + _417) * 0.009999999776482582f) * 0.1593017578125f);
  float _460 = exp2(log2(((saturate(shader_injection.fx_bloom_strength + _431) * ((_420.y * 0.20000000298023224f) - _418)) + _418) * 0.009999999776482582f) * 0.1593017578125f);
  float _461 = exp2(log2(((saturate(shader_injection.fx_bloom_strength + _431) * ((_420.z * 0.20000000298023224f) - _419)) + _419) * 0.009999999776482582f) * 0.1593017578125f);
  float4 _492 = t3.Sample(s3, float3(((exp2(log2(((_459 * 18.8515625f) + 0.8359375f) / ((_459 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f), ((exp2(log2(((_460 * 18.8515625f) + 0.8359375f) / ((_460 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f), ((exp2(log2(((_461 * 18.8515625f) + 0.8359375f) / ((_461 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f)));
  float _496 = dot(float3(_492.x, _492.y, _492.z), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _499 = cb0_003x * 0.0009765625f;
  float _503 = frac(abs(_499));
  float _509 = frac(TEXCOORD.x * 5.39870023727417f);
  float _510 = frac(TEXCOORD.y * 5.4421000480651855f);
  float _511 = frac(select((_499 >= (-0.0f - _499)), _503, (-0.0f - _503)) * 7103.59033203125f);
  float _515 = dot(float3(_510, _511, _509), float3((_509 + 21.53510093688965f), (_510 + 14.313699722290039f), (_511 + 15.324700355529785f)));
  float _516 = _515 + _509;
  float _517 = _515 + _510;
  float _518 = _515 + _511;
  float _519 = _516 * _517;
  float _531 = frac(_519 * 97.59010314941406f) + -0.5f;
  float _532 = frac((_518 * 93.83689880371094f) * _516) + -0.5f;
  float _533 = frac((_518 * 91.69309997558594f) * _517) + -0.5f;
  float _552 = (frac(_519 * 95.43070220947266f) + -0.5f) + ((select((_492.x < 0.0019607844296842813f), 0.0f, 1.0f) * select((_492.x > 0.998039186000824f), 0.0f, 1.0f)) * _531);
  float _553 = ((select((_492.y < 0.0019607844296842813f), 0.0f, 1.0f) * select((_492.y > 0.998039186000824f), 0.0f, 1.0f)) * _532) + _531;
  float _554 = ((select((_492.z < 0.0019607844296842813f), 0.0f, 1.0f) * select((_492.z > 0.998039186000824f), 0.0f, 1.0f)) * _533) + _532;
  float _567 = (saturate(1.0f - _496) * dot(float4(_552, _553, _554, _533), float4(0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f))) * cb0_015x;
  float _571 = saturate(((_552 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + _492.x) + _567);
  float _572 = saturate(((_553 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + _492.y) + _567);
  float _573 = saturate(((_554 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + _492.z) + _567);
  float4 _574 = t8.Sample(s8, float2(TEXCOORD.x, TEXCOORD.y));
  // [branch]
  // if (!(_574.w < 9.999999747378752e-05f)) {
  //   float _583 = cb0_016x * 9.999999747378752e-05f;
  //   float _590 = (pow(_571, 0.012683313339948654f));
  //   float _591 = (pow(_572, 0.012683313339948654f));
  //   float _592 = (pow(_573, 0.012683313339948654f));
  //   float _617 = exp2(log2(max((_590 + -0.8359375f), 0.0f) / (18.8515625f - (_590 * 18.6875f))) * 6.277394771575928f) / _583;
  //   float _618 = exp2(log2(max((_591 + -0.8359375f), 0.0f) / (18.8515625f - (_591 * 18.6875f))) * 6.277394771575928f) / _583;
  //   float _619 = exp2(log2(max((_592 + -0.8359375f), 0.0f) / (18.8515625f - (_592 * 18.6875f))) * 6.277394771575928f) / _583;
  //   float _622 = mad(-0.07283999770879745f, _619, mad(-0.5876560211181641f, _618, (_617 * 1.6604959964752197f)));
  //   float _625 = mad(-0.00834800023585558f, _619, mad(1.1328949928283691f, _618, (_617 * -0.12454699724912643f)));
  //   float _628 = mad(1.118751049041748f, _619, mad(-0.10059700161218643f, _618, (_617 * -0.018154000863432884f)));
  //   float _653 = 1.0f - _574.w;
  //   float _657 = (select((_622 <= 0.0031308000907301903f), (_622 * 12.920000076293945f), (((pow(_622, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _653) + _574.x;
  //   float _658 = (select((_625 <= 0.0031308000907301903f), (_625 * 12.920000076293945f), (((pow(_625, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _653) + _574.y;
  //   float _659 = (select((_628 <= 0.0031308000907301903f), (_628 * 12.920000076293945f), (((pow(_628, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _653) + _574.z;
  //   float _681 = select((_657 <= 0.0392800010740757f), (_657 * 0.07739938050508499f), exp2(log2((_657 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  //   float _682 = select((_658 <= 0.0392800010740757f), (_658 * 0.07739938050508499f), exp2(log2((_658 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  //   float _683 = select((_659 <= 0.0392800010740757f), (_659 * 0.07739938050508499f), exp2(log2((_659 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  //   float _702 = exp2(log2(mad(0.04331360012292862f, _683, mad(0.3292819857597351f, _682, (_681 * 0.627403974533081f))) * _583) * 0.1593017578125f);
  //   float _703 = exp2(log2(mad(0.012477199546992779f, _683, mad(0.9417769908905029f, _682, (_681 * 0.045745600014925f))) * _583) * 0.1593017578125f);
  //   float _704 = exp2(log2(mad(0.9836069941520691f, _683, mad(0.017604099586606026f, _682, (_681 * -0.0012105499627068639f))) * _583) * 0.1593017578125f);
  //   _730 = exp2(log2(((_702 * 18.8515625f) + 0.8359375f) / ((_702 * 18.6875f) + 1.0f)) * 78.84375f);
  //   _731 = exp2(log2(((_703 * 18.8515625f) + 0.8359375f) / ((_703 * 18.6875f) + 1.0f)) * 78.84375f);
  //   _732 = exp2(log2(((_704 * 18.8515625f) + 0.8359375f) / ((_704 * 18.6875f) + 1.0f)) * 78.84375f);
  // } else {
  //   _730 = _571;
  //   _731 = _572;
  //   _732 = _573;
  // }
  // SV_Target.x = _730;
  // SV_Target.y = _731;
  // SV_Target.z = _732;

  SV_Target.rgb = BlendUI(_574, ApplyDitheringAndFilmGrain(_492.rgb, float3(_552, _553, _554), _567, TEXCOORD.xy));
  SV_Target.w = _496;
  return SV_Target;
}
