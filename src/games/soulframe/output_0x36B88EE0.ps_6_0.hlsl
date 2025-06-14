#include "./shared.h"
#include "./common.hlsl"

Texture2D<float4> t0 : register(t0);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t2 : register(t2);

Texture3D<float4> t3 : register(t3);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t12 : register(t12);

cbuffer cb0 : register(b0) {
  float cb0_003x : packoffset(c003.x);
  float cb0_003y : packoffset(c003.y);
  float cb0_003z : packoffset(c003.z);
  float cb0_015x : packoffset(c015.x);
  float cb0_015y : packoffset(c015.y);
  float cb0_015z : packoffset(c015.z);
  float cb0_015w : packoffset(c015.w);
  float cb0_016x : packoffset(c016.x);
  float cb0_017x : packoffset(c017.x);
  float cb0_025x : packoffset(c025.x);
  float cb0_025y : packoffset(c025.y);
  float cb0_026x : packoffset(c026.x);
  float cb0_026y : packoffset(c026.y);
  float cb0_031x : packoffset(c031.x);
  float cb0_031y : packoffset(c031.y);
  float cb0_034x : packoffset(c034.x);
  float cb0_040x : packoffset(c040.x);
  float cb0_041x : packoffset(c041.x);
};

SamplerState s0 : register(s0);

SamplerState s1 : register(s1);

SamplerState s2 : register(s2);

SamplerState s3 : register(s3);

SamplerState s15 : register(s15);

SamplerState s8 : register(s8);

SamplerState s6 : register(s6);

SamplerState s12 : register(s12);

