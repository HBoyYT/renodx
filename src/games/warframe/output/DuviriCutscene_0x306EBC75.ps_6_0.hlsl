#include "../shared.h"
#include "../common.hlsl"

Texture2D<float4> t0 : register(t0);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t2 : register(t2);

Texture3D<float4> t3 : register(t3);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t7 : register(t7);

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
  float cb0_010x : packoffset(c010.x);
};

SamplerState s0 : register(s0);

SamplerState s1 : register(s1);

SamplerState s2 : register(s2);

SamplerState s3 : register(s3);

SamplerState s5 : register(s5);

SamplerState s9 : register(s9);

SamplerState s7 : register(s7);

SamplerState s6 : register(s6);

float4 main(
  noperspective float4 SV_Position : SV_Position,
  linear float4 TEXCOORD : TEXCOORD,
  linear float4 TEXCOORD_1 : TEXCOORD1
) : SV_Target {
  float4 SV_Target;
  float4 _31 = t9.SampleLevel(s9, float2(min((cb0_002z * TEXCOORD.x), cb0_006x), min((cb0_002w * TEXCOORD.y), cb0_006y)), 0.0f);
  float _47 = ((((cb0_002x * 32.0f) * cb0_002z) * ((_31.x * 2.0f) + -1.0f)) + TEXCOORD.x) * cb0_002z;
  float _48 = (TEXCOORD.y - ((cb0_002w * cb0_002y) * ((_31.y * 64.0f) + -32.0f))) * cb0_002w;
  float4 _51 = t6.SampleLevel(s6, float2(min(_47, cb0_006x), min(_48, cb0_006y)), 0.0f);
  float _54 = floor(_51.x * 3.0f);
  float _61 = abs(frac((_54 * 0.012000000104308128f) + _47));
  float _62 = abs(frac((_54 * 0.0020000000949949026f) + _48));
  float4 _65 = t6.SampleLevel(s6, float2(min(_61, cb0_006x), min(_62, cb0_006y)), 0.0f);
  float _68 = floor(_65.x * 4.0f);
  float _75 = abs(frac(_61 - (_68 * 0.009999999776482582f)));
  float _76 = abs(frac(_62 - (_68 * 0.007699999958276749f)));
  float _81 = cb0_008x * TEXCOORD.x;
  float _82 = cb0_008y * TEXCOORD.y;
  float4 _85 = t0.SampleLevel(s0, float2(min(_75, cb0_006x), min(_76, cb0_006y)), 0.0f);
  float _91 = cb0_002z * (TEXCOORD.x + -0.5f);
  float _92 = cb0_002w * (TEXCOORD.y + -0.5f);
  float _96 = sqrt((_91 * _91) + (_92 * _92));
  float _101 = ((_96 * _96) * cb0_004x * RENODX_FX_CA_STRENGTH) / _96;
  float _103 = (_91 * cb0_002x) * _101;
  float _105 = (_92 * cb0_002y) * _101;
  float4 _112 = t0.SampleLevel(s0, float2(min((_75 - _103), cb0_006x), min((_76 - _105), cb0_006y)), 0.0f);
  float4 _126 = t0.SampleLevel(s0, float2(min((_103 + _75), cb0_006x), min((_105 + _76), cb0_006y)), 0.0f);
  float _133 = (_126.x * 0.800000011920929f) + ((_112.x + _85.x) * 0.10000000149011612f);
  float _134 = ((_112.y * 0.699999988079071f) + (_85.y * 0.20000000298023224f)) + (_126.y * 0.10000000149011612f);
  float _135 = ((_112.z * 0.20000000298023224f) + (_85.z * 0.10000000149011612f)) + (_126.z * 0.699999988079071f);
  float _139 = min(_81, cb0_007x);
  float _140 = min(_82, cb0_007y);
  float4 _141 = t2.SampleLevel(s2, float2(_139, _140), 0.0f);
  float4 _152 = t2.SampleLevel(s2, float2(min((_81 - _103), cb0_007x), min((_82 - _105), cb0_007y)), 0.0f);
  float4 _164 = t2.SampleLevel(s2, float2(min((_103 + _81), cb0_007x), min((_105 + _82), cb0_007y)), 0.0f);
  float4 _182 = t1.SampleLevel(s1, float2(_139, _140), 0.0f);
  float _211 = exp2(log2(((cb0_001x * _182.x) + (((((((_152.x + _141.x) * 0.10000000149011612f) - _133) + (_164.x * 0.800000011920929f)) * _141.w) + _133) * TEXCOORD_1.w)) * 0.009999999776482582f) * 0.1593017578125f);
  float _212 = exp2(log2(((cb0_001y * _182.y) + (((((((_141.y * 0.20000000298023224f) - _134) + (_152.y * 0.699999988079071f)) + (_164.y * 0.10000000149011612f)) * _141.w) + _134) * TEXCOORD_1.w)) * 0.009999999776482582f) * 0.1593017578125f);
  float _213 = exp2(log2(((cb0_001z * _182.z) + (((((((_141.z * 0.10000000149011612f) - _135) + (_152.z * 0.20000000298023224f)) + (_164.z * 0.699999988079071f)) * _141.w) + _135) * TEXCOORD_1.w)) * 0.009999999776482582f) * 0.1593017578125f);
  float4 _244 = t3.Sample(s3, float3(((exp2(log2(((_211 * 18.8515625f) + 0.8359375f) / ((_211 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f), ((exp2(log2(((_212 * 18.8515625f) + 0.8359375f) / ((_212 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f), ((exp2(log2(((_213 * 18.8515625f) + 0.8359375f) / ((_213 * 18.6875f) + 1.0f)) * 78.84375f) * 0.96875f) + 0.015625f)));
  float _248 = dot(float3(_244.x, _244.y, _244.z), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _250 = saturate(max(_51.x, _65.x)) * 0.75f;
  float4 _265 = t6.SampleLevel(s6, float2(min(_75, cb0_006x), min(_76, cb0_006y)), 0.0f);
  float _267 = _75 + 0.5f;
  float _268 = _76 + -0.5f;
  float _270 = rsqrt(dot(float3(_267, _268, 0.0f), float3(_267, _268, 0.0f)));
  float _271 = _270 * _267;
  float _272 = _270 * _268;
  float _275 = cb0_003x * 0.05999999865889549f;
  float4 _280 = t5.SampleLevel(s5, float2(min((_275 + _75), cb0_006x), min((_275 + _76), cb0_006y)), 0.0f);
  float _282 = _280.x * 0.001953125f;
  float _284 = (_272 * _272) * _282;
  float _286 = (_271 * _271) * _282;
  float _287 = _284 + _75;
  float _288 = _286 + _76;
  float4 _291 = t6.SampleLevel(s6, float2(min(_287, cb0_006x), min(_288, cb0_006y)), 0.0f);
  float _297 = _287 + _284;
  float _298 = _288 + _286;
  float4 _301 = t6.SampleLevel(s6, float2(min(_297, cb0_006x), min(_298, cb0_006y)), 0.0f);
  float _308 = _297 + _284;
  float _309 = _298 + _286;
  float4 _312 = t6.SampleLevel(s6, float2(min(_308, cb0_006x), min(_309, cb0_006y)), 0.0f);
  float _319 = _308 + _284;
  float _320 = _309 + _286;
  float4 _323 = t6.SampleLevel(s6, float2(min(_319, cb0_006x), min(_320, cb0_006y)), 0.0f);
  float _330 = _319 + _284;
  float _331 = _320 + _286;
  float4 _334 = t6.SampleLevel(s6, float2(min(_330, cb0_006x), min(_331, cb0_006y)), 0.0f);
  float _341 = _330 + _284;
  float _342 = _331 + _286;
  float4 _345 = t6.SampleLevel(s6, float2(min(_341, cb0_006x), min(_342, cb0_006y)), 0.0f);
  float _352 = _341 + _284;
  float _353 = _342 + _286;
  float4 _356 = t6.SampleLevel(s6, float2(min(_352, cb0_006x), min(_353, cb0_006y)), 0.0f);
  float4 _367 = t6.SampleLevel(s6, float2(min((_352 + _284), cb0_006x), min((_353 + _286), cb0_006y)), 0.0f);
  float _376 = saturate(1.0f - ((((((((saturate(abs(_265.x - _301.x) + -0.014999999664723873f) + saturate(abs(_265.x - _291.x) + -0.014999999664723873f)) + saturate(abs(_265.x - _312.x) + -0.014999999664723873f)) + saturate(abs(_265.x - _323.x) + -0.014999999664723873f)) + saturate(abs(_265.x - _334.x) + -0.014999999664723873f)) + saturate(abs(_265.x - _345.x) + -0.014999999664723873f)) + saturate(abs(_265.x - _356.x) + -0.014999999664723873f)) + saturate(abs(_265.x - _367.x) + -0.014999999664723873f)) * 0.25f));
  float _378 = (_376 * _376) * _376;
  float _379 = _378 * ((_250 * (_248 - _244.x)) + _244.x);
  float _380 = _378 * ((_250 * (_248 - _244.y)) + _244.y);
  float _381 = _378 * ((_250 * (_248 - _244.z)) + _244.z);
  float _382 = cb0_003x * 0.0009765625f;
  float _386 = frac(abs(_382));
  float _392 = frac(TEXCOORD.x * 5.39870023727417f);
  float _393 = frac(TEXCOORD.y * 5.4421000480651855f);
  float _394 = frac(select((_382 >= (-0.0f - _382)), _386, (-0.0f - _386)) * 7103.59033203125f);
  float _398 = dot(float3(_393, _394, _392), float3((_392 + 21.53510093688965f), (_393 + 14.313699722290039f), (_394 + 15.324700355529785f)));
  float _399 = _398 + _392;
  float _400 = _398 + _393;
  float _401 = _398 + _394;
  float _402 = _399 * _400;
  float _414 = frac(_402 * 97.59010314941406f) + -0.5f;
  float _415 = frac((_401 * 93.83689880371094f) * _399) + -0.5f;
  float _416 = frac((_401 * 91.69309997558594f) * _400) + -0.5f;
  float _435 = (frac(_402 * 95.43070220947266f) + -0.5f) + ((select((_379 < 0.0019607844296842813f), 0.0f, 1.0f) * select((_379 > 0.998039186000824f), 0.0f, 1.0f)) * _414);
  float _436 = ((select((_380 < 0.0019607844296842813f), 0.0f, 1.0f) * select((_380 > 0.998039186000824f), 0.0f, 1.0f)) * _415) + _414;
  float _437 = ((select((_381 < 0.0019607844296842813f), 0.0f, 1.0f) * select((_381 > 0.998039186000824f), 0.0f, 1.0f)) * _416) + _415;
  float _450 = (saturate(1.0f - _248) * dot(float4(_435, _436, _437, _416), float4(0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f, 0.3333333432674408f))) * cb0_009x;
  float _454 = saturate(((_435 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + _379) + _450);
  float _455 = saturate(((_436 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + _380) + _450);
  float _456 = saturate(((_437 * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + _381) + _450);
  float4 _457 = t7.Sample(s7, float2(TEXCOORD.x, TEXCOORD.y));
  float _613;
  float _614;
  float _615;
  [branch]
  if ((!(_457.w < 9.999999747378752e-05f)) && (RENODX_FX_ENABLE_UI == 1.f)) {
    float _466 = cb0_010x * 9.999999747378752e-05f;

    float _505;
    float _508;
    float _511;

    if (RENODX_TONE_MAP_TYPE == 0.f) {
      float _473 = (pow(_454, 0.012683313339948654f));
      float _474 = (pow(_455, 0.012683313339948654f));
      float _475 = (pow(_456, 0.012683313339948654f));
      float _500 = exp2(log2(max((_473 + -0.8359375f), 0.0f) / (18.8515625f - (_473 * 18.6875f))) * 6.277394771575928f) / _466;
      float _501 = exp2(log2(max((_474 + -0.8359375f), 0.0f) / (18.8515625f - (_474 * 18.6875f))) * 6.277394771575928f) / _466;
      float _502 = exp2(log2(max((_475 + -0.8359375f), 0.0f) / (18.8515625f - (_475 * 18.6875f))) * 6.277394771575928f) / _466;
      _505 = mad(-0.07283999770879745f, _502, mad(-0.5876560211181641f, _501, (_500 * 1.6604959964752197f)));
      _508 = mad(-0.00834800023585558f, _502, mad(1.1328949928283691f, _501, (_500 * -0.12454699724912643f)));
      _511 = mad(1.118751049041748f, _502, mad(-0.10059700161218643f, _501, (_500 * -0.018154000863432884f)));
    } else {
      float3 color = float3(_454, _455, _456);
      color = renodx::color::pq::DecodeSafe(color, RENODX_GRAPHICS_WHITE_NITS);
      color = renodx::color::bt709::from::BT2020(color);
      _505 = color.r;
      _508 = color.g;
      _511 = color.b;
    }
    
    float _536 = 1.0f - _457.w;
    float _540 = (select((_505 <= 0.0031308000907301903f), (_505 * 12.920000076293945f), (((pow(_505, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _536) + _457.x;
    float _541 = (select((_508 <= 0.0031308000907301903f), (_508 * 12.920000076293945f), (((pow(_508, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _536) + _457.y;
    float _542 = (select((_511 <= 0.0031308000907301903f), (_511 * 12.920000076293945f), (((pow(_511, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _536) + _457.z;
    float _564 = select((_540 <= 0.0392800010740757f), (_540 * 0.07739938050508499f), exp2(log2((_540 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
    float _565 = select((_541 <= 0.0392800010740757f), (_541 * 0.07739938050508499f), exp2(log2((_541 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
    float _566 = select((_542 <= 0.0392800010740757f), (_542 * 0.07739938050508499f), exp2(log2((_542 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));

    if (RENODX_TONE_MAP_TYPE == 0.f) {
      float _585 = exp2(log2(mad(0.04331360012292862f, _566, mad(0.3292819857597351f, _565, (_564 * 0.627403974533081f))) * _466) * 0.1593017578125f);
      float _586 = exp2(log2(mad(0.012477199546992779f, _566, mad(0.9417769908905029f, _565, (_564 * 0.045745600014925f))) * _466) * 0.1593017578125f);
      float _587 = exp2(log2(mad(0.9836069941520691f, _566, mad(0.017604099586606026f, _565, (_564 * -0.0012105499627068639f))) * _466) * 0.1593017578125f);
      _613 = exp2(log2(((_585 * 18.8515625f) + 0.8359375f) / ((_585 * 18.6875f) + 1.0f)) * 78.84375f);
      _614 = exp2(log2(((_586 * 18.8515625f) + 0.8359375f) / ((_586 * 18.6875f) + 1.0f)) * 78.84375f);
      _615 = exp2(log2(((_587 * 18.8515625f) + 0.8359375f) / ((_587 * 18.6875f) + 1.0f)) * 78.84375f);
    } else {
      float3 color = float3(_564, _436, _566);
      color = renodx::color::bt2020::from::BT709(color);
      color = renodx::color::pq::EncodeSafe(color, RENODX_GRAPHICS_WHITE_NITS);
      _613 = color.r;
      _614 = color.g;
      _615 = color.b;
    }

  } else {
    _613 = _454;
    _614 = _455;
    _615 = _456;
  }
  SV_Target.x = _613;
  SV_Target.y = _614;
  SV_Target.z = _615;

  SV_Target.rgb = OutputShaderPass(SV_Target.rgb);

  SV_Target.w = _248;
  return SV_Target;
}
