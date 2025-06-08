#include "./shared.h"
#include "./common.hlsl"

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
  float _127 = (select((_94 > 0.010591000318527222f), ((log2((_94 * 5.555555820465088f) + 0.052271999418735504f) * 0.07441160827875137f) + 0.3855369985103607f), ((_94 * 5.367654800415039f) + 0.09280899912118912f)) * 0.9696969985961914f) + 0.01515151560306549f;
  float _128 = (select((_95 > 0.010591000318527222f), ((log2((_95 * 5.555555820465088f) + 0.052271999418735504f) * 0.07441160827875137f) + 0.3855369985103607f), ((_95 * 5.367654800415039f) + 0.09280899912118912f)) * 0.9696969985961914f) + 0.01515151560306549f;
  float _129 = (select((_96 > 0.010591000318527222f), ((log2((_96 * 5.555555820465088f) + 0.052271999418735504f) * 0.07441160827875137f) + 0.3855369985103607f), ((_96 * 5.367654800415039f) + 0.09280899912118912f)) * 0.9696969985961914f) + 0.01515151560306549f;
  float _178 = ((((((((_94 * 2708.714111328125f) + 6801.15234375f) * _94) + 1079.54736328125f) * _94) + 1.1614649295806885f) * _94) + -4.139374868827872e-05f) / ((((((((_94 * 983.3893432617188f) + 4132.06640625f) * _94) + 2881.652099609375f) * _94) + 128.35911560058594f) * _94) + 1.0f);
  float _179 = ((((((((_95 * 2708.714111328125f) + 6801.15234375f) * _95) + 1079.54736328125f) * _95) + 1.1614649295806885f) * _95) + -4.139374868827872e-05f) / ((((((((_95 * 983.3893432617188f) + 4132.06640625f) * _95) + 2881.652099609375f) * _95) + 128.35911560058594f) * _95) + 1.0f);
  float _180 = ((((((((_96 * 2708.714111328125f) + 6801.15234375f) * _96) + 1079.54736328125f) * _96) + 1.1614649295806885f) * _96) + -4.139374868827872e-05f) / ((((((((_96 * 983.3893432617188f) + 4132.06640625f) * _96) + 2881.652099609375f) * _96) + 128.35911560058594f) * _96) + 1.0f);
  float _205 = max(select((_178 <= 0.0392800010740757f), (_178 * 0.07739938050508499f), exp2(log2((_178 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f)), 0.0f);
  float _206 = max(select((_179 <= 0.0392800010740757f), (_179 * 0.07739938050508499f), exp2(log2((_179 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f)), 0.0f);
  float _207 = max(select((_180 <= 0.0392800010740757f), (_180 * 0.07739938050508499f), exp2(log2((_180 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f)), 0.0f);
  bool _210 = (cb0_037x > 0.0f);

  float4 _211 = t0.SampleLevel(s0, float3(_127, _128, _129), 0.0f);
  float _215 = max(6.103519990574569e-05f, _211.x);
  float _216 = max(6.103519990574569e-05f, _211.y);
  float _217 = max(6.103519990574569e-05f, _211.z);
  bool _246 = (cb0_037y > 0.0f);
  float4 _247 = t1.SampleLevel(s1, float3(_127, _128, _129), 0.0f);
  float _251 = max(6.103519990574569e-05f, _247.x);
  float _252 = max(6.103519990574569e-05f, _247.y);
  float _253 = max(6.103519990574569e-05f, _247.z);
  float _285 = (select(_210, select((_215 > 0.08100000023841858f), exp2(log2((_215 + 0.0989999994635582f) * 0.9099181294441223f) * 2.222222328186035f), (_215 * 0.2222222238779068f)), _205) - _205) * cb0_037z;
  float _286 = (select(_210, select((_216 > 0.08100000023841858f), exp2(log2((_216 + 0.0989999994635582f) * 0.9099181294441223f) * 2.222222328186035f), (_216 * 0.2222222238779068f)), _206) - _206) * cb0_037z;
  float _287 = (select(_210, select((_217 > 0.08100000023841858f), exp2(log2((_217 + 0.0989999994635582f) * 0.9099181294441223f) * 2.222222328186035f), (_217 * 0.2222222238779068f)), _207) - _207) * cb0_037z;
  float _306 = (_285 + _205) + ((((select(_246, select((_251 > 0.08100000023841858f), exp2(log2((_251 + 0.0989999994635582f) * 0.9099181294441223f) * 2.222222328186035f), (_251 * 0.2222222238779068f)), _205) - _205) * cb0_037w) - _285) * cb0_036x);
  float _307 = (_286 + _206) + ((((select(_246, select((_252 > 0.08100000023841858f), exp2(log2((_252 + 0.0989999994635582f) * 0.9099181294441223f) * 2.222222328186035f), (_252 * 0.2222222238779068f)), _206) - _206) * cb0_037w) - _286) * cb0_036x);
  float _308 = (_287 + _207) + ((((select(_246, select((_253 > 0.08100000023841858f), exp2(log2((_253 + 0.0989999994635582f) * 0.9099181294441223f) * 2.222222328186035f), (_253 * 0.2222222238779068f)), _207) - _207) * cb0_037w) - _287) * cb0_036x);
  float _309 = dot(float3(_306, _307, _308), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _323 = cb0_018w + cb0_023w;
  float _337 = cb0_017w * cb0_022w;
  float _351 = cb0_016w * cb0_021w;
  float _365 = cb0_015w * cb0_020w;
  float _376 = cb0_014w * cb0_019w;
  float _380 = cb0_014x * (_306 - _309);
  float _383 = cb0_014y * (_307 - _309);
  float _386 = cb0_014z * (_308 - _309);
  float _446 = saturate((_309 - cb0_034x) / (cb0_034y - cb0_034x));
  float _450 = (_446 * _446) * (3.0f - (_446 * 2.0f));
  float _451 = 1.0f - _450;
  float _460 = cb0_033w + cb0_018w;
  float _469 = cb0_032w * cb0_017w;
  float _478 = cb0_031w * cb0_016w;
  float _487 = cb0_030w * cb0_015w;
  float _493 = cb0_029w * cb0_014w;
  float _556 = saturate((_309 - cb0_034z) / (cb0_034w - cb0_034z));
  float _560 = (_556 * _556) * (3.0f - (_556 * 2.0f));
  float _569 = cb0_028w + cb0_018w;
  float _578 = cb0_027w * cb0_017w;
  float _587 = cb0_026w * cb0_016w;
  float _596 = cb0_025w * cb0_015w;
  float _602 = cb0_024w * cb0_014w;
  float _660 = _450 - _560;
  float _671 = ((_560 * (((cb0_033x + cb0_018x) + _460) + (((cb0_032x * cb0_017x) * _469) * exp2(log2(exp2(((cb0_030x * cb0_015x) * _487) * log2(max(0.0f, (((_380 * cb0_029x) * _493) + _309)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_031x * cb0_016x) * _478)))))) + (_451 * (((cb0_018x + cb0_023x) + _323) + (((cb0_017x * cb0_022x) * _337) * exp2(log2(exp2(((cb0_015x * cb0_020x) * _365) * log2(max(0.0f, (((_380 * cb0_019x) * _376) + _309)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_016x * cb0_021x) * _351))))))) + ((((cb0_028x + cb0_018x) + _569) + (((cb0_027x * cb0_017x) * _578) * exp2(log2(exp2(((cb0_025x * cb0_015x) * _596) * log2(max(0.0f, (((_380 * cb0_024x) * _602) + _309)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_026x * cb0_016x) * _587))))) * _660);
  float _673 = ((_560 * (((cb0_033y + cb0_018y) + _460) + (((cb0_032y * cb0_017y) * _469) * exp2(log2(exp2(((cb0_030y * cb0_015y) * _487) * log2(max(0.0f, (((_383 * cb0_029y) * _493) + _309)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_031y * cb0_016y) * _478)))))) + (_451 * (((cb0_018y + cb0_023y) + _323) + (((cb0_017y * cb0_022y) * _337) * exp2(log2(exp2(((cb0_015y * cb0_020y) * _365) * log2(max(0.0f, (((_383 * cb0_019y) * _376) + _309)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_016y * cb0_021y) * _351))))))) + ((((cb0_028y + cb0_018y) + _569) + (((cb0_027y * cb0_017y) * _578) * exp2(log2(exp2(((cb0_025y * cb0_015y) * _596) * log2(max(0.0f, (((_383 * cb0_024y) * _602) + _309)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_026y * cb0_016y) * _587))))) * _660);
  float _675 = ((_560 * (((cb0_033z + cb0_018z) + _460) + (((cb0_032z * cb0_017z) * _469) * exp2(log2(exp2(((cb0_030z * cb0_015z) * _487) * log2(max(0.0f, (((_386 * cb0_029z) * _493) + _309)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_031z * cb0_016z) * _478)))))) + (_451 * (((cb0_018z + cb0_023z) + _323) + (((cb0_017z * cb0_022z) * _337) * exp2(log2(exp2(((cb0_015z * cb0_020z) * _365) * log2(max(0.0f, (((_386 * cb0_019z) * _376) + _309)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_016z * cb0_021z) * _351))))))) + ((((cb0_028z + cb0_018z) + _569) + (((cb0_027z * cb0_017z) * _578) * exp2(log2(exp2(((cb0_025z * cb0_015z) * _596) * log2(max(0.0f, (((_386 * cb0_024z) * _602) + _309)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_026z * cb0_016z) * _587))))) * _660);
  float _678 = max(max(max(_671, _673), _675), 9.999999747378752e-06f);
  float _689 = select((abs(1.0f - _678) < 0.5249999761581421f), ((((5.809524059295654f - (_678 * 1.9047620296478271f)) * _678) + -0.42976200580596924f) * 0.25f), saturate(_678)) / _678;
  float _690 = _689 * _671;
  float _691 = _689 * _673;
  float _692 = _689 * _675;
  float _736 = 0.5f - cb0_009z;
  float _740 = saturate(_736 + ((exp2(log2(select((_690 <= 0.0031308000907301903f), (_690 * 12.920000076293945f), (((pow(_690, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f))) * cb0_009x) + -0.5f) * cb0_009y));
  float _741 = saturate(_736 + ((exp2(log2(select((_691 <= 0.0031308000907301903f), (_691 * 12.920000076293945f), (((pow(_691, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f))) * cb0_009x) + -0.5f) * cb0_009y));
  float _742 = saturate(_736 + ((exp2(log2(select((_692 <= 0.0031308000907301903f), (_692 * 12.920000076293945f), (((pow(_692, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f))) * cb0_009x) + -0.5f) * cb0_009y));
  int _746 = int(cb0_013x);
  float _748 = select((_746 == 1), 1.0f, 0.0f);
  float _750 = select((_746 == 2), 1.0f, 0.0f);
  float _752 = select((_746 == 3), 1.0f, 0.0f);
  float _754 = select((_746 == 0), 0.0f, 0.8999999761581421f);
  float _761 = (_754 * 0.1120000034570694f) + 1.0f;
  float _767 = (select((_754 > 0.0f), 0.10999999940395355f, 0.0f) - (_754 * 0.07500000298023224f)) + 0.5f;
  float _768 = _767 + (_761 * (_740 + -0.5f));
  float _769 = _767 + (_761 * (_741 + -0.5f));
  float _770 = _767 + (_761 * (_742 + -0.5f));
  float _775 = ((_768 * 17.882400512695312f) + (_769 * 43.5161018371582f)) + (_770 * 4.119349956512451f);
  float _780 = ((_768 * 3.4556500911712646f) + (_769 * 27.155399322509766f)) + (_770 * 3.867140054702759f);
  float _785 = ((_768 * 0.029956599697470665f) + (_769 * 0.1843090057373047f)) + (_770 * 1.4670900106430054f);
  float _792 = (((_780 * 2.023439884185791f) - (_785 * 2.52810001373291f)) * _748) + (_775 * (1.0f - _748));
  float _799 = (((_775 * 0.4942069947719574f) + (_785 * 1.248270034790039f)) * _750) + (_780 * (1.0f - _750));
  float _806 = (((_780 * 0.8011090159416199f) - (_775 * 0.3959130048751831f)) * _752) + (_785 * (1.0f - _752));
  float _819 = ((((_799 * 0.13050441443920135f) + _768) - (_792 * 0.08094444870948792f)) - (_806 * 0.11672106385231018f)) * 0.699999988079071f;
  float _839 = 1.0f - _754;

  float4 untonemapped_211 = (float4(_127, _128, _129, 1.f));
  float untonemapped_215 = max(6.103519990574569e-05f, untonemapped_211.x);
  float untonemapped_216 = max(6.103519990574569e-05f, untonemapped_211.y);
  float untonemapped_217 = max(6.103519990574569e-05f, untonemapped_211.z);
  bool untonemapped_246 = (cb0_037y > 0.0f);
  float4 untonemapped_247 = renodx::color::srgb::EncodeSafe(float4(_127, _128, _129, 1.f));;
  float untonemapped_251 = max(6.103519990574569e-05f, untonemapped_247.x);
  float untonemapped_252 = max(6.103519990574569e-05f, untonemapped_247.y);
  float untonemapped_253 = max(6.103519990574569e-05f, untonemapped_247.z);
  float untonemapped_285 = (select(_210, select((untonemapped_215 > 0.08100000023841858f), exp2(log2((untonemapped_215 + 0.0989999994635582f) * 0.9099181294441223f) * 2.222222328186035f), (untonemapped_215 * 0.2222222238779068f)), _205) - _205) * cb0_037z;
  float untonemapped_286 = (select(_210, select((untonemapped_216 > 0.08100000023841858f), exp2(log2((untonemapped_216 + 0.0989999994635582f) * 0.9099181294441223f) * 2.222222328186035f), (untonemapped_216 * 0.2222222238779068f)), _206) - _206) * cb0_037z;
  float untonemapped_287 = (select(_210, select((untonemapped_217 > 0.08100000023841858f), exp2(log2((untonemapped_217 + 0.0989999994635582f) * 0.9099181294441223f) * 2.222222328186035f), (untonemapped_217 * 0.2222222238779068f)), _207) - _207) * cb0_037z;
  float untonemapped_306 = (untonemapped_285 + _205) + ((((select(untonemapped_246, select((untonemapped_251 > 0.08100000023841858f), exp2(log2((untonemapped_251 + 0.0989999994635582f) * 0.9099181294441223f) * 2.222222328186035f), (untonemapped_251 * 0.2222222238779068f)), _205) - _205) * cb0_037w) - untonemapped_285) * cb0_036x);
  float untonemapped_307 = (untonemapped_286 + _206) + ((((select(untonemapped_246, select((untonemapped_252 > 0.08100000023841858f), exp2(log2((untonemapped_252 + 0.0989999994635582f) * 0.9099181294441223f) * 2.222222328186035f), (untonemapped_252 * 0.2222222238779068f)), _206) - _206) * cb0_037w) - untonemapped_286) * cb0_036x);
  float untonemapped_308 = (untonemapped_287 + _207) + ((((select(untonemapped_246, select((untonemapped_253 > 0.08100000023841858f), exp2(log2((untonemapped_253 + 0.0989999994635582f) * 0.9099181294441223f) * 2.222222328186035f), (untonemapped_253 * 0.2222222238779068f)), _207) - _207) * cb0_037w) - untonemapped_287) * cb0_036x);
  float untonemapped_309 = dot(float3(untonemapped_306, untonemapped_307, untonemapped_308), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float untonemapped_323 = cb0_018w + cb0_023w;
  float untonemapped_337 = cb0_017w * cb0_022w;
  float untonemapped_351 = cb0_016w * cb0_021w;
  float untonemapped_365 = cb0_015w * cb0_020w;
  float untonemapped_376 = cb0_014w * cb0_019w;
  float untonemapped_380 = cb0_014x * (untonemapped_306 - untonemapped_309);
  float untonemapped_383 = cb0_014y * (untonemapped_307 - untonemapped_309);
  float untonemapped_386 = cb0_014z * (untonemapped_308 - untonemapped_309);
  float untonemapped_446 = saturate((untonemapped_309 - cb0_034x) / (cb0_034y - cb0_034x));
  float untonemapped_450 = (untonemapped_446 * untonemapped_446) * (3.0f - (untonemapped_446 * 2.0f));
  float untonemapped_451 = 1.0f - untonemapped_450;
  float untonemapped_460 = cb0_033w + cb0_018w;
  float untonemapped_469 = cb0_032w * cb0_017w;
  float untonemapped_478 = cb0_031w * cb0_016w;
  float untonemapped_487 = cb0_030w * cb0_015w;
  float untonemapped_493 = cb0_029w * cb0_014w;
  float untonemapped_556 = saturate((untonemapped_309 - cb0_034z) / (cb0_034w - cb0_034z));
  float untonemapped_560 = (untonemapped_556 * untonemapped_556) * (3.0f - (untonemapped_556 * 2.0f));
  float untonemapped_569 = cb0_028w + cb0_018w;
  float untonemapped_578 = cb0_027w * cb0_017w;
  float untonemapped_587 = cb0_026w * cb0_016w;
  float untonemapped_596 = cb0_025w * cb0_015w;
  float untonemapped_602 = cb0_024w * cb0_014w;
  float untonemapped_660 = untonemapped_450 - untonemapped_560;
  float untonemapped_671 = ((untonemapped_560 * (((cb0_033x + cb0_018x) + untonemapped_460) + (((cb0_032x * cb0_017x) * untonemapped_469) * exp2(log2(exp2(((cb0_030x * cb0_015x) * untonemapped_487) * log2(max(0.0f, (((untonemapped_380 * cb0_029x) * untonemapped_493) + untonemapped_309)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_031x * cb0_016x) * untonemapped_478)))))) + (untonemapped_451 * (((cb0_018x + cb0_023x) + untonemapped_323) + (((cb0_017x * cb0_022x) * untonemapped_337) * exp2(log2(exp2(((cb0_015x * cb0_020x) * untonemapped_365) * log2(max(0.0f, (((untonemapped_380 * cb0_019x) * untonemapped_376) + untonemapped_309)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_016x * cb0_021x) * untonemapped_351))))))) + ((((cb0_028x + cb0_018x) + untonemapped_569) + (((cb0_027x * cb0_017x) * untonemapped_578) * exp2(log2(exp2(((cb0_025x * cb0_015x) * untonemapped_596) * log2(max(0.0f, (((untonemapped_380 * cb0_024x) * untonemapped_602) + untonemapped_309)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_026x * cb0_016x) * untonemapped_587))))) * untonemapped_660);
  float untonemapped_673 = ((untonemapped_560 * (((cb0_033y + cb0_018y) + untonemapped_460) + (((cb0_032y * cb0_017y) * untonemapped_469) * exp2(log2(exp2(((cb0_030y * cb0_015y) * untonemapped_487) * log2(max(0.0f, (((untonemapped_383 * cb0_029y) * untonemapped_493) + untonemapped_309)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_031y * cb0_016y) * untonemapped_478)))))) + (untonemapped_451 * (((cb0_018y + cb0_023y) + untonemapped_323) + (((cb0_017y * cb0_022y) * untonemapped_337) * exp2(log2(exp2(((cb0_015y * cb0_020y) * untonemapped_365) * log2(max(0.0f, (((untonemapped_383 * cb0_019y) * untonemapped_376) + untonemapped_309)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_016y * cb0_021y) * untonemapped_351))))))) + ((((cb0_028y + cb0_018y) + untonemapped_569) + (((cb0_027y * cb0_017y) * untonemapped_578) * exp2(log2(exp2(((cb0_025y * cb0_015y) * untonemapped_596) * log2(max(0.0f, (((untonemapped_383 * cb0_024y) * untonemapped_602) + untonemapped_309)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_026y * cb0_016y) * untonemapped_587))))) * untonemapped_660);
  float untonemapped_675 = ((untonemapped_560 * (((cb0_033z + cb0_018z) + untonemapped_460) + (((cb0_032z * cb0_017z) * untonemapped_469) * exp2(log2(exp2(((cb0_030z * cb0_015z) * untonemapped_487) * log2(max(0.0f, (((untonemapped_386 * cb0_029z) * untonemapped_493) + untonemapped_309)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_031z * cb0_016z) * untonemapped_478)))))) + (untonemapped_451 * (((cb0_018z + cb0_023z) + untonemapped_323) + (((cb0_017z * cb0_022z) * untonemapped_337) * exp2(log2(exp2(((cb0_015z * cb0_020z) * untonemapped_365) * log2(max(0.0f, (((untonemapped_386 * cb0_019z) * untonemapped_376) + untonemapped_309)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_016z * cb0_021z) * untonemapped_351))))))) + ((((cb0_028z + cb0_018z) + untonemapped_569) + (((cb0_027z * cb0_017z) * untonemapped_578) * exp2(log2(exp2(((cb0_025z * cb0_015z) * untonemapped_596) * log2(max(0.0f, (((untonemapped_386 * cb0_024z) * untonemapped_602) + untonemapped_309)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_026z * cb0_016z) * untonemapped_587))))) * untonemapped_660);
  float untonemapped_678 = max(max(max(untonemapped_671, untonemapped_673), untonemapped_675), 9.999999747378752e-06f);
  float untonemapped_689 = select((abs(1.0f - untonemapped_678) < 0.5249999761581421f), ((((5.809524059295654f - (untonemapped_678 * 1.9047620296478271f)) * untonemapped_678) + -0.42976200580596924f) * 0.25f), saturate(untonemapped_678)) / untonemapped_678;
  float untonemapped_690 = untonemapped_689 * untonemapped_671;
  float untonemapped_691 = untonemapped_689 * untonemapped_673;
  float untonemapped_692 = untonemapped_689 * untonemapped_675;

  //float cb0_009z = 0.3f;
  float untonemapped_736 = 0.5f - cb0_009z;

  //float cb0_009x = 2.f;

  float untonemapped_740 = (untonemapped_736 + ((exp2(log2(select((untonemapped_690 <= 0.0031308000907301903f), (untonemapped_690 * 12.920000076293945f), (((pow(untonemapped_690, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f))) * cb0_009x) + -0.5f) * cb0_009y));
  float untonemapped_741 = (untonemapped_736 + ((exp2(log2(select((untonemapped_691 <= 0.0031308000907301903f), (untonemapped_691 * 12.920000076293945f), (((pow(untonemapped_691, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f))) * cb0_009x) + -0.5f) * cb0_009y));
  float untonemapped_742 = (untonemapped_736 + ((exp2(log2(select((untonemapped_692 <= 0.0031308000907301903f), (untonemapped_692 * 12.920000076293945f), (((pow(untonemapped_692, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f))) * cb0_009x) + -0.5f) * cb0_009y));
  int untonemapped_746 = int(cb0_013x);
  float untonemapped_748 = select((untonemapped_746 == 1), 1.0f, 0.0f);
  float untonemapped_750 = select((untonemapped_746 == 2), 1.0f, 0.0f);
  float untonemapped_752 = select((untonemapped_746 == 3), 1.0f, 0.0f);
  float untonemapped_754 = select((untonemapped_746 == 0), 0.0f, 0.8999999761581421f);
  float untonemapped_761 = (untonemapped_754 * 0.1120000034570694f) + 1.0f;
  float untonemapped_767 = (select((untonemapped_754 > 0.0f), 0.10999999940395355f, 0.0f) - (untonemapped_754 * 0.07500000298023224f)) + 0.5f;
  float untonemapped_768 = untonemapped_767 + (untonemapped_761 * (untonemapped_740 + -0.5f));
  float untonemapped_769 = untonemapped_767 + (untonemapped_761 * (untonemapped_741 + -0.5f));
  float untonemapped_770 = untonemapped_767 + (untonemapped_761 * (untonemapped_742 + -0.5f));
  float untonemapped_775 = ((untonemapped_768 * 17.882400512695312f) + (untonemapped_769 * 43.5161018371582f)) + (untonemapped_770 * 4.119349956512451f);
  float untonemapped_780 = ((untonemapped_768 * 3.4556500911712646f) + (untonemapped_769 * 27.155399322509766f)) + (untonemapped_770 * 3.867140054702759f);
  float untonemapped_785 = ((untonemapped_768 * 0.029956599697470665f) + (untonemapped_769 * 0.1843090057373047f)) + (untonemapped_770 * 1.4670900106430054f);
  float untonemapped_792 = (((untonemapped_780 * 2.023439884185791f) - (untonemapped_785 * 2.52810001373291f)) * untonemapped_748) + (untonemapped_775 * (1.0f - untonemapped_748));
  float untonemapped_799 = (((untonemapped_775 * 0.4942069947719574f) + (untonemapped_785 * 1.248270034790039f)) * untonemapped_750) + (untonemapped_780 * (1.0f - untonemapped_750));
  float untonemapped_806 = (((untonemapped_780 * 0.8011090159416199f) - (untonemapped_775 * 0.3959130048751831f)) * untonemapped_752) + (untonemapped_785 * (1.0f - untonemapped_752));
  float untonemapped_819 = ((((untonemapped_799 * 0.13050441443920135f) + untonemapped_768) - (untonemapped_792 * 0.08094444870948792f)) - (untonemapped_806 * 0.11672106385231018f)) * 0.699999988079071f;
  float untonemapped_839 = 1.0f - untonemapped_754;
  float untonemapped_852 = ((((min(max(untonemapped_768, 0.0f), 1.0f) * untonemapped_754) - untonemapped_740) + (untonemapped_768 * untonemapped_839)) * cb0_013y) + untonemapped_740;
  float untonemapped_853 = ((((min(max((((((untonemapped_769 * 2.0f) - (untonemapped_799 * 0.05401932820677757f)) + (untonemapped_792 * 0.010248533450067043f)) + (untonemapped_806 * 0.11361470818519592f)) + untonemapped_819), 0.0f), 1.0f) * untonemapped_754) - untonemapped_741) + (untonemapped_769 * untonemapped_839)) * cb0_013y) + untonemapped_741;
  float untonemapped_854 = ((((min(max((((((untonemapped_792 * 0.0003652969317045063f) + (untonemapped_770 * 2.0f)) + (untonemapped_799 * 0.004121614620089531f)) - (untonemapped_806 * 0.693511426448822f)) + untonemapped_819), 0.0f), 1.0f) * untonemapped_754) - untonemapped_742) + (untonemapped_770 * untonemapped_839)) * cb0_013y) + untonemapped_742;

  float _852 = ((((min(max(_768, 0.0f), 1.0f) * _754) - _740) + (_768 * _839)) * cb0_013y) + _740;
  float _853 = ((((min(max((((((_769 * 2.0f) - (_799 * 0.05401932820677757f)) + (_792 * 0.010248533450067043f)) + (_806 * 0.11361470818519592f)) + _819), 0.0f), 1.0f) * _754) - _741) + (_769 * _839)) * cb0_013y) + _741;
  float _854 = ((((min(max((((((_792 * 0.0003652969317045063f) + (_770 * 2.0f)) + (_799 * 0.004121614620089531f)) - (_806 * 0.693511426448822f)) + _819), 0.0f), 1.0f) * _754) - _742) + (_770 * _839)) * cb0_013y) + _742;
  float _879 = select((_852 <= 0.0392800010740757f), (_852 * 0.07739938050508499f), exp2(log2((_852 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f)) / _689;
  float _880 = select((_853 <= 0.0392800010740757f), (_853 * 0.07739938050508499f), exp2(log2((_853 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f)) / _689;
  float _881 = select((_854 <= 0.0392800010740757f), (_854 * 0.07739938050508499f), exp2(log2((_854 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f)) / _689;
  //float _893 = cb0_012x * 9.999999747378752e-05f;
  float _893 = RENODX_DIFFUSE_WHITE_NITS * 9.999999747378752e-05f;
  float _903 = exp2(log2(_893 * mad(0.04331360012292862f, _881, mad(0.3292819857597351f, _880, (_879 * 0.627403974533081f)))) * 0.1593017578125f);
  float _904 = exp2(log2(mad(0.012477199546992779f, _881, mad(0.9417769908905029f, _880, (_879 * 0.045745600014925f))) * _893) * 0.1593017578125f);
  float _905 = exp2(log2(mad(0.9836069941520691f, _881, mad(0.017604099586606026f, _880, (_879 * -0.0012105499627068639f))) * _893) * 0.1593017578125f);

  float3 vanillaColor = float3(exp2(log2(((_903 * 18.8515625f) + 0.8359375f) / ((_903 * 18.6875f) + 1.0f)) * 78.84375f), exp2(log2(((_904 * 18.8515625f) + 0.8359375f) / ((_904 * 18.6875f) + 1.0f)) * 78.84375f), exp2(log2(((_905 * 18.8515625f) + 0.8359375f) / ((_905 * 18.6875f) + 1.0f)) * 78.84375f));
  vanillaColor = renodx::color::srgb::DecodeSafe(vanillaColor);

  float3 untonemapped = renodx::color::srgb::DecodeSafe(float3(untonemapped_852, untonemapped_853, untonemapped_854));
  untonemapped = renodx::color::bt2020::from::BT709(untonemapped);

  float3 tonemapped = renodx::color::bt2020::from::BT709(float3(_852, _853, _854));
  tonemapped = renodx::color::srgb::DecodeSafe(tonemapped);
  tonemapped = renodx::color::pq::EncodeSafe(tonemapped, RENODX_DIFFUSE_WHITE_NITS);
  tonemapped = renodx::color::srgb::DecodeSafe(tonemapped);

  // Fade to black fix
  if (cb0_009z > 0.f) {  // If its positive (fade to black)
    if (cb0_009z > 0.055f) {
      untonemapped = saturate(tonemapped);  // When its more dark, its just tonmapped
    } else if (cb0_009z < 0.055f) {         // As It fades from black back to normal
      // Applies a curve to fade between untonemapped and tonemapped for a smoother transition
      float fade = pow((1 - (cb0_009z)), 15);
      untonemapped = lerp(saturate(tonemapped), untonemapped, fade);
    }
  }

  renodx::draw::Config config = renodx::draw::BuildConfig();
  config.per_channel_blowout_restoration = 0.f;
  config.per_channel_chrominance_correction = 0.f;
  config.per_channel_hue_correction = 0.f;


  float3 untonemapped_graded = renodx::draw::ToneMapPass(untonemapped, tonemapped, config);

  float4 outputColor;
  outputColor.w = 1.f;
  if (RENODX_TONE_MAP_TYPE != 0.f) {
    outputColor.rgb = (untonemapped_graded);
  } else {
    outputColor.rgb = vanillaColor;
  }

  outputColor.rgb = renodx::color::srgb::EncodeSafe(outputColor.rgb);

  u0[int3((uint)(SV_DispatchThreadID.x), (uint)(SV_DispatchThreadID.y), (uint)(SV_DispatchThreadID.z))] = outputColor;
}
