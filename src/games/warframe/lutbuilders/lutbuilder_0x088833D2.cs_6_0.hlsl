#include "../shared.h"
#include "../common.hlsl"


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
    uint3 SV_DispatchThreadID: SV_DispatchThreadID,
    uint3 SV_GroupID: SV_GroupID,
    uint3 SV_GroupThreadID: SV_GroupThreadID,
    uint SV_GroupIndex: SV_GroupIndex
) {
  float _19 = ((exp2((((float((uint)(SV_DispatchThreadID.x))) * 0.4516128897666931f) + -6.07624626159668f))) * 0.22500000894069672f) + -0.0033346491400152445f;
  float _21 = ((exp2((((float((uint)(SV_DispatchThreadID.y))) * 0.4516128897666931f) + -6.07624626159668f))) * 0.22500000894069672f) + -0.0033346491400152445f;
  float _23 = ((exp2((((float((uint)(SV_DispatchThreadID.z))) * 0.4516128897666931f) + -6.07624626159668f))) * 0.22500000894069672f) + -0.0033346491400152445f;
  float _24 = dot(float3(_19, _21, _23), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _38 = (cb0_018w) + (cb0_023w);
  float _52 = (cb0_017w) * (cb0_022w);
  float _66 = (cb0_016w) * (cb0_021w);
  float _80 = (cb0_015w) * (cb0_020w);
  float _91 = (cb0_014w) * (cb0_019w);
  float _95 = (cb0_014x) * (_19 - _24);
  float _98 = (cb0_014y) * (_21 - _24);
  float _101 = (cb0_014z) * (_23 - _24);
  float _161 = saturate(((_24 - (cb0_034x)) / ((cb0_034y) - (cb0_034x))));
  float _165 = (_161 * _161) * (3.0f - (_161 * 2.0f));
  float _166 = 1.0f - _165;
  float _175 = (cb0_033w) + (cb0_018w);
  float _184 = (cb0_032w) * (cb0_017w);
  float _193 = (cb0_031w) * (cb0_016w);
  float _202 = (cb0_030w) * (cb0_015w);
  float _208 = (cb0_029w) * (cb0_014w);
  float _271 = saturate(((_24 - (cb0_034z)) / ((cb0_034w) - (cb0_034z))));
  float _275 = (_271 * _271) * (3.0f - (_271 * 2.0f));
  float _284 = (cb0_028w) + (cb0_018w);
  float _293 = (cb0_027w) * (cb0_017w);
  float _302 = (cb0_026w) * (cb0_016w);
  float _311 = (cb0_025w) * (cb0_015w);
  float _317 = (cb0_024w) * (cb0_014w);
  float _375 = _165 - _275;
  float _415 = (cb0_010x) * ((exp2(((log2((max(6.103519990574569e-05f, (((_275 * ((((cb0_033x) + (cb0_018x)) + _175) + ((((cb0_032x) * (cb0_017x)) * _184) * (exp2(((log2(((exp2(((((cb0_030x) * (cb0_015x)) * _202) * (log2(((max(0.0f, (((_95 * (cb0_029x)) * _208) + _24))) * 5.55555534362793f)))))) * 0.18000000715255737f))) * (1.0f / (((cb0_031x) * (cb0_016x)) * _193)))))))) + (_166 * ((((cb0_018x) + (cb0_023x)) + _38) + ((((cb0_017x) * (cb0_022x)) * _52) * (exp2(((log2(((exp2(((((cb0_015x) * (cb0_020x)) * _80) * (log2(((max(0.0f, (((_95 * (cb0_019x)) * _91) + _24))) * 5.55555534362793f)))))) * 0.18000000715255737f))) * (1.0f / (((cb0_016x) * (cb0_021x)) * _66))))))))) + (((((cb0_028x) + (cb0_018x)) + _284) + ((((cb0_027x) * (cb0_017x)) * _293) * (exp2(((log2(((exp2(((((cb0_025x) * (cb0_015x)) * _311) * (log2(((max(0.0f, (((_95 * (cb0_024x)) * _317) + _24))) * 5.55555534362793f)))))) * 0.18000000715255737f))) * (1.0f / (((cb0_026x) * (cb0_016x)) * _302))))))) * _375)))))) * (cb0_011x)))) + (cb0_011w));
  float _416 = (cb0_010y) * ((exp2(((log2((max(6.103519990574569e-05f, (((_275 * ((((cb0_033y) + (cb0_018y)) + _175) + ((((cb0_032y) * (cb0_017y)) * _184) * (exp2(((log2(((exp2(((((cb0_030y) * (cb0_015y)) * _202) * (log2(((max(0.0f, (((_98 * (cb0_029y)) * _208) + _24))) * 5.55555534362793f)))))) * 0.18000000715255737f))) * (1.0f / (((cb0_031y) * (cb0_016y)) * _193)))))))) + (_166 * ((((cb0_018y) + (cb0_023y)) + _38) + ((((cb0_017y) * (cb0_022y)) * _52) * (exp2(((log2(((exp2(((((cb0_015y) * (cb0_020y)) * _80) * (log2(((max(0.0f, (((_98 * (cb0_019y)) * _91) + _24))) * 5.55555534362793f)))))) * 0.18000000715255737f))) * (1.0f / (((cb0_016y) * (cb0_021y)) * _66))))))))) + (((((cb0_028y) + (cb0_018y)) + _284) + ((((cb0_027y) * (cb0_017y)) * _293) * (exp2(((log2(((exp2(((((cb0_025y) * (cb0_015y)) * _311) * (log2(((max(0.0f, (((_98 * (cb0_024y)) * _317) + _24))) * 5.55555534362793f)))))) * 0.18000000715255737f))) * (1.0f / (((cb0_026y) * (cb0_016y)) * _302))))))) * _375)))))) * (cb0_011y)))) + (cb0_011w));
  float _417 = (cb0_010z) * ((exp2(((log2((max(6.103519990574569e-05f, (((_275 * ((((cb0_033z) + (cb0_018z)) + _175) + ((((cb0_032z) * (cb0_017z)) * _184) * (exp2(((log2(((exp2(((((cb0_030z) * (cb0_015z)) * _202) * (log2(((max(0.0f, (((_101 * (cb0_029z)) * _208) + _24))) * 5.55555534362793f)))))) * 0.18000000715255737f))) * (1.0f / (((cb0_031z) * (cb0_016z)) * _193)))))))) + (_166 * ((((cb0_018z) + (cb0_023z)) + _38) + ((((cb0_017z) * (cb0_022z)) * _52) * (exp2(((log2(((exp2(((((cb0_015z) * (cb0_020z)) * _80) * (log2(((max(0.0f, (((_101 * (cb0_019z)) * _91) + _24))) * 5.55555534362793f)))))) * 0.18000000715255737f))) * (1.0f / (((cb0_016z) * (cb0_021z)) * _66))))))))) + (((((cb0_028z) + (cb0_018z)) + _284) + ((((cb0_027z) * (cb0_017z)) * _293) * (exp2(((log2(((exp2(((((cb0_025z) * (cb0_015z)) * _311) * (log2(((max(0.0f, (((_101 * (cb0_024z)) * _317) + _24))) * 5.55555534362793f)))))) * 0.18000000715255737f))) * (1.0f / (((cb0_026z) * (cb0_016z)) * _302))))))) * _375)))))) * (cb0_011z)))) + (cb0_011w));
  float _418 = dot(float3(_415, _416, _417), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _433 = ((((cb0_008x) * _418) - _415) * (cb0_008w)) + _415;
  float _434 = ((((cb0_008y) * _418) - _416) * (cb0_008w)) + _416;
  float _435 = ((((cb0_008z) * _418) - _417) * (cb0_008w)) + _417;
  float _438 = mad(0.16386905312538147f, _435, (mad(0.14067868888378143f, _434, (_433 * 0.6954522132873535f))));
  float _441 = mad(0.0955343246459961f, _435, (mad(0.8596711158752441f, _434, (_433 * 0.044794581830501556f))));
  float _444 = mad(1.0015007257461548f, _435, (mad(0.004025210160762072f, _434, (_433 * -0.005525882821530104f))));
  float _448 = max((max(_438, _441)), _444);
  float _453 = ((max(_448, 1.000000013351432e-10f)) - (max((min((min(_438, _441)), _444)), 1.000000013351432e-10f))) / (max(_448, 0.009999999776482582f));
  float _466 = ((_441 + _438) + _444) + ((sqrt(((((_444 - _441) * _444) + ((_441 - _438) * _441)) + ((_438 - _444) * _438)))) * 1.75f);
  float _467 = _466 * 0.3333333432674408f;
  float _468 = _453 + -0.4000000059604645f;
  float _469 = _468 * 5.0f;
  float _473 = max((1.0f - (abs((_468 * 2.5f)))), 0.0f);
  float _484 = (((float(((int(((bool)((_469 > 0.0f))))) - (int(((bool)((_469 < 0.0f)))))))) * (1.0f - (_473 * _473))) + 1.0f) * 0.02500000037252903f;
  float _493 = _484;
  float _526;
  float _540;
  if ((!(_467 <= 0.0533333346247673f))) {
    _493 = 0.0f;
    if ((!(_467 >= 0.1599999964237213f))) {
      _493 = (((0.23999999463558197f / _466) + -0.5f) * _484);
    }
  }
  float _494 = _493 + 1.0f;
  float _495 = _494 * _438;
  float _496 = _494 * _441;
  float _497 = _494 * _444;
  _526 = 0.0f;
  if (!(((bool)((_495 == _496))) && ((bool)((_496 == _497))))) {
    float _504 = ((_495 * 2.0f) - _496) - _497;
    float _507 = ((_441 - _444) * 1.7320507764816284f) * _494;
    float _509 = atan((_507 / _504));
    bool _512 = (_504 < 0.0f);
    bool _513 = (_504 == 0.0f);
    bool _514 = (_507 >= 0.0f);
    bool _515 = (_507 < 0.0f);
    _526 = ((((bool)(_514 && _513)) ? 90.0f : ((((bool)(_515 && _513)) ? -90.0f : (((((bool)(_515 && _512)) ? (_509 + -3.1415927410125732f) : ((((bool)(_514 && _512)) ? (_509 + 3.1415927410125732f) : _509)))) * 57.2957763671875f)))));
  }
  float _531 = min((max(((((bool)((_526 < 0.0f))) ? (_526 + 360.0f) : _526)), 0.0f)), 360.0f);
  if (((_531 < -180.0f))) {
    _540 = (_531 + 360.0f);
  } else {
    _540 = _531;
    if (((_531 > 180.0f))) {
      _540 = (_531 + -360.0f);
    }
  }
  float _544 = saturate((1.0f - (abs((_540 * 0.014814814552664757f)))));
  float _548 = (_544 * _544) * (3.0f - (_544 * 2.0f));
  float _554 = ((_548 * _548) * ((_453 * 0.18000000715255737f) * (0.029999999329447746f - _495))) + _495;
  float _564 = max(0.0f, (mad(-0.21492856740951538f, _497, (mad(-0.2365107536315918f, _496, (_554 * 1.4514392614364624f))))));
  float _565 = max(0.0f, (mad(-0.09967592358589172f, _497, (mad(1.17622971534729f, _496, (_554 * -0.07655377686023712f))))));
  float _566 = max(0.0f, (mad(0.9977163076400757f, _497, (mad(-0.006032449658960104f, _496, (_554 * 0.008316148072481155f))))));
  float _567 = dot(float3(_564, _565, _566), float3(0.2722287178039551f, 0.6740817427635193f, 0.053689517080783844f));
  float _577 = log2((((_564 - _567) * 0.9599999785423279f) + _567));
  float _578 = log2((((_565 - _567) * 0.9599999785423279f) + _567));
  float _579 = log2((((_566 - _567) * 0.9599999785423279f) + _567));
  float _580 = _577 * 0.3010300099849701f;
  float _581 = _578 * 0.3010300099849701f;
  float _582 = _579 * 0.3010300099849701f;
  float _584 = (_577 * 0.2649064064025879f) + 0.7762733697891235f;
  float _586 = (_578 * 0.2649064064025879f) + 0.7762733697891235f;
  float _588 = (_579 * 0.2649064064025879f) + 0.7762733697891235f;
  float _625 = (((bool)((_580 < -0.31394699215888977f))) ? (1.0f / ((exp2((-1.5943126678466797f - (_577 * 1.5287165641784668f)))) + 1.0f)) : _584);
  float _626 = (((bool)((_581 < -0.31394699215888977f))) ? (1.0f / ((exp2((-1.5943126678466797f - (_578 * 1.5287165641784668f)))) + 1.0f)) : _586);
  float _627 = (((bool)((_582 < -0.31394699215888977f))) ? (1.0f / ((exp2((-1.5943126678466797f - (_579 * 1.5287165641784668f)))) + 1.0f)) : _588);
  float _643 = 1.0f - (saturate((-1.1511386632919312f - (_577 * 1.103776454925537f))));
  float _644 = 1.0f - (saturate((-1.1511386632919312f - (_578 * 1.103776454925537f))));
  float _645 = 1.0f - (saturate((-1.1511386632919312f - (_579 * 1.103776454925537f))));
  float _664 = (((_643 * _643) * (((((bool)((_580 > -0.5866743326187134f))) ? (1.0399999618530273f - (1.559999942779541f / ((exp2(((_577 * 0.9799466133117676f) + 1.9098079204559326f))) + 1.0f))) : _584)) - _625)) * (3.0f - (_643 * 2.0f))) + _625;
  float _665 = (((_644 * _644) * (((((bool)((_581 > -0.5866743326187134f))) ? (1.0399999618530273f - (1.559999942779541f / ((exp2(((_578 * 0.9799466133117676f) + 1.9098079204559326f))) + 1.0f))) : _586)) - _626)) * (3.0f - (_644 * 2.0f))) + _626;
  float _666 = (((_645 * _645) * (((((bool)((_582 > -0.5866743326187134f))) ? (1.0399999618530273f - (1.559999942779541f / ((exp2(((_579 * 0.9799466133117676f) + 1.9098079204559326f))) + 1.0f))) : _588)) - _627)) * (3.0f - (_645 * 2.0f))) + _627;
  float _667 = dot(float3(_664, _665, _666), float3(0.2722287178039551f, 0.6740817427635193f, 0.053689517080783844f));
  float _677 = max(0.0f, (((_664 - _667) * 0.9300000071525574f) + _667));
  float _678 = max(0.0f, (((_665 - _667) * 0.9300000071525574f) + _667));
  float _679 = max(0.0f, (((_666 - _667) * 0.9300000071525574f) + _667));
  float _723 = 0.5f - (cb0_009z);
  float _727 = saturate((_723 + (((exp2(((log2(((((bool)((_677 <= 0.0031308000907301903f))) ? (_677 * 12.920000076293945f) : (((exp2(((log2(_677)) * 0.4166666567325592f))) * 1.0549999475479126f) + -0.054999999701976776f))))) * (cb0_009x)))) + -0.5f) * (cb0_009y))));
  float _728 = saturate((_723 + (((exp2(((log2(((((bool)((_678 <= 0.0031308000907301903f))) ? (_678 * 12.920000076293945f) : (((exp2(((log2(_678)) * 0.4166666567325592f))) * 1.0549999475479126f) + -0.054999999701976776f))))) * (cb0_009x)))) + -0.5f) * (cb0_009y))));
  float _729 = saturate((_723 + (((exp2(((log2(((((bool)((_679 <= 0.0031308000907301903f))) ? (_679 * 12.920000076293945f) : (((exp2(((log2(_679)) * 0.4166666567325592f))) * 1.0549999475479126f) + -0.054999999701976776f))))) * (cb0_009x)))) + -0.5f) * (cb0_009y))));
  int _733 = int(733);
  float _735 = (((bool)((_733 == 1))) ? 1.0f : 0.0f);
  float _737 = (((bool)((_733 == 2))) ? 1.0f : 0.0f);
  float _739 = (((bool)((_733 == 3))) ? 1.0f : 0.0f);
  float _741 = (((bool)((_733 == 0))) ? 0.0f : 0.8999999761581421f);
  float _748 = (_741 * 0.1120000034570694f) + 1.0f;
  float _754 = (((((bool)((_741 > 0.0f))) ? 0.10999999940395355f : 0.0f)) - (_741 * 0.07500000298023224f)) + 0.5f;
  float _755 = _754 + (_748 * (_727 + -0.5f));
  float _756 = _754 + (_748 * (_728 + -0.5f));
  float _757 = _754 + (_748 * (_729 + -0.5f));
  float _762 = ((_755 * 17.882400512695312f) + (_756 * 43.5161018371582f)) + (_757 * 4.119349956512451f);
  float _767 = ((_755 * 3.4556500911712646f) + (_756 * 27.155399322509766f)) + (_757 * 3.867140054702759f);
  float _772 = ((_755 * 0.029956599697470665f) + (_756 * 0.1843090057373047f)) + (_757 * 1.4670900106430054f);
  float _779 = (((_767 * 2.023439884185791f) - (_772 * 2.52810001373291f)) * _735) + (_762 * (1.0f - _735));
  float _786 = (((_762 * 0.4942069947719574f) + (_772 * 1.248270034790039f)) * _737) + (_767 * (1.0f - _737));
  float _793 = (((_767 * 0.8011090159416199f) - (_762 * 0.3959130048751831f)) * _739) + (_772 * (1.0f - _739));
  float _806 = ((((_786 * 0.13050441443920135f) + _755) - (_779 * 0.08094444870948792f)) - (_793 * 0.11672106385231018f)) * 0.699999988079071f;
  float _826 = 1.0f - _741;

  float3 untonemapped = (float3(_415, _416, _417));
  // Applying cb0_009x (which controls fading to white / black) to untonemapped
  untonemapped.r = ((_723 + (((exp2(((log2(((((bool)((untonemapped.r <= 0.0031308000907301903f))) ? (untonemapped.r * 12.920000076293945f) : (((exp2(((log2(untonemapped.r)) * 0.4166666567325592f))) * 1.0549999475479126f) + -0.054999999701976776f))))) * (cb0_009x)))) + -0.5f) * (cb0_009y))));
  untonemapped.g = ((_723 + (((exp2(((log2(((((bool)((untonemapped.g <= 0.0031308000907301903f))) ? (untonemapped.g * 12.920000076293945f) : (((exp2(((log2(untonemapped.g)) * 0.4166666567325592f))) * 1.0549999475479126f) + -0.054999999701976776f))))) * (cb0_009x)))) + -0.5f) * (cb0_009y))));
  untonemapped.b = ((_723 + (((exp2(((log2(((((bool)((untonemapped.b <= 0.0031308000907301903f))) ? (untonemapped.b * 12.920000076293945f) : (((exp2(((log2(untonemapped.b)) * 0.4166666567325592f))) * 1.0549999475479126f) + -0.054999999701976776f))))) * (cb0_009x)))) + -0.5f) * (cb0_009y))));
  untonemapped = renodx::color::srgb::DecodeSafe(untonemapped);

  untonemapped = renodx::color::correct::GammaSafe(untonemapped, false, 2.4);

  float3 tonemapped = renodx::color::srgb::DecodeSafe(float3(((((((min((max(_755, 0.0f)), 1.0f)) * _741) - _727) + (_755 * _826)) * (cb0_013y)) + _727),
                                                             ((((((min((max((((((_756 * 2.0f) - (_786 * 0.05401932820677757f)) + (_779 * 0.010248533450067043f)) + (_793 * 0.11361470818519592f)) + _806), 0.0f)), 1.0f)) * _741) - _728) + (_756 * _826)) * (cb0_013y)) + _728),
                                                             ((((((min((max((((((_779 * 0.0003652969317045063f) + (_757 * 2.0f)) + (_786 * 0.004121614620089531f)) - (_793 * 0.693511426448822f)) + _806), 0.0f)), 1.0f)) * _741) - _729) + (_757 * _826)) * (cb0_013y)) + _729)));

  untonemapped = CrossFadeFix(untonemapped, tonemapped, cb0_009z);
  float4 output = LutBuilderTonemap(untonemapped, tonemapped);
  u0[int3((uint)(SV_DispatchThreadID.x), (uint)(SV_DispatchThreadID.y), (uint)(SV_DispatchThreadID.z))] = output; 
  

  


}
