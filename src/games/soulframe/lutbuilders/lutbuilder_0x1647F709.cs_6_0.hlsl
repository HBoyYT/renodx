#include "../common.hlsl"
#include "../shared.h"

Texture3D<float4> t0 : register(t0);

Texture3D<float4> t1 : register(t1);

RWTexture3D<float4> u0 : register(u0);

cbuffer cb0 : register(b0) {
  float cb0_008x : packoffset(c008.x);
  float cb0_008y : packoffset(c008.y);
  float cb0_008z : packoffset(c008.z);
  float cb0_008w : packoffset(c008.w);
  float cb0_009x : packoffset(c009.x);
  float cb0_009y : packoffset(c009.y);
  float cb0_009z : packoffset(c009.z);
  float cb0_010x : packoffset(c010.x);
  float cb0_010y : packoffset(c010.y);
  float cb0_010z : packoffset(c010.z);
  float cb0_011x : packoffset(c011.x);
  float cb0_011y : packoffset(c011.y);
  float cb0_011z : packoffset(c011.z);
  float cb0_011w : packoffset(c011.w);
  float cb0_012x : packoffset(c012.x);
  float cb0_013x : packoffset(c013.x);
  float cb0_013y : packoffset(c013.y);
  float cb0_014x : packoffset(c014.x);
  float cb0_014y : packoffset(c014.y);
  float cb0_014z : packoffset(c014.z);
  float cb0_014w : packoffset(c014.w);
  float cb0_015x : packoffset(c015.x);
  float cb0_015y : packoffset(c015.y);
  float cb0_015z : packoffset(c015.z);
  float cb0_015w : packoffset(c015.w);
  float cb0_016x : packoffset(c016.x);
  float cb0_016y : packoffset(c016.y);
  float cb0_016z : packoffset(c016.z);
  float cb0_016w : packoffset(c016.w);
  float cb0_017x : packoffset(c017.x);
  float cb0_017y : packoffset(c017.y);
  float cb0_017z : packoffset(c017.z);
  float cb0_017w : packoffset(c017.w);
  float cb0_018x : packoffset(c018.x);
  float cb0_018y : packoffset(c018.y);
  float cb0_018z : packoffset(c018.z);
  float cb0_018w : packoffset(c018.w);
  float cb0_019x : packoffset(c019.x);
  float cb0_019y : packoffset(c019.y);
  float cb0_019z : packoffset(c019.z);
  float cb0_019w : packoffset(c019.w);
  float cb0_020x : packoffset(c020.x);
  float cb0_020y : packoffset(c020.y);
  float cb0_020z : packoffset(c020.z);
  float cb0_020w : packoffset(c020.w);
  float cb0_021x : packoffset(c021.x);
  float cb0_021y : packoffset(c021.y);
  float cb0_021z : packoffset(c021.z);
  float cb0_021w : packoffset(c021.w);
  float cb0_022x : packoffset(c022.x);
  float cb0_022y : packoffset(c022.y);
  float cb0_022z : packoffset(c022.z);
  float cb0_022w : packoffset(c022.w);
  float cb0_023x : packoffset(c023.x);
  float cb0_023y : packoffset(c023.y);
  float cb0_023z : packoffset(c023.z);
  float cb0_023w : packoffset(c023.w);
  float cb0_024x : packoffset(c024.x);
  float cb0_024y : packoffset(c024.y);
  float cb0_024z : packoffset(c024.z);
  float cb0_024w : packoffset(c024.w);
  float cb0_025x : packoffset(c025.x);
  float cb0_025y : packoffset(c025.y);
  float cb0_025z : packoffset(c025.z);
  float cb0_025w : packoffset(c025.w);
  float cb0_026x : packoffset(c026.x);
  float cb0_026y : packoffset(c026.y);
  float cb0_026z : packoffset(c026.z);
  float cb0_026w : packoffset(c026.w);
  float cb0_027x : packoffset(c027.x);
  float cb0_027y : packoffset(c027.y);
  float cb0_027z : packoffset(c027.z);
  float cb0_027w : packoffset(c027.w);
  float cb0_028x : packoffset(c028.x);
  float cb0_028y : packoffset(c028.y);
  float cb0_028z : packoffset(c028.z);
  float cb0_028w : packoffset(c028.w);
  float cb0_029x : packoffset(c029.x);
  float cb0_029y : packoffset(c029.y);
  float cb0_029z : packoffset(c029.z);
  float cb0_029w : packoffset(c029.w);
  float cb0_030x : packoffset(c030.x);
  float cb0_030y : packoffset(c030.y);
  float cb0_030z : packoffset(c030.z);
  float cb0_030w : packoffset(c030.w);
  float cb0_031x : packoffset(c031.x);
  float cb0_031y : packoffset(c031.y);
  float cb0_031z : packoffset(c031.z);
  float cb0_031w : packoffset(c031.w);
  float cb0_032x : packoffset(c032.x);
  float cb0_032y : packoffset(c032.y);
  float cb0_032z : packoffset(c032.z);
  float cb0_032w : packoffset(c032.w);
  float cb0_033x : packoffset(c033.x);
  float cb0_033y : packoffset(c033.y);
  float cb0_033z : packoffset(c033.z);
  float cb0_033w : packoffset(c033.w);
  float cb0_034x : packoffset(c034.x);
  float cb0_034y : packoffset(c034.y);
  float cb0_034z : packoffset(c034.z);
  float cb0_034w : packoffset(c034.w);
  float cb0_036x : packoffset(c036.x);
  float cb0_037x : packoffset(c037.x);
  float cb0_037y : packoffset(c037.y);
  float cb0_037z : packoffset(c037.z);
  float cb0_037w : packoffset(c037.w);
  float cb0_038x : packoffset(c038.x);
};

