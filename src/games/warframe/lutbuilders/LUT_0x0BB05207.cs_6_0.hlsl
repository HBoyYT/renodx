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
  float _22 = exp2(log2(float((uint)SV_DispatchThreadID.x) * 0.032258063554763794f) * 0.012683313339948654f);
  float _23 = exp2(log2(float((uint)SV_DispatchThreadID.y) * 0.032258063554763794f) * 0.012683313339948654f);
  float _24 = exp2(log2(float((uint)SV_DispatchThreadID.z) * 0.032258063554763794f) * 0.012683313339948654f);
  float _49 = exp2(log2(max((_22 + -0.8359375f), 0.0f) / (18.8515625f - (_22 * 18.6875f))) * 6.277394771575928f) * 100.0f;
  float _50 = exp2(log2(max((_23 + -0.8359375f), 0.0f) / (18.8515625f - (_23 * 18.6875f))) * 6.277394771575928f) * 100.0f;
  float _51 = exp2(log2(max((_24 + -0.8359375f), 0.0f) / (18.8515625f - (_24 * 18.6875f))) * 6.277394771575928f) * 100.0f;
  float _52 = dot(float3(_49, _50, _51), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _66 = cb0_018w + cb0_023w;
  float _80 = cb0_017w * cb0_022w;
  float _94 = cb0_016w * cb0_021w;
  float _108 = cb0_015w * cb0_020w;
  float _119 = cb0_014w * cb0_019w;
  float _123 = cb0_014x * (_49 - _52);
  float _126 = cb0_014y * (_50 - _52);
  float _129 = cb0_014z * (_51 - _52);
  float _189 = saturate((_52 - cb0_034x) / (cb0_034y - cb0_034x));
  float _193 = (_189 * _189) * (3.0f - (_189 * 2.0f));
  float _194 = 1.0f - _193;
  float _203 = cb0_033w + cb0_018w;
  float _212 = cb0_032w * cb0_017w;
  float _221 = cb0_031w * cb0_016w;
  float _230 = cb0_030w * cb0_015w;
  float _236 = cb0_029w * cb0_014w;
  float _299 = saturate((_52 - cb0_034z) / (cb0_034w - cb0_034z));
  float _303 = (_299 * _299) * (3.0f - (_299 * 2.0f));
  float _312 = cb0_028w + cb0_018w;
  float _321 = cb0_027w * cb0_017w;
  float _330 = cb0_026w * cb0_016w;
  float _339 = cb0_025w * cb0_015w;
  float _345 = cb0_024w * cb0_014w;
  float _403 = _193 - _303;
  float _443 = cb0_010x * (exp2(log2(max(6.103519990574569e-05f, (((_303 * (((cb0_033x + cb0_018x) + _203) + (((cb0_032x * cb0_017x) * _212) * exp2(log2(exp2(((cb0_030x * cb0_015x) * _230) * log2(max(0.0f, (((_123 * cb0_029x) * _236) + _52)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_031x * cb0_016x) * _221)))))) + (_194 * (((cb0_018x + cb0_023x) + _66) + (((cb0_017x * cb0_022x) * _80) * exp2(log2(exp2(((cb0_015x * cb0_020x) * _108) * log2(max(0.0f, (((_123 * cb0_019x) * _119) + _52)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_016x * cb0_021x) * _94))))))) + ((((cb0_028x + cb0_018x) + _312) + (((cb0_027x * cb0_017x) * _321) * exp2(log2(exp2(((cb0_025x * cb0_015x) * _339) * log2(max(0.0f, (((_123 * cb0_024x) * _345) + _52)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_026x * cb0_016x) * _330))))) * _403)))) * cb0_011x) + cb0_011w);
  float _444 = cb0_010y * (exp2(log2(max(6.103519990574569e-05f, (((_303 * (((cb0_033y + cb0_018y) + _203) + (((cb0_032y * cb0_017y) * _212) * exp2(log2(exp2(((cb0_030y * cb0_015y) * _230) * log2(max(0.0f, (((_126 * cb0_029y) * _236) + _52)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_031y * cb0_016y) * _221)))))) + (_194 * (((cb0_018y + cb0_023y) + _66) + (((cb0_017y * cb0_022y) * _80) * exp2(log2(exp2(((cb0_015y * cb0_020y) * _108) * log2(max(0.0f, (((_126 * cb0_019y) * _119) + _52)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_016y * cb0_021y) * _94))))))) + ((((cb0_028y + cb0_018y) + _312) + (((cb0_027y * cb0_017y) * _321) * exp2(log2(exp2(((cb0_025y * cb0_015y) * _339) * log2(max(0.0f, (((_126 * cb0_024y) * _345) + _52)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_026y * cb0_016y) * _330))))) * _403)))) * cb0_011y) + cb0_011w);
  float _445 = cb0_010z * (exp2(log2(max(6.103519990574569e-05f, (((_303 * (((cb0_033z + cb0_018z) + _203) + (((cb0_032z * cb0_017z) * _212) * exp2(log2(exp2(((cb0_030z * cb0_015z) * _230) * log2(max(0.0f, (((_129 * cb0_029z) * _236) + _52)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_031z * cb0_016z) * _221)))))) + (_194 * (((cb0_018z + cb0_023z) + _66) + (((cb0_017z * cb0_022z) * _80) * exp2(log2(exp2(((cb0_015z * cb0_020z) * _108) * log2(max(0.0f, (((_129 * cb0_019z) * _119) + _52)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_016z * cb0_021z) * _94))))))) + ((((cb0_028z + cb0_018z) + _312) + (((cb0_027z * cb0_017z) * _321) * exp2(log2(exp2(((cb0_025z * cb0_015z) * _339) * log2(max(0.0f, (((_129 * cb0_024z) * _345) + _52)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_026z * cb0_016z) * _330))))) * _403)))) * cb0_011z) + cb0_011w);
  float _446 = dot(float3(_443, _444, _445), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _461 = (((cb0_008x * _446) - _443) * cb0_008w) + _443;
  float _462 = (((cb0_008y * _446) - _444) * cb0_008w) + _444;
  float _463 = (((cb0_008z * _446) - _445) * cb0_008w) + _445;

  // arri c800 encode but multiplied by 2?
  float _497 = (select(((_461 * 2.0f) > 0.010591000318527222f), ((log2((_461 * 11.111111640930176f) + 0.052271999418735504f) * 0.07441160827875137f) + 0.3855369985103607f), ((_461 * 10.735309600830078f) + 0.09280899912118912f)) * 0.9696969985961914f) + 0.01515151560306549f;
  float _498 = (select(((_462 * 2.0f) > 0.010591000318527222f), ((log2((_462 * 11.111111640930176f) + 0.052271999418735504f) * 0.07441160827875137f) + 0.3855369985103607f), ((_462 * 10.735309600830078f) + 0.09280899912118912f)) * 0.9696969985961914f) + 0.01515151560306549f;
  float _499 = (select(((_463 * 2.0f) > 0.010591000318527222f), ((log2((_463 * 11.111111640930176f) + 0.052271999418735504f) * 0.07441160827875137f) + 0.3855369985103607f), ((_463 * 10.735309600830078f) + 0.09280899912118912f)) * 0.9696969985961914f) + 0.01515151560306549f;
  
  // Linear input, srgb output
  float _548 = ((((((((_461 * 2708.714111328125f) + 6801.15234375f) * _461) + 1079.54736328125f) * _461) + 1.1614649295806885f) * _461) + -4.139374868827872e-05f) / ((((((((_461 * 983.3893432617188f) + 4132.06640625f) * _461) + 2881.652099609375f) * _461) + 128.35911560058594f) * _461) + 1.0f);
  float _549 = ((((((((_462 * 2708.714111328125f) + 6801.15234375f) * _462) + 1079.54736328125f) * _462) + 1.1614649295806885f) * _462) + -4.139374868827872e-05f) / ((((((((_462 * 983.3893432617188f) + 4132.06640625f) * _462) + 2881.652099609375f) * _462) + 128.35911560058594f) * _462) + 1.0f);
  float _550 = ((((((((_463 * 2708.714111328125f) + 6801.15234375f) * _463) + 1079.54736328125f) * _463) + 1.1614649295806885f) * _463) + -4.139374868827872e-05f) / ((((((((_463 * 983.3893432617188f) + 4132.06640625f) * _463) + 2881.652099609375f) * _463) + 128.35911560058594f) * _463) + 1.0f);
  float _575 = max(select((_548 <= 0.0392800010740757f), (_548 * 0.07739938050508499f), exp2(log2((_548 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f)), 0.0f);
  float _576 = max(select((_549 <= 0.0392800010740757f), (_549 * 0.07739938050508499f), exp2(log2((_549 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f)), 0.0f);
  float _577 = max(select((_550 <= 0.0392800010740757f), (_550 * 0.07739938050508499f), exp2(log2((_550 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f)), 0.0f);
  bool _580 = (cb0_037x > 0.0f);
  float3 untonemapped = float3(_461, _462, _463);

  if (RENODX_TONE_MAP_TYPE != 0.f) {
    TonemapperFix(_575, _576, _577, untonemapped);
  }

  float4 _581 = t0.SampleLevel(s0, float3(_497, _498, _499), 0.0f);
  if (RENODX_TONE_MAP_TYPE != 0.f) {
    _581.rgb = LUTFix(untonemapped, s0, t0, _580);
  }
   
  float _585 = max(6.103519990574569e-05f, _581.x);
  float _586 = max(6.103519990574569e-05f, _581.y);
  float _587 = max(6.103519990574569e-05f, _581.z);
  bool _616 = (cb0_037y > 0.0f);

  float4 _617 = t1.SampleLevel(s1, float3(_497, _498, _499), 0.0f);
  if (RENODX_TONE_MAP_TYPE != 0.f) {
    _617.rgb = LUTFix(untonemapped, s1, t1, _616);
  }

  float _621 = max(6.103519990574569e-05f, _617.x);
  float _622 = max(6.103519990574569e-05f, _617.y);
  float _623 = max(6.103519990574569e-05f, _617.z);
  float _655 = (select(_580, select((_585 > 0.08100000023841858f), exp2(log2((_585 + 0.0989999994635582f) * 0.9099181294441223f) * 2.222222328186035f), (_585 * 0.2222222238779068f)), _575) - _575) * cb0_037z;
  float _656 = (select(_580, select((_586 > 0.08100000023841858f), exp2(log2((_586 + 0.0989999994635582f) * 0.9099181294441223f) * 2.222222328186035f), (_586 * 0.2222222238779068f)), _576) - _576) * cb0_037z;
  float _657 = (select(_580, select((_587 > 0.08100000023841858f), exp2(log2((_587 + 0.0989999994635582f) * 0.9099181294441223f) * 2.222222328186035f), (_587 * 0.2222222238779068f)), _577) - _577) * cb0_037z;
  float _676 = (_655 + _575) + ((((select(_616, select((_621 > 0.08100000023841858f), exp2(log2((_621 + 0.0989999994635582f) * 0.9099181294441223f) * 2.222222328186035f), (_621 * 0.2222222238779068f)), _575) - _575) * cb0_037w) - _655) * cb0_036x);
  float _677 = (_656 + _576) + ((((select(_616, select((_622 > 0.08100000023841858f), exp2(log2((_622 + 0.0989999994635582f) * 0.9099181294441223f) * 2.222222328186035f), (_622 * 0.2222222238779068f)), _576) - _576) * cb0_037w) - _656) * cb0_036x);
  float _678 = (_657 + _577) + ((((select(_616, select((_623 > 0.08100000023841858f), exp2(log2((_623 + 0.0989999994635582f) * 0.9099181294441223f) * 2.222222328186035f), (_623 * 0.2222222238779068f)), _577) - _577) * cb0_037w) - _657) * cb0_036x);

  if (RENODX_FIX_CROSSFADE) {
    CrossFadeFix(_676, _677, _678, cb0_009x, cb0_009z);
  }
  
  float _681 = max(max(max(_676, _677), _678), 9.999999747378752e-06f);
  float _692 = select((abs(1.0f - _681) < 0.5249999761581421f), ((((5.809524059295654f - (_681 * 1.9047620296478271f)) * _681) + -0.42976200580596924f) * 0.25f), saturate(_681)) / _681;
  float _693 = _692 * _676;
  float _694 = _692 * _677;
  float _695 = _692 * _678;
  float _739 = 0.5f - cb0_009z;
  float _743 = saturate(_739 + ((exp2(log2(select((_693 <= 0.0031308000907301903f), (_693 * 12.920000076293945f), (((pow(_693, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f))) * cb0_009x) + -0.5f) * cb0_009y));
  float _744 = saturate(_739 + ((exp2(log2(select((_694 <= 0.0031308000907301903f), (_694 * 12.920000076293945f), (((pow(_694, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f))) * cb0_009x) + -0.5f) * cb0_009y));
  float _745 = saturate(_739 + ((exp2(log2(select((_695 <= 0.0031308000907301903f), (_695 * 12.920000076293945f), (((pow(_695, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f))) * cb0_009x) + -0.5f) * cb0_009y));
  int _749 = int(cb0_013x);
  float _751 = select((_749 == 1), 1.0f, 0.0f);
  float _753 = select((_749 == 2), 1.0f, 0.0f);
  float _755 = select((_749 == 3), 1.0f, 0.0f);
  float _757 = select((_749 == 0), 0.0f, 0.8999999761581421f);
  float _764 = (_757 * 0.1120000034570694f) + 1.0f;
  float _770 = (select((_757 > 0.0f), 0.10999999940395355f, 0.0f) - (_757 * 0.07500000298023224f)) + 0.5f;
  float _771 = _770 + (_764 * (_743 + -0.5f));
  float _772 = _770 + (_764 * (_744 + -0.5f));
  float _773 = _770 + (_764 * (_745 + -0.5f));
  float _778 = ((_771 * 17.882400512695312f) + (_772 * 43.5161018371582f)) + (_773 * 4.119349956512451f);
  float _783 = ((_771 * 3.4556500911712646f) + (_772 * 27.155399322509766f)) + (_773 * 3.867140054702759f);
  float _788 = ((_771 * 0.029956599697470665f) + (_772 * 0.1843090057373047f)) + (_773 * 1.4670900106430054f);
  float _795 = (((_783 * 2.023439884185791f) - (_788 * 2.52810001373291f)) * _751) + (_778 * (1.0f - _751));
  float _802 = (((_778 * 0.4942069947719574f) + (_788 * 1.248270034790039f)) * _753) + (_783 * (1.0f - _753));
  float _809 = (((_783 * 0.8011090159416199f) - (_778 * 0.3959130048751831f)) * _755) + (_788 * (1.0f - _755));
  float _822 = ((((_802 * 0.13050441443920135f) + _771) - (_795 * 0.08094444870948792f)) - (_809 * 0.11672106385231018f)) * 0.699999988079071f;
  float _842 = 1.0f - _757;
  float _855 = ((((min(max(_771, 0.0f), 1.0f) * _757) - _743) + (_771 * _842)) * cb0_013y) + _743;
  float _856 = ((((min(max((((((_772 * 2.0f) - (_802 * 0.05401932820677757f)) + (_795 * 0.010248533450067043f)) + (_809 * 0.11361470818519592f)) + _822), 0.0f), 1.0f) * _757) - _744) + (_772 * _842)) * cb0_013y) + _744;
  float _857 = ((((min(max((((((_795 * 0.0003652969317045063f) + (_773 * 2.0f)) + (_802 * 0.004121614620089531f)) - (_809 * 0.693511426448822f)) + _822), 0.0f), 1.0f) * _757) - _745) + (_773 * _842)) * cb0_013y) + _745;
  float _882 = select((_855 <= 0.0392800010740757f), (_855 * 0.07739938050508499f), exp2(log2((_855 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f)) / _692;
  float _883 = select((_856 <= 0.0392800010740757f), (_856 * 0.07739938050508499f), exp2(log2((_856 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f)) / _692;
  float _884 = select((_857 <= 0.0392800010740757f), (_857 * 0.07739938050508499f), exp2(log2((_857 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f)) / _692;
  //float _896 = cb0_012x * 9.999999747378752e-05f;

  float4 output;
  output.w = 1.f;

  output.rgb = float3(_882, _883, _884);
  BT2020fromBT709andPQEncode(output.rgb, RENODX_DIFFUSE_WHITE_NITS, RENODX_FIX_COLOR);
  u0[int3((uint)(SV_DispatchThreadID.x), (uint)(SV_DispatchThreadID.y), (uint)(SV_DispatchThreadID.z))] = output;
}
