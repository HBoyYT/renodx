#include "../shared.h"
#include "../common.hlsl"

Texture3D<float4> t0 : register(t0);

Texture3D<float4> t1 : register(t1);

RWTexture3D<float4> u0 : register(u0);

cbuffer cb0 : register(b0) {
  float cb0_001x : packoffset(c001.x);
  float cb0_001y : packoffset(c001.y);
  float cb0_001z : packoffset(c001.z);
  float cb0_001w : packoffset(c001.w);
  float cb0_002x : packoffset(c002.x);
  float cb0_002y : packoffset(c002.y);
  float cb0_002z : packoffset(c002.z);
  float cb0_002w : packoffset(c002.w);
  float cb0_003x : packoffset(c003.x);
  float cb0_003y : packoffset(c003.y);
  float cb0_003z : packoffset(c003.z);
  float cb0_003w : packoffset(c003.w);
  float cb0_004x : packoffset(c004.x);
  float cb0_004y : packoffset(c004.y);
  float cb0_004z : packoffset(c004.z);
  float cb0_004w : packoffset(c004.w);
  float cb0_005x : packoffset(c005.x);
  float cb0_005y : packoffset(c005.y);
  float cb0_005z : packoffset(c005.z);
  float cb0_005w : packoffset(c005.w);
  float cb0_006x : packoffset(c006.x);
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
    uint3 SV_DispatchThreadID: SV_DispatchThreadID,
    uint3 SV_GroupID: SV_GroupID,
    uint3 SV_GroupThreadID: SV_GroupThreadID,
    uint SV_GroupIndex: SV_GroupIndex
) {
  float _10[3];
  float _11[3];
  float _12[3];
  float _13[3];
  float _14[3];
  float _15[3];
  float _29 = ((exp2((((float((uint)(SV_DispatchThreadID.x))) * 0.4516128897666931f) + -6.07624626159668f))) * 0.36000001430511475f) + -0.005335438530892134f;
  float _31 = ((exp2((((float((uint)(SV_DispatchThreadID.y))) * 0.4516128897666931f) + -6.07624626159668f))) * 0.36000001430511475f) + -0.005335438530892134f;
  float _33 = ((exp2((((float((uint)(SV_DispatchThreadID.z))) * 0.4516128897666931f) + -6.07624626159668f))) * 0.36000001430511475f) + -0.005335438530892134f;
  float _34 = dot(float3(_29, _31, _33), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _48 = (cb0_018w) + (cb0_023w);
  float _62 = (cb0_017w) * (cb0_022w);
  float _76 = (cb0_016w) * (cb0_021w);
  float _90 = (cb0_015w) * (cb0_020w);
  float _101 = (cb0_014w) * (cb0_019w);
  float _105 = (cb0_014x) * (_29 - _34);
  float _108 = (cb0_014y) * (_31 - _34);
  float _111 = (cb0_014z) * (_33 - _34);
  float _171 = saturate(((_34 - (cb0_034x)) / ((cb0_034y) - (cb0_034x))));
  float _175 = (_171 * _171) * (3.0f - (_171 * 2.0f));
  float _176 = 1.0f - _175;
  float _185 = (cb0_033w) + (cb0_018w);
  float _194 = (cb0_032w) * (cb0_017w);
  float _203 = (cb0_031w) * (cb0_016w);
  float _212 = (cb0_030w) * (cb0_015w);
  float _218 = (cb0_029w) * (cb0_014w);
  float _281 = saturate(((_34 - (cb0_034z)) / ((cb0_034w) - (cb0_034z))));
  float _285 = (_281 * _281) * (3.0f - (_281 * 2.0f));
  float _294 = (cb0_028w) + (cb0_018w);
  float _303 = (cb0_027w) * (cb0_017w);
  float _312 = (cb0_026w) * (cb0_016w);
  float _321 = (cb0_025w) * (cb0_015w);
  float _327 = (cb0_024w) * (cb0_014w);
  float _385 = _175 - _285;
  float _425 = (cb0_010x) * ((exp2(((log2((max(6.103519990574569e-05f, (((_285 * ((((cb0_033x) + (cb0_018x)) + _185) + ((((cb0_032x) * (cb0_017x)) * _194) * (exp2(((log2(((exp2(((((cb0_030x) * (cb0_015x)) * _212) * (log2(((max(0.0f, (((_105 * (cb0_029x)) * _218) + _34))) * 5.55555534362793f)))))) * 0.18000000715255737f))) * (1.0f / (((cb0_031x) * (cb0_016x)) * _203)))))))) + (_176 * ((((cb0_018x) + (cb0_023x)) + _48) + ((((cb0_017x) * (cb0_022x)) * _62) * (exp2(((log2(((exp2(((((cb0_015x) * (cb0_020x)) * _90) * (log2(((max(0.0f, (((_105 * (cb0_019x)) * _101) + _34))) * 5.55555534362793f)))))) * 0.18000000715255737f))) * (1.0f / (((cb0_016x) * (cb0_021x)) * _76))))))))) + (((((cb0_028x) + (cb0_018x)) + _294) + ((((cb0_027x) * (cb0_017x)) * _303) * (exp2(((log2(((exp2(((((cb0_025x) * (cb0_015x)) * _321) * (log2(((max(0.0f, (((_105 * (cb0_024x)) * _327) + _34))) * 5.55555534362793f)))))) * 0.18000000715255737f))) * (1.0f / (((cb0_026x) * (cb0_016x)) * _312))))))) * _385)))))) * (cb0_011x)))) + (cb0_011w));
  float _426 = (cb0_010y) * ((exp2(((log2((max(6.103519990574569e-05f, (((_285 * ((((cb0_033y) + (cb0_018y)) + _185) + ((((cb0_032y) * (cb0_017y)) * _194) * (exp2(((log2(((exp2(((((cb0_030y) * (cb0_015y)) * _212) * (log2(((max(0.0f, (((_108 * (cb0_029y)) * _218) + _34))) * 5.55555534362793f)))))) * 0.18000000715255737f))) * (1.0f / (((cb0_031y) * (cb0_016y)) * _203)))))))) + (_176 * ((((cb0_018y) + (cb0_023y)) + _48) + ((((cb0_017y) * (cb0_022y)) * _62) * (exp2(((log2(((exp2(((((cb0_015y) * (cb0_020y)) * _90) * (log2(((max(0.0f, (((_108 * (cb0_019y)) * _101) + _34))) * 5.55555534362793f)))))) * 0.18000000715255737f))) * (1.0f / (((cb0_016y) * (cb0_021y)) * _76))))))))) + (((((cb0_028y) + (cb0_018y)) + _294) + ((((cb0_027y) * (cb0_017y)) * _303) * (exp2(((log2(((exp2(((((cb0_025y) * (cb0_015y)) * _321) * (log2(((max(0.0f, (((_108 * (cb0_024y)) * _327) + _34))) * 5.55555534362793f)))))) * 0.18000000715255737f))) * (1.0f / (((cb0_026y) * (cb0_016y)) * _312))))))) * _385)))))) * (cb0_011y)))) + (cb0_011w));
  float _427 = (cb0_010z) * ((exp2(((log2((max(6.103519990574569e-05f, (((_285 * ((((cb0_033z) + (cb0_018z)) + _185) + ((((cb0_032z) * (cb0_017z)) * _194) * (exp2(((log2(((exp2(((((cb0_030z) * (cb0_015z)) * _212) * (log2(((max(0.0f, (((_111 * (cb0_029z)) * _218) + _34))) * 5.55555534362793f)))))) * 0.18000000715255737f))) * (1.0f / (((cb0_031z) * (cb0_016z)) * _203)))))))) + (_176 * ((((cb0_018z) + (cb0_023z)) + _48) + ((((cb0_017z) * (cb0_022z)) * _62) * (exp2(((log2(((exp2(((((cb0_015z) * (cb0_020z)) * _90) * (log2(((max(0.0f, (((_111 * (cb0_019z)) * _101) + _34))) * 5.55555534362793f)))))) * 0.18000000715255737f))) * (1.0f / (((cb0_016z) * (cb0_021z)) * _76))))))))) + (((((cb0_028z) + (cb0_018z)) + _294) + ((((cb0_027z) * (cb0_017z)) * _303) * (exp2(((log2(((exp2(((((cb0_025z) * (cb0_015z)) * _321) * (log2(((max(0.0f, (((_111 * (cb0_024z)) * _327) + _34))) * 5.55555534362793f)))))) * 0.18000000715255737f))) * (1.0f / (((cb0_026z) * (cb0_016z)) * _312))))))) * _385)))))) * (cb0_011z)))) + (cb0_011w));
  float _428 = dot(float3(_425, _426, _427), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _443 = ((((cb0_008x) * _428) - _425) * (cb0_008w)) + _425;
  float _444 = ((((cb0_008y) * _428) - _426) * (cb0_008w)) + _426;
  float _445 = ((((cb0_008z) * _428) - _427) * (cb0_008w)) + _427;
  float _476 = (((((bool)((_443 > 0.010591000318527222f))) ? (((log2(((_443 * 5.555555820465088f) + 0.052271999418735504f))) * 0.07441160827875137f) + 0.3855369985103607f) : ((_443 * 5.367654800415039f) + 0.09280899912118912f))) * 0.9696969985961914f) + 0.01515151560306549f;
  float _477 = (((((bool)((_444 > 0.010591000318527222f))) ? (((log2(((_444 * 5.555555820465088f) + 0.052271999418735504f))) * 0.07441160827875137f) + 0.3855369985103607f) : ((_444 * 5.367654800415039f) + 0.09280899912118912f))) * 0.9696969985961914f) + 0.01515151560306549f;
  float _478 = (((((bool)((_445 > 0.010591000318527222f))) ? (((log2(((_445 * 5.555555820465088f) + 0.052271999418735504f))) * 0.07441160827875137f) + 0.3855369985103607f) : ((_445 * 5.367654800415039f) + 0.09280899912118912f))) * 0.9696969985961914f) + 0.01515151560306549f;
  _10[0] = (cb0_001x);
  _11[0] = (cb0_001y);
  _12[0] = (cb0_001z);
  _13[0] = (cb0_001w);
  _14[0] = (cb0_002x);
  _15[0] = (cb0_002y);
  _10[1] = (cb0_002z);
  _11[1] = (cb0_002w);
  _12[1] = (cb0_003x);
  _13[1] = (cb0_003y);
  _14[1] = (cb0_003z);
  _15[1] = (cb0_003w);
  _10[2] = (cb0_004x);
  _11[2] = (cb0_004y);
  _12[2] = (cb0_004z);
  _13[2] = (cb0_004w);
  _14[2] = (cb0_005x);
  _15[2] = (cb0_005y);
  float _524 = (cb0_005z) * _443;
  int _528 = (((bool)((_524 < (cb0_005w)))) ? 0 : ((((bool)((_524 < (cb0_006x)))) ? 1 : 2)));
  float _534 = (_524 - (_10[_528])) * (_12[_528]);
  float _548 = 0.0f;
  float _579;
  float _610;
  if (((_534 > 0.0f))) {
    _548 = (exp2((((((_15[_528]) * 0.6931471824645996f) * (log2(_534))) + (_14[_528])) * 1.4426950216293335f)));
  }
  float _554 = ((_13[_528]) * _548) + (_11[_528]);
  float _555 = (cb0_005z) * _444;
  int _559 = (((bool)((_555 < (cb0_005w)))) ? 0 : ((((bool)((_555 < (cb0_006x)))) ? 1 : 2)));
  float _565 = (_555 - (_10[_559])) * (_12[_559]);
  _579 = 0.0f;
  if (((_565 > 0.0f))) {
    _579 = (exp2((((((_15[_559]) * 0.6931471824645996f) * (log2(_565))) + (_14[_559])) * 1.4426950216293335f)));
  }
  float _585 = ((_13[_559]) * _579) + (_11[_559]);
  float _586 = (cb0_005z) * _445;
  int _590 = (((bool)((_586 < (cb0_005w)))) ? 0 : ((((bool)((_586 < (cb0_006x)))) ? 1 : 2)));
  float _596 = (_586 - (_10[_590])) * (_12[_590]);
  _610 = 0.0f;
  if (((_596 > 0.0f))) {
    _610 = (exp2((((((_15[_590]) * 0.6931471824645996f) * (log2(_596))) + (_14[_590])) * 1.4426950216293335f)));
  }
  float _616 = ((_13[_590]) * _610) + (_11[_590]);
  bool _619 = ((cb0_037x) > 0.0f);
  float4 _620 = t0.SampleLevel(s0, float3(_476, _477, _478), 0.0f);
  float _624 = max(6.103519990574569e-05f, (_620.x));
  float _625 = max(6.103519990574569e-05f, (_620.y));
  float _626 = max(6.103519990574569e-05f, (_620.z));
  bool _655 = ((cb0_037y) > 0.0f);
  float4 _656 = t1.SampleLevel(s1, float3(_476, _477, _478), 0.0f);
  float _660 = max(6.103519990574569e-05f, (_656.x));
  float _661 = max(6.103519990574569e-05f, (_656.y));
  float _662 = max(6.103519990574569e-05f, (_656.z));
  float _694 = (((_619 ? ((((bool)((_624 > 0.08100000023841858f))) ? (exp2(((log2(((_624 + 0.0989999994635582f) * 0.9099181294441223f))) * 2.222222328186035f))) : (_624 * 0.2222222238779068f))) : _554)) - _554) * (cb0_037z);
  float _695 = (((_619 ? ((((bool)((_625 > 0.08100000023841858f))) ? (exp2(((log2(((_625 + 0.0989999994635582f) * 0.9099181294441223f))) * 2.222222328186035f))) : (_625 * 0.2222222238779068f))) : _585)) - _585) * (cb0_037z);
  float _696 = (((_619 ? ((((bool)((_626 > 0.08100000023841858f))) ? (exp2(((log2(((_626 + 0.0989999994635582f) * 0.9099181294441223f))) * 2.222222328186035f))) : (_626 * 0.2222222238779068f))) : _616)) - _616) * (cb0_037z);
  float _715 = (_694 + _554) + ((((((_655 ? ((((bool)((_660 > 0.08100000023841858f))) ? (exp2(((log2(((_660 + 0.0989999994635582f) * 0.9099181294441223f))) * 2.222222328186035f))) : (_660 * 0.2222222238779068f))) : _554)) - _554) * (cb0_037w)) - _694) * (cb0_036x));
  float _716 = (_695 + _585) + ((((((_655 ? ((((bool)((_661 > 0.08100000023841858f))) ? (exp2(((log2(((_661 + 0.0989999994635582f) * 0.9099181294441223f))) * 2.222222328186035f))) : (_661 * 0.2222222238779068f))) : _585)) - _585) * (cb0_037w)) - _695) * (cb0_036x));
  float _717 = (_696 + _616) + ((((((_655 ? ((((bool)((_662 > 0.08100000023841858f))) ? (exp2(((log2(((_662 + 0.0989999994635582f) * 0.9099181294441223f))) * 2.222222328186035f))) : (_662 * 0.2222222238779068f))) : _616)) - _616) * (cb0_037w)) - _696) * (cb0_036x));
  float _761 = 0.5f - (cb0_009z);
  float _765 = saturate((_761 + (((exp2(((log2(((((bool)((_715 <= 0.0031308000907301903f))) ? (_715 * 12.920000076293945f) : (((exp2(((log2(_715)) * 0.4166666567325592f))) * 1.0549999475479126f) + -0.054999999701976776f))))) * (cb0_009x)))) + -0.5f) * (cb0_009y))));
  float _766 = saturate((_761 + (((exp2(((log2(((((bool)((_716 <= 0.0031308000907301903f))) ? (_716 * 12.920000076293945f) : (((exp2(((log2(_716)) * 0.4166666567325592f))) * 1.0549999475479126f) + -0.054999999701976776f))))) * (cb0_009x)))) + -0.5f) * (cb0_009y))));
  float _767 = saturate((_761 + (((exp2(((log2(((((bool)((_717 <= 0.0031308000907301903f))) ? (_717 * 12.920000076293945f) : (((exp2(((log2(_717)) * 0.4166666567325592f))) * 1.0549999475479126f) + -0.054999999701976776f))))) * (cb0_009x)))) + -0.5f) * (cb0_009y))));
  int _771 = int(771);
  float _773 = (((bool)((_771 == 1))) ? 1.0f : 0.0f);
  float _775 = (((bool)((_771 == 2))) ? 1.0f : 0.0f);
  float _777 = (((bool)((_771 == 3))) ? 1.0f : 0.0f);
  float _779 = (((bool)((_771 == 0))) ? 0.0f : 0.8999999761581421f);
  float _786 = (_779 * 0.1120000034570694f) + 1.0f;
  float _792 = (((((bool)((_779 > 0.0f))) ? 0.10999999940395355f : 0.0f)) - (_779 * 0.07500000298023224f)) + 0.5f;
  float _793 = _792 + (_786 * (_765 + -0.5f));
  float _794 = _792 + (_786 * (_766 + -0.5f));
  float _795 = _792 + (_786 * (_767 + -0.5f));
  float _800 = ((_793 * 17.882400512695312f) + (_794 * 43.5161018371582f)) + (_795 * 4.119349956512451f);
  float _805 = ((_793 * 3.4556500911712646f) + (_794 * 27.155399322509766f)) + (_795 * 3.867140054702759f);
  float _810 = ((_793 * 0.029956599697470665f) + (_794 * 0.1843090057373047f)) + (_795 * 1.4670900106430054f);
  float _817 = (((_805 * 2.023439884185791f) - (_810 * 2.52810001373291f)) * _773) + (_800 * (1.0f - _773));
  float _824 = (((_800 * 0.4942069947719574f) + (_810 * 1.248270034790039f)) * _775) + (_805 * (1.0f - _775));
  float _831 = (((_805 * 0.8011090159416199f) - (_800 * 0.3959130048751831f)) * _777) + (_810 * (1.0f - _777));
  float _844 = ((((_824 * 0.13050441443920135f) + _793) - (_817 * 0.08094444870948792f)) - (_831 * 0.11672106385231018f)) * 0.699999988079071f;
  float _864 = 1.0f - _779;

  float3 untonemapped = (float3(_425, _426, _427));

  // Applying cb0_009x (which controls fading to white / black) to untonemapped
  untonemapped.r = ((_761 + (((exp2(((log2(((((bool)((untonemapped.r <= 0.0031308000907301903f))) ? (untonemapped.r * 12.920000076293945f) : (((exp2(((log2(untonemapped.r)) * 0.4166666567325592f))) * 1.0549999475479126f) + -0.054999999701976776f))))) * (cb0_009x)))) + -0.5f) * (cb0_009y))));
  untonemapped.g = ((_761 + (((exp2(((log2(((((bool)((untonemapped.g <= 0.0031308000907301903f))) ? (untonemapped.g * 12.920000076293945f) : (((exp2(((log2(untonemapped.g)) * 0.4166666567325592f))) * 1.0549999475479126f) + -0.054999999701976776f))))) * (cb0_009x)))) + -0.5f) * (cb0_009y))));
  untonemapped.b = ((_761 + (((exp2(((log2(((((bool)((untonemapped.b <= 0.0031308000907301903f))) ? (untonemapped.b * 12.920000076293945f) : (((exp2(((log2(untonemapped.b)) * 0.4166666567325592f))) * 1.0549999475479126f) + -0.054999999701976776f))))) * (cb0_009x)))) + -0.5f) * (cb0_009y))));
  untonemapped = renodx::color::srgb::DecodeSafe(untonemapped);

  untonemapped = renodx::color::correct::GammaSafe(untonemapped, false, 2.4);

  float3 tonemapped = renodx::color::srgb::DecodeSafe(float3(((((((min((max(_793, 0.0f)), 1.0f)) * _779) - _765) + (_793 * _864)) * (cb0_013y)) + _765),
                                                             ((((((min((max((((((_794 * 2.0f) - (_824 * 0.05401932820677757f)) + (_817 * 0.010248533450067043f)) + (_831 * 0.11361470818519592f)) + _844), 0.0f)), 1.0f)) * _779) - _766) + (_794 * _864)) * (cb0_013y)) + _766),
                                                             ((((((min((max((((((_817 * 0.0003652969317045063f) + (_795 * 2.0f)) + (_824 * 0.004121614620089531f)) - (_831 * 0.693511426448822f)) + _844), 0.0f)), 1.0f)) * _779) - _767) + (_795 * _864)) * (cb0_013y)) + _767)));

  untonemapped = CrossFadeFix(untonemapped, tonemapped, cb0_009z);
  float4 output = LutBuilderTonemap(untonemapped, tonemapped);
  u0[int3(((uint)(SV_DispatchThreadID.x)), ((uint)(SV_DispatchThreadID.y)), ((uint)(SV_DispatchThreadID.z)))] = output;
}