SamplerState s0 : register(s0);

SamplerState s1 : register(s1);

[numthreads(8, 8, 1)]
void main(
  uint3 SV_DispatchThreadID : SV_DispatchThreadID,
  uint3 SV_GroupID : SV_GroupID,
  uint3 SV_GroupThreadID : SV_GroupThreadID,
  uint SV_GroupIndex : SV_GroupIndex
) {
  float _22 = exp2(log2(float((uint)SV_DispatchThreadID.x) * 0.03125f) * 0.012683313339948654f);
  float _23 = exp2(log2(float((uint)SV_DispatchThreadID.y) * 0.03125f) * 0.012683313339948654f);
  float _24 = exp2(log2(float((uint)SV_DispatchThreadID.z) * 0.03125f) * 0.012683313339948654f);
  float _76 = cb0_010x * (exp2(log2(max(6.103519990574569e-05f, (exp2(log2(max((_22 + -0.8359375f), 0.0f) / (18.8515625f - (_22 * 18.6875f))) * 6.277394771575928f) * 100.0f))) * cb0_011x) + cb0_011w);
  float _77 = cb0_010y * (exp2(log2(max(6.103519990574569e-05f, (exp2(log2(max((_23 + -0.8359375f), 0.0f) / (18.8515625f - (_23 * 18.6875f))) * 6.277394771575928f) * 100.0f))) * cb0_011y) + cb0_011w);
  float _78 = cb0_010z * (exp2(log2(max(6.103519990574569e-05f, (exp2(log2(max((_24 + -0.8359375f), 0.0f) / (18.8515625f - (_24 * 18.6875f))) * 6.277394771575928f) * 100.0f))) * cb0_011z) + cb0_011w);
  float _79 = dot(float3(_76, _77, _78), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _94 = (((cb0_008x * _79) - _76) * cb0_008w) + _76;
  float _95 = (((cb0_008y * _79) - _77) * cb0_008w) + _77;
  float _96 = (((cb0_008z * _79) - _78) * cb0_008w) + _78;

  float3 untonemapped = float3(_94, _95, _96);

  float _127 = (select((_94 > 0.010591000318527222f), ((log2((_94 * 5.555555820465088f) + 0.052271999418735504f) * 0.07441160827875137f) + 0.3855369985103607f), ((_94 * 5.367654800415039f) + 0.09280899912118912f)) * 0.9696969985961914f) + 0.01515151560306549f;
  float _128 = (select((_95 > 0.010591000318527222f), ((log2((_95 * 5.555555820465088f) + 0.052271999418735504f) * 0.07441160827875137f) + 0.3855369985103607f), ((_95 * 5.367654800415039f) + 0.09280899912118912f)) * 0.9696969985961914f) + 0.01515151560306549f;
  float _129 = (select((_96 > 0.010591000318527222f), ((log2((_96 * 5.555555820465088f) + 0.052271999418735504f) * 0.07441160827875137f) + 0.3855369985103607f), ((_96 * 5.367654800415039f) + 0.09280899912118912f)) * 0.9696969985961914f) + 0.01515151560306549f;
  float _178 = ((((((((_94 * 2708.714111328125f) + 6801.15234375f) * _94) + 1079.54736328125f) * _94) + 1.1614649295806885f) * _94) + -4.139374868827872e-05f) / ((((((((_94 * 983.3893432617188f) + 4132.06640625f) * _94) + 2881.652099609375f) * _94) + 128.35911560058594f) * _94) + 1.0f);
  float _179 = ((((((((_95 * 2708.714111328125f) + 6801.15234375f) * _95) + 1079.54736328125f) * _95) + 1.1614649295806885f) * _95) + -4.139374868827872e-05f) / ((((((((_95 * 983.3893432617188f) + 4132.06640625f) * _95) + 2881.652099609375f) * _95) + 128.35911560058594f) * _95) + 1.0f);
  float _180 = ((((((((_96 * 2708.714111328125f) + 6801.15234375f) * _96) + 1079.54736328125f) * _96) + 1.1614649295806885f) * _96) + -4.139374868827872e-05f) / ((((((((_96 * 983.3893432617188f) + 4132.06640625f) * _96) + 2881.652099609375f) * _96) + 128.35911560058594f) * _96) + 1.0f);
  float _205 = max(select((_178 <= 0.0392800010740757f), (_178 * 0.07739938050508499f), exp2(log2((_178 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f)), 0.0f);
  float _206 = max(select((_179 <= 0.0392800010740757f), (_179 * 0.07739938050508499f), exp2(log2((_179 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f)), 0.0f);
  float _207 = max(select((_180 <= 0.0392800010740757f), (_180 * 0.07739938050508499f), exp2(log2((_180 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f)), 0.0f);

  if (RENODX_TONE_MAP_TYPE == 3.f) {
    TonemapperFix(_205, _206, _207, untonemapped);
  }

  bool _210 = (cb0_037x > 0.0f);
  float4 _211 = t0.SampleLevel(s0, float3(_127, _128, _129), 0.0f);  // INPUT: ARRI Log C800 OUTPUT: SRGB / ARRI Log C800
  if (RENODX_TONE_MAP_TYPE != 0.f) {
    _211.rgb = LUTFix(untonemapped, s0, t0, _210);
  }

  float _215 = max(6.103519990574569e-05f, _211.x);
  float _216 = max(6.103519990574569e-05f, _211.y);
  float _217 = max(6.103519990574569e-05f, _211.z);
  bool _246 = (cb0_037y > 0.0f);
  float4 _247 = t1.SampleLevel(s1, float3(_127, _128, _129), 0.0f);  // INPUT: ARRI Log C800 OUTPUT: SRGB / ARRI Log C800
  if (RENODX_TONE_MAP_TYPE != 0.f) {
    _247.rgb = LUTFix(untonemapped, s0, t0, _246);
  }

  float _251 = max(6.103519990574569e-05f, _247.x);
  float _252 = max(6.103519990574569e-05f, _247.y);
  float _253 = max(6.103519990574569e-05f, _247.z);
  // IF _210, then do silly srgb decode, else, do float3(_205,_206,_207)
  // Then do - _207) * cb0_037z
  float _285 = (select(_210, select((_215 > 0.08100000023841858f), exp2(log2((_215 + 0.0989999994635582f) * 0.9099181294441223f) * 2.222222328186035f), (_215 * 0.2222222238779068f)), _205) - _205) * cb0_037z;
  float _286 = (select(_210, select((_216 > 0.08100000023841858f), exp2(log2((_216 + 0.0989999994635582f) * 0.9099181294441223f) * 2.222222328186035f), (_216 * 0.2222222238779068f)), _206) - _206) * cb0_037z;
  float _287 = (select(_210, select((_217 > 0.08100000023841858f), exp2(log2((_217 + 0.0989999994635582f) * 0.9099181294441223f) * 2.222222328186035f), (_217 * 0.2222222238779068f)), _207) - _207) * cb0_037z;

  if (RENODX_FIX_COLOR) {
    float3 color;
    if (_210) {
      color = float3(_215, _216, _217);
      color = renodx::color::srgb::DecodeSafe(color);
    } else {
      color = float3(_205, _206, _207);
    }
    color = color - float3(_205, _206, _207);
    color *= cb0_037z;

    _285 = color.r;
    _286 = color.g;
    _287 = color.b;
  }

  float _306 = (_285 + _205) + ((((select(_246, select((_251 > 0.08100000023841858f), exp2(log2((_251 + 0.0989999994635582f) * 0.9099181294441223f) * 2.222222328186035f), (_251 * 0.2222222238779068f)), _205) - _205) * cb0_037w) - _285) * cb0_036x);
  float _307 = (_286 + _206) + ((((select(_246, select((_252 > 0.08100000023841858f), exp2(log2((_252 + 0.0989999994635582f) * 0.9099181294441223f) * 2.222222328186035f), (_252 * 0.2222222238779068f)), _206) - _206) * cb0_037w) - _286) * cb0_036x);
  float _308 = (_287 + _207) + ((((select(_246, select((_253 > 0.08100000023841858f), exp2(log2((_253 + 0.0989999994635582f) * 0.9099181294441223f) * 2.222222328186035f), (_253 * 0.2222222238779068f)), _207) - _207) * cb0_037w) - _287) * cb0_036x);

  if (RENODX_FIX_COLOR) {
    float3 color;
    if (_210) {
      color = float3(_251, _252, _253);
      color = renodx::color::srgb::DecodeSafe(color);
    } else {
      color = float3(_205, _206, _207);
    }
    color = ((color * cb0_037w) - float3(_285, _286, _287)) * cb0_036x;
    color += float3(_285 + _205, _286 + _206, _287 + _207);

    _306 = color.r;
    _307 = color.g;
    _308 = color.b;
  }

  // Corrects luminance?
  float _313 = dot(float3(_205, _206, _207), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f)) / dot(float3(_306, _307, _308), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _314 = _306 * _313;
  float _315 = _307 * _313;
  float _316 = _308 * _313;
  float _323 = ((_306 - _314) * cb0_038x) + _314;
  float _324 = ((_307 - _315) * cb0_038x) + _315;
  float _325 = ((_308 - _316) * cb0_038x) + _316;
  float _326 = dot(float3(_323, _324, _325), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _340 = cb0_018w + cb0_023w;
  float _354 = cb0_017w * cb0_022w;
  float _368 = cb0_016w * cb0_021w;
  float _382 = cb0_015w * cb0_020w;
  float _393 = cb0_014w * cb0_019w;
  float _397 = cb0_014x * (_323 - _326);
  float _400 = cb0_014y * (_324 - _326);
  float _403 = cb0_014z * (_325 - _326);
  float _463 = saturate((_326 - cb0_034x) / (cb0_034y - cb0_034x));
  float _467 = (_463 * _463) * (3.0f - (_463 * 2.0f));
  float _468 = 1.0f - _467;
  float _477 = cb0_033w + cb0_018w;
  float _486 = cb0_032w * cb0_017w;
  float _495 = cb0_031w * cb0_016w;
  float _504 = cb0_030w * cb0_015w;
  float _510 = cb0_029w * cb0_014w;
  float _573 = saturate((_326 - cb0_034z) / (cb0_034w - cb0_034z));
  float _577 = (_573 * _573) * (3.0f - (_573 * 2.0f));
  float _586 = cb0_028w + cb0_018w;
  float _595 = cb0_027w * cb0_017w;
  float _604 = cb0_026w * cb0_016w;
  float _613 = cb0_025w * cb0_015w;
  float _619 = cb0_024w * cb0_014w;
  float _677 = _467 - _577;
  float _688 = ((_577 * (((cb0_033x + cb0_018x) + _477) + (((cb0_032x * cb0_017x) * _486) * exp2(log2(exp2(((cb0_030x * cb0_015x) * _504) * log2(max(0.0f, (((_397 * cb0_029x) * _510) + _326)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_031x * cb0_016x) * _495)))))) + (_468 * (((cb0_018x + cb0_023x) + _340) + (((cb0_017x * cb0_022x) * _354) * exp2(log2(exp2(((cb0_015x * cb0_020x) * _382) * log2(max(0.0f, (((_397 * cb0_019x) * _393) + _326)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_016x * cb0_021x) * _368))))))) + ((((cb0_028x + cb0_018x) + _586) + (((cb0_027x * cb0_017x) * _595) * exp2(log2(exp2(((cb0_025x * cb0_015x) * _613) * log2(max(0.0f, (((_397 * cb0_024x) * _619) + _326)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_026x * cb0_016x) * _604))))) * _677);
  float _690 = ((_577 * (((cb0_033y + cb0_018y) + _477) + (((cb0_032y * cb0_017y) * _486) * exp2(log2(exp2(((cb0_030y * cb0_015y) * _504) * log2(max(0.0f, (((_400 * cb0_029y) * _510) + _326)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_031y * cb0_016y) * _495)))))) + (_468 * (((cb0_018y + cb0_023y) + _340) + (((cb0_017y * cb0_022y) * _354) * exp2(log2(exp2(((cb0_015y * cb0_020y) * _382) * log2(max(0.0f, (((_400 * cb0_019y) * _393) + _326)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_016y * cb0_021y) * _368))))))) + ((((cb0_028y + cb0_018y) + _586) + (((cb0_027y * cb0_017y) * _595) * exp2(log2(exp2(((cb0_025y * cb0_015y) * _613) * log2(max(0.0f, (((_400 * cb0_024y) * _619) + _326)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_026y * cb0_016y) * _604))))) * _677);
  float _692 = ((_577 * (((cb0_033z + cb0_018z) + _477) + (((cb0_032z * cb0_017z) * _486) * exp2(log2(exp2(((cb0_030z * cb0_015z) * _504) * log2(max(0.0f, (((_403 * cb0_029z) * _510) + _326)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_031z * cb0_016z) * _495)))))) + (_468 * (((cb0_018z + cb0_023z) + _340) + (((cb0_017z * cb0_022z) * _354) * exp2(log2(exp2(((cb0_015z * cb0_020z) * _382) * log2(max(0.0f, (((_403 * cb0_019z) * _393) + _326)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_016z * cb0_021z) * _368))))))) + ((((cb0_028z + cb0_018z) + _586) + (((cb0_027z * cb0_017z) * _595) * exp2(log2(exp2(((cb0_025z * cb0_015z) * _613) * log2(max(0.0f, (((_403 * cb0_024z) * _619) + _326)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_026z * cb0_016z) * _604))))) * _677);

  if (RENODX_TONE_MAP_TYPE != 0.f) {
    ApplyTonemap(_688, _690, _692);
  }
  
  if (RENODX_FIX_CROSSFADE) {
    CrossFadeFix(_688, _690, _692, cb0_009x, cb0_009z);
  }

  float _695 = max(max(max(_688, _690), _692), 9.999999747378752e-06f);
  float _706 = select((abs(1.0f - _695) < 0.5249999761581421f), ((((5.809524059295654f - (_695 * 1.9047620296478271f)) * _695) + -0.42976200580596924f) * 0.25f), saturate(_695)) / _695;
  float _707 = _706 * _688;
  float _708 = _706 * _690;
  float _709 = _706 * _692;
  float _762 = saturate(saturate(((exp2(log2(select((_707 <= 0.0031308000907301903f), (_707 * 12.920000076293945f), (((pow(_707, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f))) * cb0_009x) + -0.5f) * cb0_009y) + 0.5f) - cb0_009z);
  float _763 = saturate(saturate(((exp2(log2(select((_708 <= 0.0031308000907301903f), (_708 * 12.920000076293945f), (((pow(_708, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f))) * cb0_009x) + -0.5f) * cb0_009y) + 0.5f) - cb0_009z);
  float _764 = saturate(saturate(((exp2(log2(select((_709 <= 0.0031308000907301903f), (_709 * 12.920000076293945f), (((pow(_709, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f))) * cb0_009x) + -0.5f) * cb0_009y) + 0.5f) - cb0_009z);
  int _768 = int(cb0_013x);
  float _770 = select((_768 == 1), 1.0f, 0.0f);
  float _772 = select((_768 == 2), 1.0f, 0.0f);
  float _774 = select((_768 == 3), 1.0f, 0.0f);
  float _776 = select((_768 == 0), 0.0f, 0.8999999761581421f);
  float _783 = (_776 * 0.1120000034570694f) + 1.0f;
  float _789 = (select((_776 > 0.0f), 0.10999999940395355f, 0.0f) - (_776 * 0.07500000298023224f)) + 0.5f;
  float _790 = _789 + (_783 * (_762 + -0.5f));
  float _791 = _789 + (_783 * (_763 + -0.5f));
  float _792 = _789 + (_783 * (_764 + -0.5f));
  float _797 = ((_790 * 17.882400512695312f) + (_791 * 43.5161018371582f)) + (_792 * 4.119349956512451f);
  float _802 = ((_790 * 3.4556500911712646f) + (_791 * 27.155399322509766f)) + (_792 * 3.867140054702759f);
  float _807 = ((_790 * 0.029956599697470665f) + (_791 * 0.1843090057373047f)) + (_792 * 1.4670900106430054f);
  float _814 = (((_802 * 2.023439884185791f) - (_807 * 2.52810001373291f)) * _770) + (_797 * (1.0f - _770));
  float _821 = (((_797 * 0.4942069947719574f) + (_807 * 1.248270034790039f)) * _772) + (_802 * (1.0f - _772));
  float _828 = (((_802 * 0.8011090159416199f) - (_797 * 0.3959130048751831f)) * _774) + (_807 * (1.0f - _774));
  float _841 = ((((_821 * 0.13050441443920135f) + _790) - (_814 * 0.08094444870948792f)) - (_828 * 0.11672106385231018f)) * 0.699999988079071f;
  float _861 = 1.0f - _776;
  float _874 = ((((min(max(_790, 0.0f), 1.0f) * _776) - _762) + (_790 * _861)) * cb0_013y) + _762;
  float _875 = ((((min(max((((((_791 * 2.0f) - (_821 * 0.05401932820677757f)) + (_814 * 0.010248533450067043f)) + (_828 * 0.11361470818519592f)) + _841), 0.0f), 1.0f) * _776) - _763) + (_791 * _861)) * cb0_013y) + _763;
  float _876 = ((((min(max((((((_814 * 0.0003652969317045063f) + (_792 * 2.0f)) + (_821 * 0.004121614620089531f)) - (_828 * 0.693511426448822f)) + _841), 0.0f), 1.0f) * _776) - _764) + (_792 * _861)) * cb0_013y) + _764;
  float _901 = select((_874 <= 0.0392800010740757f), (_874 * 0.07739938050508499f), exp2(log2((_874 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f)) / _706;
  float _902 = select((_875 <= 0.0392800010740757f), (_875 * 0.07739938050508499f), exp2(log2((_875 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f)) / _706;
  float _903 = select((_876 <= 0.0392800010740757f), (_876 * 0.07739938050508499f), exp2(log2((_876 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f)) / _706;

  float4 output;
  output.w = 1.f;

  output.rgb = float3(_901, _902, _903);
  BT2020fromBT709andPQEncode(output.rgb, RENODX_DIFFUSE_WHITE_NITS);
  u0[int3((uint)(SV_DispatchThreadID.x), (uint)(SV_DispatchThreadID.y), (uint)(SV_DispatchThreadID.z))] = output;
}
