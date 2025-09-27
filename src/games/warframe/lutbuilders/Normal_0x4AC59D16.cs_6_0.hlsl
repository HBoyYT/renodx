#include "../common.hlsl"
#include "../shared.h"

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
};

[numthreads(8, 8, 1)]
void main(
  uint3 SV_DispatchThreadID : SV_DispatchThreadID,
  uint3 SV_GroupID : SV_GroupID,
  uint3 SV_GroupThreadID : SV_GroupThreadID,
  uint SV_GroupIndex : SV_GroupIndex
) {
  float _18 = exp2(log2(float((uint)SV_DispatchThreadID.x) * 0.032258063554763794f) * 0.012683313339948654f);
  float _19 = exp2(log2(float((uint)SV_DispatchThreadID.y) * 0.032258063554763794f) * 0.012683313339948654f);
  float _20 = exp2(log2(float((uint)SV_DispatchThreadID.z) * 0.032258063554763794f) * 0.012683313339948654f);
  float _45 = exp2(log2(max((_18 + -0.8359375f), 0.0f) / (18.8515625f - (_18 * 18.6875f))) * 6.277394771575928f) * 100.0f;
  float _46 = exp2(log2(max((_19 + -0.8359375f), 0.0f) / (18.8515625f - (_19 * 18.6875f))) * 6.277394771575928f) * 100.0f;
  float _47 = exp2(log2(max((_20 + -0.8359375f), 0.0f) / (18.8515625f - (_20 * 18.6875f))) * 6.277394771575928f) * 100.0f;
  float _48 = dot(float3(_45, _46, _47), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _62 = cb0_018w + cb0_023w;
  float _76 = cb0_017w * cb0_022w;
  float _90 = cb0_016w * cb0_021w;
  float _104 = cb0_015w * cb0_020w;
  float _115 = cb0_014w * cb0_019w;
  float _119 = cb0_014x * (_45 - _48);
  float _122 = cb0_014y * (_46 - _48);
  float _125 = cb0_014z * (_47 - _48);
  float _185 = saturate((_48 - cb0_034x) / (cb0_034y - cb0_034x));
  float _189 = (_185 * _185) * (3.0f - (_185 * 2.0f));
  float _190 = 1.0f - _189;
  float _199 = cb0_033w + cb0_018w;
  float _208 = cb0_032w * cb0_017w;
  float _217 = cb0_031w * cb0_016w;
  float _226 = cb0_030w * cb0_015w;
  float _232 = cb0_029w * cb0_014w;
  float _295 = saturate((_48 - cb0_034z) / (cb0_034w - cb0_034z));
  float _299 = (_295 * _295) * (3.0f - (_295 * 2.0f));
  float _308 = cb0_028w + cb0_018w;
  float _317 = cb0_027w * cb0_017w;
  float _326 = cb0_026w * cb0_016w;
  float _335 = cb0_025w * cb0_015w;
  float _341 = cb0_024w * cb0_014w;
  float _399 = _189 - _299;
  float _439 = cb0_010x * (exp2(log2(max(6.103519990574569e-05f, (((_299 * (((cb0_033x + cb0_018x) + _199) + (((cb0_032x * cb0_017x) * _208) * exp2(log2(exp2(((cb0_030x * cb0_015x) * _226) * log2(max(0.0f, (((_119 * cb0_029x) * _232) + _48)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_031x * cb0_016x) * _217)))))) + (_190 * (((cb0_018x + cb0_023x) + _62) + (((cb0_017x * cb0_022x) * _76) * exp2(log2(exp2(((cb0_015x * cb0_020x) * _104) * log2(max(0.0f, (((_119 * cb0_019x) * _115) + _48)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_016x * cb0_021x) * _90))))))) + ((((cb0_028x + cb0_018x) + _308) + (((cb0_027x * cb0_017x) * _317) * exp2(log2(exp2(((cb0_025x * cb0_015x) * _335) * log2(max(0.0f, (((_119 * cb0_024x) * _341) + _48)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_026x * cb0_016x) * _326))))) * _399)))) * cb0_011x) + cb0_011w);
  float _440 = cb0_010y * (exp2(log2(max(6.103519990574569e-05f, (((_299 * (((cb0_033y + cb0_018y) + _199) + (((cb0_032y * cb0_017y) * _208) * exp2(log2(exp2(((cb0_030y * cb0_015y) * _226) * log2(max(0.0f, (((_122 * cb0_029y) * _232) + _48)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_031y * cb0_016y) * _217)))))) + (_190 * (((cb0_018y + cb0_023y) + _62) + (((cb0_017y * cb0_022y) * _76) * exp2(log2(exp2(((cb0_015y * cb0_020y) * _104) * log2(max(0.0f, (((_122 * cb0_019y) * _115) + _48)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_016y * cb0_021y) * _90))))))) + ((((cb0_028y + cb0_018y) + _308) + (((cb0_027y * cb0_017y) * _317) * exp2(log2(exp2(((cb0_025y * cb0_015y) * _335) * log2(max(0.0f, (((_122 * cb0_024y) * _341) + _48)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_026y * cb0_016y) * _326))))) * _399)))) * cb0_011y) + cb0_011w);
  float _441 = cb0_010z * (exp2(log2(max(6.103519990574569e-05f, (((_299 * (((cb0_033z + cb0_018z) + _199) + (((cb0_032z * cb0_017z) * _208) * exp2(log2(exp2(((cb0_030z * cb0_015z) * _226) * log2(max(0.0f, (((_125 * cb0_029z) * _232) + _48)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_031z * cb0_016z) * _217)))))) + (_190 * (((cb0_018z + cb0_023z) + _62) + (((cb0_017z * cb0_022z) * _76) * exp2(log2(exp2(((cb0_015z * cb0_020z) * _104) * log2(max(0.0f, (((_125 * cb0_019z) * _115) + _48)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_016z * cb0_021z) * _90))))))) + ((((cb0_028z + cb0_018z) + _308) + (((cb0_027z * cb0_017z) * _317) * exp2(log2(exp2(((cb0_025z * cb0_015z) * _335) * log2(max(0.0f, (((_125 * cb0_024z) * _341) + _48)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_026z * cb0_016z) * _326))))) * _399)))) * cb0_011z) + cb0_011w);

  if (RENODX_FIX_COLOR) {
    _439 = cb0_010x * (exp2(log2(((((_299 * (((cb0_033x + cb0_018x) + _199) + (((cb0_032x * cb0_017x) * _208) * exp2(log2(exp2(((cb0_030x * cb0_015x) * _226) * log2(((((_119 * cb0_029x) * _232) + _48)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_031x * cb0_016x) * _217)))))) + (_190 * (((cb0_018x + cb0_023x) + _62) + (((cb0_017x * cb0_022x) * _76) * exp2(log2(exp2(((cb0_015x * cb0_020x) * _104) * log2(((((_119 * cb0_019x) * _115) + _48)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_016x * cb0_021x) * _90))))))) + ((((cb0_028x + cb0_018x) + _308) + (((cb0_027x * cb0_017x) * _317) * exp2(log2(exp2(((cb0_025x * cb0_015x) * _335) * log2(((((_119 * cb0_024x) * _341) + _48)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_026x * cb0_016x) * _326))))) * _399)))) * cb0_011x) + cb0_011w);
    _440 = cb0_010y * (exp2(log2(((((_299 * (((cb0_033y + cb0_018y) + _199) + (((cb0_032y * cb0_017y) * _208) * exp2(log2(exp2(((cb0_030y * cb0_015y) * _226) * log2(((((_122 * cb0_029y) * _232) + _48)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_031y * cb0_016y) * _217)))))) + (_190 * (((cb0_018y + cb0_023y) + _62) + (((cb0_017y * cb0_022y) * _76) * exp2(log2(exp2(((cb0_015y * cb0_020y) * _104) * log2(((((_122 * cb0_019y) * _115) + _48)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_016y * cb0_021y) * _90))))))) + ((((cb0_028y + cb0_018y) + _308) + (((cb0_027y * cb0_017y) * _317) * exp2(log2(exp2(((cb0_025y * cb0_015y) * _335) * log2(((((_122 * cb0_024y) * _341) + _48)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_026y * cb0_016y) * _326))))) * _399)))) * cb0_011y) + cb0_011w);
    _441 = cb0_010z * (exp2(log2(((((_299 * (((cb0_033z + cb0_018z) + _199) + (((cb0_032z * cb0_017z) * _208) * exp2(log2(exp2(((cb0_030z * cb0_015z) * _226) * log2(((((_125 * cb0_029z) * _232) + _48)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_031z * cb0_016z) * _217)))))) + (_190 * (((cb0_018z + cb0_023z) + _62) + (((cb0_017z * cb0_022z) * _76) * exp2(log2(exp2(((cb0_015z * cb0_020z) * _104) * log2(((((_125 * cb0_019z) * _115) + _48)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_016z * cb0_021z) * _90))))))) + ((((cb0_028z + cb0_018z) + _308) + (((cb0_027z * cb0_017z) * _317) * exp2(log2(exp2(((cb0_025z * cb0_015z) * _335) * log2(((((_125 * cb0_024z) * _341) + _48)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_026z * cb0_016z) * _326))))) * _399)))) * cb0_011z) + cb0_011w);
  }
  
  
  float _442 = dot(float3(_439, _440, _441), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _457 = (((cb0_008x * _442) - _439) * cb0_008w) + _439;
  float _458 = (((cb0_008y * _442) - _440) * cb0_008w) + _440;
  float _459 = (((cb0_008z * _442) - _441) * cb0_008w) + _441;
  float _508 = ((((((((_457 * 2708.714111328125f) + 6801.15234375f) * _457) + 1079.54736328125f) * _457) + 1.1614649295806885f) * _457) + -4.139374868827872e-05f) / ((((((((_457 * 983.3893432617188f) + 4132.06640625f) * _457) + 2881.652099609375f) * _457) + 128.35911560058594f) * _457) + 1.0f);
  float _509 = ((((((((_458 * 2708.714111328125f) + 6801.15234375f) * _458) + 1079.54736328125f) * _458) + 1.1614649295806885f) * _458) + -4.139374868827872e-05f) / ((((((((_458 * 983.3893432617188f) + 4132.06640625f) * _458) + 2881.652099609375f) * _458) + 128.35911560058594f) * _458) + 1.0f);
  float _510 = ((((((((_459 * 2708.714111328125f) + 6801.15234375f) * _459) + 1079.54736328125f) * _459) + 1.1614649295806885f) * _459) + -4.139374868827872e-05f) / ((((((((_459 * 983.3893432617188f) + 4132.06640625f) * _459) + 2881.652099609375f) * _459) + 128.35911560058594f) * _459) + 1.0f);
  float _535 = max(select((_508 <= 0.0392800010740757f), (_508 * 0.07739938050508499f), exp2(log2((_508 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f)), 0.0f);
  float _536 = max(select((_509 <= 0.0392800010740757f), (_509 * 0.07739938050508499f), exp2(log2((_509 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f)), 0.0f);
  float _537 = max(select((_510 <= 0.0392800010740757f), (_510 * 0.07739938050508499f), exp2(log2((_510 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f)), 0.0f);

  if (RENODX_FIX_COLOR) {
    float3 color = float3(_508, _509, _510);
    color = renodx::color::srgb::DecodeSafe(color);

    _535 = color.r;
    _536 = color.g;
    _537 = color.b;
  }

  float3 untonemapped = float3(_457, _458, _459);
  
  // if (RENODX_TONE_MAP_TYPE != 0.f) {
  //   TonemapperFix(_535, _536, _537, untonemapped);
  // }

  if (RENODX_TONE_MAP_TYPE != 0.f) {
    TonemapperFix(_535, _536, _537, untonemapped);
  }

  if (RENODX_FIX_CROSSFADE) {
    CrossFadeFix(_535, _536, _537, cb0_009x, cb0_009z);
  }

  float _540 = max(max(max(_535, _536), _537), 9.999999747378752e-06f);

  if (RENODX_FIX_COLOR) {
    _540 = (max(max(_535, _536), _537));
  }

  float _551 = select((abs(1.0f - _540) < 0.5249999761581421f), ((((5.809524059295654f - (_540 * 1.9047620296478271f)) * _540) + -0.42976200580596924f) * 0.25f), saturate(_540)) / _540;
  float _552 = _551 * _535;
  float _553 = _551 * _536;
  float _554 = _551 * _537;
  float _598 = 0.5f - cb0_009z;
  float _602 = saturate(_598 + ((exp2(log2(select((_552 <= 0.0031308000907301903f), (_552 * 12.920000076293945f), (((pow(_552, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f))) * cb0_009x) + -0.5f) * cb0_009y));
  float _603 = saturate(_598 + ((exp2(log2(select((_553 <= 0.0031308000907301903f), (_553 * 12.920000076293945f), (((pow(_553, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f))) * cb0_009x) + -0.5f) * cb0_009y));
  float _604 = saturate(_598 + ((exp2(log2(select((_554 <= 0.0031308000907301903f), (_554 * 12.920000076293945f), (((pow(_554, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f))) * cb0_009x) + -0.5f) * cb0_009y));
  
  // SRGB EncodeSafe
  if (RENODX_FIX_COLOR) {
    _602 = renodx::math::Sign(_552) * saturate(_598 + ((exp2(log2(select((abs(_552) <= 0.0031308000907301903f), (abs(_552) * 12.920000076293945f), (((pow(abs(_552), 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f))) * cb0_009x) + -0.5f) * cb0_009y));
    _603 = renodx::math::Sign(_553) * saturate(_598 + ((exp2(log2(select((abs(_553) <= 0.0031308000907301903f), (abs(_553) * 12.920000076293945f), (((pow(abs(_553), 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f))) * cb0_009x) + -0.5f) * cb0_009y));
    _604 = renodx::math::Sign(_554) * saturate(_598 + ((exp2(log2(select((abs(_554) <= 0.0031308000907301903f), (abs(_554) * 12.920000076293945f), (((pow(abs(_554), 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f))) * cb0_009x) + -0.5f) * cb0_009y));
  }
  
  int _608 = int(cb0_013x);
  float _610 = select((_608 == 1), 1.0f, 0.0f);
  float _612 = select((_608 == 2), 1.0f, 0.0f);
  float _614 = select((_608 == 3), 1.0f, 0.0f);
  float _616 = select((_608 == 0), 0.0f, 0.8999999761581421f);
  float _623 = (_616 * 0.1120000034570694f) + 1.0f;
  float _629 = (select((_616 > 0.0f), 0.10999999940395355f, 0.0f) - (_616 * 0.07500000298023224f)) + 0.5f;
  float _630 = _629 + (_623 * (_602 + -0.5f));
  float _631 = _629 + (_623 * (_603 + -0.5f));
  float _632 = _629 + (_623 * (_604 + -0.5f));
  float _637 = ((_630 * 17.882400512695312f) + (_631 * 43.5161018371582f)) + (_632 * 4.119349956512451f);
  float _642 = ((_630 * 3.4556500911712646f) + (_631 * 27.155399322509766f)) + (_632 * 3.867140054702759f);
  float _647 = ((_630 * 0.029956599697470665f) + (_631 * 0.1843090057373047f)) + (_632 * 1.4670900106430054f);
  float _654 = (((_642 * 2.023439884185791f) - (_647 * 2.52810001373291f)) * _610) + (_637 * (1.0f - _610));
  float _661 = (((_637 * 0.4942069947719574f) + (_647 * 1.248270034790039f)) * _612) + (_642 * (1.0f - _612));
  float _668 = (((_642 * 0.8011090159416199f) - (_637 * 0.3959130048751831f)) * _614) + (_647 * (1.0f - _614));
  float _681 = ((((_661 * 0.13050441443920135f) + _630) - (_654 * 0.08094444870948792f)) - (_668 * 0.11672106385231018f)) * 0.699999988079071f;
  float _701 = 1.0f - _616;
  float _714 = ((((min(max(_630, 0.0f), 1.0f) * _616) - _602) + (_630 * _701)) * cb0_013y) + _602;
  float _715 = ((((min(max((((((_631 * 2.0f) - (_661 * 0.05401932820677757f)) + (_654 * 0.010248533450067043f)) + (_668 * 0.11361470818519592f)) + _681), 0.0f), 1.0f) * _616) - _603) + (_631 * _701)) * cb0_013y) + _603;
  float _716 = ((((min(max((((((_654 * 0.0003652969317045063f) + (_632 * 2.0f)) + (_661 * 0.004121614620089531f)) - (_668 * 0.693511426448822f)) + _681), 0.0f), 1.0f) * _616) - _604) + (_632 * _701)) * cb0_013y) + _604;

  if (RENODX_FIX_COLOR) {
    _714 = ((((min((_630), 1.0f) * _616) - _602) + (_630 * _701)) * cb0_013y) + _602;
    _715 = ((((min(((((((_631 * 2.0f) - (_661 * 0.05401932820677757f)) + (_654 * 0.010248533450067043f)) + (_668 * 0.11361470818519592f)) + _681)), 1.0f) * _616) - _603) + (_631 * _701)) * cb0_013y) + _603;
    _716 = ((((min(((((((_654 * 0.0003652969317045063f) + (_632 * 2.0f)) + (_661 * 0.004121614620089531f)) - (_668 * 0.693511426448822f)) + _681)), 1.0f) * _616) - _604) + (_632 * _701)) * cb0_013y) + _604;
  }

  float _741 = select((_714 <= 0.0392800010740757f), (_714 * 0.07739938050508499f), exp2(log2((_714 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f)) / _551;
  float _742 = select((_715 <= 0.0392800010740757f), (_715 * 0.07739938050508499f), exp2(log2((_715 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f)) / _551;
  float _743 = select((_716 <= 0.0392800010740757f), (_716 * 0.07739938050508499f), exp2(log2((_716 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f)) / _551;
  
  // SRGB EncodeSafe
  if (RENODX_FIX_COLOR) {
    float3 color = float3(_714, _715, _716);
    color = renodx::color::srgb::DecodeSafe(color);

    _741 = color.r / _551;
    _742 = color.g / _551;
    _743 = color.b / _551;
  }

  //float _755 = cb0_012x * 9.999999747378752e-05f;

  float4 output;
  output.w = 1.f;

  output.rgb = float3(_741, _742, _743);
  BT2020fromBT709andPQEncode(output.rgb, RENODX_DIFFUSE_WHITE_NITS);

  u0[int3((uint)(SV_DispatchThreadID.x), (uint)(SV_DispatchThreadID.y), (uint)(SV_DispatchThreadID.z))] = output;
}