float4 main(
  noperspective float4 SV_Position : SV_Position,
  linear float4 TEXCOORD : TEXCOORD,
  linear float4 TEXCOORD_1 : TEXCOORD1
) : SV_Target {
  float4 SV_Target;
  float _25 = (TEXCOORD.x + -0.5f) * 2.0f;
  float _26 = (TEXCOORD.y + -0.5f) * 1.5f;
  float _31 = (1.0f - (cb0_041x * dot(float2(_25, _26), float2(_25, _26)))) + (cb0_041x * 1.600000023841858f);
  float _34 = (_25 / _31) * 0.5f;
  float _35 = (_26 / _31) * 0.6666666865348816f;
  float _36 = _34 + 0.5f;
  float _37 = _35 + 0.5f;
  float _44 = cb0_031x * _36;
  float _45 = cb0_031y * _37;
  float _46 = min(_44, cb0_025x);
  float _47 = min(_45, cb0_025y);
  float4 _48 = t15.SampleLevel(s15, float2(_46, _47), 0.0f);
  float _67 = ((((cb0_015x * 32.0f) * cb0_015z) * ((_48.x * 2.0f) + -1.0f)) + _36) * cb0_015z;
  float _68 = (_37 - ((cb0_015w * cb0_015y) * ((_48.y * 64.0f) + -32.0f))) * cb0_015w;
  float4 _73 = t0.SampleLevel(s0, float2(max(0.0f, min(_67, cb0_025x)), max(0.0f, min(_68, cb0_025y))), 0.0f);
  float _80 = sqrt((_35 * _35) + (_34 * _34)) * RENODX_FX_CA_STRENGTH;
  float _84 = (_80 * _80) * cb0_017x;
  float _86 = (cb0_015x * _34) * _84;
  float _88 = (cb0_015y * _35) * _84;
  float4 _96 = t0.SampleLevel(s0, float2(max(0.0f, min((_67 - _86), cb0_025x)), max(0.0f, min((_68 - _88), cb0_025y))), 0.0f);
  float4 _109 = t0.SampleLevel(s0, float2(max(0.0f, min((_86 + _67), cb0_025x)), max(0.0f, min((_88 + _68), cb0_025y))), 0.0f);
  float _121 = (((_109.x + _73.x) * 0.05000000074505806f) + (_96.x * 0.8999999761581421f)) * TEXCOORD_1.w;
  float _122 = (((_109.y + _96.y) * 0.05000000074505806f) + (_73.y * 0.8999999761581421f)) * TEXCOORD_1.w;
  float _123 = ((_109.z * 0.8999999761581421f) + ((_96.z + _73.z) * 0.05000000074505806f)) * TEXCOORD_1.w;
  float _129 = max(0.0f, min(_44, cb0_026x));
  float _130 = max(0.0f, min(_45, cb0_026y));
  float4 _131 = t2.SampleLevel(s2, float2(_129, _130), 0.0f);
  float _135 = abs((_131.x + -0.5f) * 2.0f);
  float4 _136 = t1.SampleLevel(s1, float2(_129, _130), 0.0f);
  float4 _142 = t6.SampleLevel(s6, float2(max(0.0f, _46), max(0.0f, _47)), 0.0f);
  float _145 = saturate(1.0f - _142.x);
  float _146 = dot(float3(_121, _122, _123), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _147 = _146 * 0.7307692766189575f;
  float _148 = _146 * 0.7692307829856873f;
  float _155 = ((_121 - _147) * _145) + _147;
  float _156 = ((_122 - _146) * _145) + _146;
  float _157 = ((_123 - _148) * _145) + _148;
  float _158 = dot(float3(_136.x, _136.y, _136.z), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _160 = saturate(_145 + 0.75f);
  float _164 = _158 * 1.461538553237915f;
  float _165 = _158 * 2.0f;
  float _166 = _158 * 1.5384615659713745f;
  float4 _176 = t12.SampleLevel(s12, float2(_46, _47), 0.0f);
  float _184 = (_176.x * _176.x) + (_142.x * 0.3400000035762787f);
  float _188 = saturate(_184 + cb0_003x);
  float _189 = saturate(_184 + cb0_003y);
  float _190 = saturate(_184 + cb0_003z);
  float _212 = cb0_015x / cb0_015y;
  float _223 = cb0_040x * (1.4142135381698608f / sqrt((_212 * _212) + 1.0f)) * RENODX_FX_VIGNETTE_STRENGTH;
  float _224 = _223 * ((TEXCOORD.x * 2.0f) + -1.0f);
  float _226 = (_212 * ((TEXCOORD.y * 2.0f) + -1.0f)) * _223;
  float _229 = 1.0f / (dot(float2(_224, _226), float2(_224, _226)) + 1.0f);
  float _231 = (_229 * _229) * 0.009999999776482582f;
  float _241 = exp2(log2(_231 * (((lerp(_188, 0.2549999952316284f, _135)) * ((((((_136.x * 1.5f) - _164) * _160) + _164) * 0.20000000298023224f) - _155)) + _155)) * 0.1593017578125f);
  float _242 = exp2(log2(_231 * (((lerp(_189, 0.2549999952316284f, _135)) * ((((((_136.y * 1.5f) - _165) * _160) + _165) * 0.20000000298023224f) - _156)) + _156)) * 0.1593017578125f);
  float _243 = exp2(log2(_231 * (((lerp(_190, 0.2549999952316284f, _135)) * ((((((_136.z * 1.5f) - _166) * _160) + _166) * 0.20000000298023224f) - _157)) + _157)) * 0.1593017578125f);
  float4 _274 = t3.Sample(s3, float3(((exp2(log2(((_241 * 18.8515625f) + 0.8359375f) / ((_241 * 18.6875f) + 1.0f)) * 78.84375f) * 0.9696969985961914f) + 0.01515151560306549f), ((exp2(log2(((_242 * 18.8515625f) + 0.8359375f) / ((_242 * 18.6875f) + 1.0f)) * 78.84375f) * 0.9696969985961914f) + 0.01515151560306549f), ((exp2(log2(((_243 * 18.8515625f) + 0.8359375f) / ((_243 * 18.6875f) + 1.0f)) * 78.84375f) * 0.9696969985961914f) + 0.01515151560306549f)));
  float _286 = (pow(_274.x, 0.012683313339948654f));
  float _287 = (pow(_274.y, 0.012683313339948654f));
  float _288 = (pow(_274.z, 0.012683313339948654f));
  float _316 = (exp2(log2(max((_286 + -0.8359375f), 0.0f) / (18.8515625f - (_286 * 18.6875f))) * 6.277394771575928f) * 10000.0f) / cb0_034x;
  float _317 = (exp2(log2(max((_287 + -0.8359375f), 0.0f) / (18.8515625f - (_287 * 18.6875f))) * 6.277394771575928f) * 10000.0f) / cb0_034x;
  float _318 = (exp2(log2(max((_288 + -0.8359375f), 0.0f) / (18.8515625f - (_288 * 18.6875f))) * 6.277394771575928f) * 10000.0f) / cb0_034x;
  float _321 = mad(_318, -0.07283999770879745f, mad(_317, -0.5876560211181641f, (_316 * 1.6604959964752197f)));
  float _324 = mad(_318, -0.00834800023585558f, mad(_317, 1.1328949928283691f, (_316 * -0.12454699724912643f)));
  float _327 = mad(_318, 1.118751049041748f, mad(_317, -0.10059700161218643f, (_316 * -0.018154000863432884f)));
  float _349 = select((_321 <= 0.0031308000907301903f), (_321 * 12.920000076293945f), (((pow(_321, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  float _350 = select((_324 <= 0.0031308000907301903f), (_324 * 12.920000076293945f), (((pow(_324, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  float _351 = select((_327 <= 0.0031308000907301903f), (_327 * 12.920000076293945f), (((pow(_327, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  float _355 = cb0_016x * 0.0009765625f;
  float _359 = frac(abs(_355));
  float _365 = frac(TEXCOORD.x * 5.39870023727417f);
  float _366 = frac(TEXCOORD.y * 5.4421000480651855f);
  float _367 = frac(select((_355 >= (-0.0f - _355)), _359, (-0.0f - _359)) * 7103.59033203125f);
  float _371 = dot(float3(_366, _367, _365), float3((_365 + 21.53510093688965f), (_366 + 14.313699722290039f), (_367 + 15.324700355529785f)));
  float _372 = _371 + _365;
  float _373 = _371 + _366;
  float _374 = _371 + _367;
  float _375 = _372 * _373;
  float _387 = frac(_375 * 97.59010314941406f) + -0.5f;
  float _388 = frac((_374 * 93.83689880371094f) * _372) + -0.5f;
  float _414 = (((frac(_375 * 95.43070220947266f) + -0.5f) + ((select((_349 < 0.0019607844296842813f), 0.0f, 1.0f) * select((_349 > 0.998039186000824f), 0.0f, 1.0f)) * _387)) * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + _349;
  float _415 = ((((select((_350 < 0.0019607844296842813f), 0.0f, 1.0f) * select((_350 > 0.998039186000824f), 0.0f, 1.0f)) * _388) + _387) * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + _350;
  float _416 = ((((select((_351 < 0.0019607844296842813f), 0.0f, 1.0f) * select((_351 > 0.998039186000824f), 0.0f, 1.0f)) * (frac((_374 * 91.69309997558594f) * _373) + -0.5f)) + _388) * 0.003921568859368563f * RENODX_FX_DITHERING_STRENGTH) + _351;
  float _438 = select((_414 <= 0.0392800010740757f), (_414 * 0.07739938050508499f), exp2(log2((_414 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  float _439 = select((_415 <= 0.0392800010740757f), (_415 * 0.07739938050508499f), exp2(log2((_415 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
  float _440 = select((_416 <= 0.0392800010740757f), (_416 * 0.07739938050508499f), exp2(log2((_416 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));

  //loat cb0_034x = RENODX_DIFFUSE_WHITE_NITS;

  float _450 = cb0_034x * 9.999999747378752e-05f;
  //float _450 = RENODX_DIFFUSE_WHITE_NITS * 9.999999747378752e-05f;
  float _460 = exp2(log2(mad(0.04331360012292862f, _440, mad(0.3292819857597351f, _439, (_438 * 0.627403974533081f))) * _450) * 0.1593017578125f);
  float _461 = exp2(log2(mad(0.012477199546992779f, _440, mad(0.9417769908905029f, _439, (_438 * 0.045745600014925f))) * _450) * 0.1593017578125f);
  float _462 = exp2(log2(mad(0.9836069941520691f, _440, mad(0.017604099586606026f, _439, (_438 * -0.0012105499627068639f))) * _450) * 0.1593017578125f);
  // float _460 = exp2(log2(mad(0.04331360012292862f, _440, mad(0.3292819857597351f, _439, (_438 * 0.627403974533081f))) * _450) * 0.1593017578125f);
  // float _461 = exp2(log2(mad(0.012477199546992779f, _440, mad(0.9417769908905029f, _439, (_438 * 0.045745600014925f))) * _450) * 0.1593017578125f);
  // float _462 = exp2(log2(mad(0.9836069941520691f, _440, mad(0.017604099586606026f, _439, (_438 * -0.0012105499627068639f))) * _450) * 0.1593017578125f);
  float _484 = exp2(log2(((_460 * 18.8515625f) + 0.8359375f) / ((_460 * 18.6875f) + 1.0f)) * 78.84375f);
  float _485 = exp2(log2(((_461 * 18.8515625f) + 0.8359375f) / ((_461 * 18.6875f) + 1.0f)) * 78.84375f);
  float _486 = exp2(log2(((_462 * 18.8515625f) + 0.8359375f) / ((_462 * 18.6875f) + 1.0f)) * 78.84375f);
  float4 _487 = t8.Sample(s8, float2(TEXCOORD.x, TEXCOORD.y));
  float _643;
  float _644;
  float _645;

  [branch]
  if ((!(_487.w < 9.999999747378752e-05f)) && RENODX_FX_ENABLE_UI) {
    // float _496 = cb0_034x * 9.999999747378752e-05f;
    float _496 = RENODX_GRAPHICS_WHITE_NITS * 9.999999747378752e-05f;
    float _503 = (pow(_484, 0.012683313339948654f));
    float _504 = (pow(_485, 0.012683313339948654f));
    float _505 = (pow(_486, 0.012683313339948654f));
    float _530 = exp2(log2(max((_503 + -0.8359375f), 0.0f) / (18.8515625f - (_503 * 18.6875f))) * 6.277394771575928f) / _496;
    float _531 = exp2(log2(max((_504 + -0.8359375f), 0.0f) / (18.8515625f - (_504 * 18.6875f))) * 6.277394771575928f) / _496;
    float _532 = exp2(log2(max((_505 + -0.8359375f), 0.0f) / (18.8515625f - (_505 * 18.6875f))) * 6.277394771575928f) / _496;
    float _535 = mad(_532, -0.07283999770879745f, mad(_531, -0.5876560211181641f, (_530 * 1.6604959964752197f)));
    float _538 = mad(_532, -0.00834800023585558f, mad(_531, 1.1328949928283691f, (_530 * -0.12454699724912643f)));
    float _541 = mad(_532, 1.118751049041748f, mad(_531, -0.10059700161218643f, (_530 * -0.018154000863432884f)));
    float _566 = 1.0f - _487.w;
    _487.rgb = saturate(_487.rgb);
    float _570 = (select((_535 <= 0.0031308000907301903f), (_535 * 12.920000076293945f), (((pow(_535, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _566) + _487.x;
    float _571 = (select((_538 <= 0.0031308000907301903f), (_538 * 12.920000076293945f), (((pow(_538, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _566) + _487.y;
    float _572 = (select((_541 <= 0.0031308000907301903f), (_541 * 12.920000076293945f), (((pow(_541, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f)) * _566) + _487.z;
    float _594 = select((_570 <= 0.0392800010740757f), (_570 * 0.07739938050508499f), exp2(log2((_570 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
    float _595 = select((_571 <= 0.0392800010740757f), (_571 * 0.07739938050508499f), exp2(log2((_571 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
    float _596 = select((_572 <= 0.0392800010740757f), (_572 * 0.07739938050508499f), exp2(log2((_572 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));

    // Incorrect color math
    float _615 = exp2(log2(mad(0.04331360012292862f, _596, mad(0.3292819857597351f, _595, (_594 * 0.627403974533081f))) * _496) * 0.1593017578125f);
    float _616 = exp2(log2(mad(0.012477199546992779f, _596, mad(0.9417769908905029f, _595, (_594 * 0.045745600014925f))) * _496) * 0.1593017578125f);
    float _617 = exp2(log2(mad(0.9836069941520691f, _596, mad(0.017604099586606026f, _595, (_594 * -0.0012105499627068639f))) * _496) * 0.1593017578125f);
    _643 = exp2(log2(((_615 * 18.8515625f) + 0.8359375f) / ((_615 * 18.6875f) + 1.0f)) * 78.84375f);
    _644 = exp2(log2(((_616 * 18.8515625f) + 0.8359375f) / ((_616 * 18.6875f) + 1.0f)) * 78.84375f);
    _645 = exp2(log2(((_617 * 18.8515625f) + 0.8359375f) / ((_617 * 18.6875f) + 1.0f)) * 78.84375f);
  } else {
    _643 = _484;
    _644 = _485;
    _645 = _486;
  }

  SV_Target.x = _643;
  SV_Target.y = _644;
  SV_Target.z = _645;
  SV_Target.rgb = SwapChainPass(SV_Target.rgb);
  SV_Target.w = dot(float3(_349, _350, _351), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  return SV_Target;
}
