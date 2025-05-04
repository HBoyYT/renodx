#include "../shared.h"
#include "../common.hlsl"

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
  float _23 = (exp2((float((uint)SV_DispatchThreadID.x) * 0.4516128897666931f) + -6.07624626159668f) * 0.22500000894069672f) + -0.0033346491400152445f;
  float _25 = (exp2((float((uint)SV_DispatchThreadID.y) * 0.4516128897666931f) + -6.07624626159668f) * 0.22500000894069672f) + -0.0033346491400152445f;
  float _27 = (exp2((float((uint)SV_DispatchThreadID.z) * 0.4516128897666931f) + -6.07624626159668f) * 0.22500000894069672f) + -0.0033346491400152445f;
  float _28 = dot(float3(_23, _25, _27), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _42 = cb0_018w + cb0_023w;
  float _56 = cb0_017w * cb0_022w;
  float _70 = cb0_016w * cb0_021w;
  float _84 = cb0_015w * cb0_020w;
  float _95 = cb0_014w * cb0_019w;
  float _99 = cb0_014x * (_23 - _28);
  float _102 = cb0_014y * (_25 - _28);
  float _105 = cb0_014z * (_27 - _28);
  float _165 = saturate((_28 - cb0_034x) / (cb0_034y - cb0_034x));
  float _169 = (_165 * _165) * (3.0f - (_165 * 2.0f));
  float _170 = 1.0f - _169;
  float _179 = cb0_033w + cb0_018w;
  float _188 = cb0_032w * cb0_017w;
  float _197 = cb0_031w * cb0_016w;
  float _206 = cb0_030w * cb0_015w;
  float _212 = cb0_029w * cb0_014w;
  float _275 = saturate((_28 - cb0_034z) / (cb0_034w - cb0_034z));
  float _279 = (_275 * _275) * (3.0f - (_275 * 2.0f));
  float _288 = cb0_028w + cb0_018w;
  float _297 = cb0_027w * cb0_017w;
  float _306 = cb0_026w * cb0_016w;
  float _315 = cb0_025w * cb0_015w;
  float _321 = cb0_024w * cb0_014w;
  float _379 = _169 - _279;
  float _419 = cb0_010x * (exp2(log2(max(6.103519990574569e-05f, (((_279 * (((cb0_033x + cb0_018x) + _179) + (((cb0_032x * cb0_017x) * _188) * exp2(log2(exp2(((cb0_030x * cb0_015x) * _206) * log2(max(0.0f, (((_99 * cb0_029x) * _212) + _28)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_031x * cb0_016x) * _197)))))) + (_170 * (((cb0_018x + cb0_023x) + _42) + (((cb0_017x * cb0_022x) * _56) * exp2(log2(exp2(((cb0_015x * cb0_020x) * _84) * log2(max(0.0f, (((_99 * cb0_019x) * _95) + _28)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_016x * cb0_021x) * _70))))))) + ((((cb0_028x + cb0_018x) + _288) + (((cb0_027x * cb0_017x) * _297) * exp2(log2(exp2(((cb0_025x * cb0_015x) * _315) * log2(max(0.0f, (((_99 * cb0_024x) * _321) + _28)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_026x * cb0_016x) * _306))))) * _379)))) * cb0_011x) + cb0_011w);
  float _420 = cb0_010y * (exp2(log2(max(6.103519990574569e-05f, (((_279 * (((cb0_033y + cb0_018y) + _179) + (((cb0_032y * cb0_017y) * _188) * exp2(log2(exp2(((cb0_030y * cb0_015y) * _206) * log2(max(0.0f, (((_102 * cb0_029y) * _212) + _28)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_031y * cb0_016y) * _197)))))) + (_170 * (((cb0_018y + cb0_023y) + _42) + (((cb0_017y * cb0_022y) * _56) * exp2(log2(exp2(((cb0_015y * cb0_020y) * _84) * log2(max(0.0f, (((_102 * cb0_019y) * _95) + _28)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_016y * cb0_021y) * _70))))))) + ((((cb0_028y + cb0_018y) + _288) + (((cb0_027y * cb0_017y) * _297) * exp2(log2(exp2(((cb0_025y * cb0_015y) * _315) * log2(max(0.0f, (((_102 * cb0_024y) * _321) + _28)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_026y * cb0_016y) * _306))))) * _379)))) * cb0_011y) + cb0_011w);
  float _421 = cb0_010z * (exp2(log2(max(6.103519990574569e-05f, (((_279 * (((cb0_033z + cb0_018z) + _179) + (((cb0_032z * cb0_017z) * _188) * exp2(log2(exp2(((cb0_030z * cb0_015z) * _206) * log2(max(0.0f, (((_105 * cb0_029z) * _212) + _28)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_031z * cb0_016z) * _197)))))) + (_170 * (((cb0_018z + cb0_023z) + _42) + (((cb0_017z * cb0_022z) * _56) * exp2(log2(exp2(((cb0_015z * cb0_020z) * _84) * log2(max(0.0f, (((_105 * cb0_019z) * _95) + _28)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_016z * cb0_021z) * _70))))))) + ((((cb0_028z + cb0_018z) + _288) + (((cb0_027z * cb0_017z) * _297) * exp2(log2(exp2(((cb0_025z * cb0_015z) * _315) * log2(max(0.0f, (((_105 * cb0_024z) * _321) + _28)) * 5.55555534362793f)) * 0.18000000715255737f) * (1.0f / ((cb0_026z * cb0_016z) * _306))))) * _379)))) * cb0_011z) + cb0_011w);
  float _422 = dot(float3(_419, _420, _421), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _437 = (((cb0_008x * _422) - _419) * cb0_008w) + _419;
  float _438 = (((cb0_008y * _422) - _420) * cb0_008w) + _420;
  float _439 = (((cb0_008z * _422) - _421) * cb0_008w) + _421;
  float _473 = (select(((_437 * 1.600000023841858f) > 0.010591000318527222f), ((log2((_437 * 8.88888931274414f) + 0.052271999418735504f) * 0.07441160827875137f) + 0.3855369985103607f), ((_437 * 8.588248252868652f) + 0.09280899912118912f)) * 0.9696969985961914f) + 0.01515151560306549f;
  float _474 = (select(((_438 * 1.600000023841858f) > 0.010591000318527222f), ((log2((_438 * 8.88888931274414f) + 0.052271999418735504f) * 0.07441160827875137f) + 0.3855369985103607f), ((_438 * 8.588248252868652f) + 0.09280899912118912f)) * 0.9696969985961914f) + 0.01515151560306549f;
  float _475 = (select(((_439 * 1.600000023841858f) > 0.010591000318527222f), ((log2((_439 * 8.88888931274414f) + 0.052271999418735504f) * 0.07441160827875137f) + 0.3855369985103607f), ((_439 * 8.588248252868652f) + 0.09280899912118912f)) * 0.9696969985961914f) + 0.01515151560306549f;
  float _478 = mad(0.16386905312538147f, _439, mad(0.14067868888378143f, _438, (_437 * 0.6954522132873535f)));
  float _481 = mad(0.0955343246459961f, _439, mad(0.8596711158752441f, _438, (_437 * 0.044794581830501556f)));
  float _484 = mad(1.0015007257461548f, _439, mad(0.004025210160762072f, _438, (_437 * -0.005525882821530104f)));
  float _488 = max(max(_478, _481), _484);
  float _493 = (max(_488, 1.000000013351432e-10f) - max(min(min(_478, _481), _484), 1.000000013351432e-10f)) / max(_488, 0.009999999776482582f);
  float _506 = ((_481 + _478) + _484) + (sqrt((((_484 - _481) * _484) + ((_481 - _478) * _481)) + ((_478 - _484) * _478)) * 1.75f);
  float _507 = _506 * 0.3333333432674408f;
  float _508 = _493 + -0.4000000059604645f;
  float _509 = _508 * 5.0f;
  float _513 = max((1.0f - abs(_508 * 2.5f)), 0.0f);
  float _524 = ((float(((int)(uint)((bool)(_509 > 0.0f))) - ((int)(uint)((bool)(_509 < 0.0f)))) * (1.0f - (_513 * _513))) + 1.0f) * 0.02500000037252903f;
  float _533;
  float _566;
  float _580;
  if (!(_507 <= 0.0533333346247673f)) {
    if (!(_507 >= 0.1599999964237213f)) {
      _533 = (((0.23999999463558197f / _506) + -0.5f) * _524);
    } else {
      _533 = 0.0f;
    }
  } else {
    _533 = _524;
  }
  float _534 = _533 + 1.0f;
  float _535 = _534 * _478;
  float _536 = _534 * _481;
  float _537 = _534 * _484;
  if (!((bool)(_535 == _536) && (bool)(_536 == _537))) {
    float _544 = ((_535 * 2.0f) - _536) - _537;
    float _547 = ((_481 - _484) * 1.7320507764816284f) * _534;
    float _549 = atan(_547 / _544);
    bool _552 = (_544 < 0.0f);
    bool _553 = (_544 == 0.0f);
    bool _554 = (_547 >= 0.0f);
    bool _555 = (_547 < 0.0f);
    _566 = select((_554 && _553), 90.0f, select((_555 && _553), -90.0f, (select((_555 && _552), (_549 + -3.1415927410125732f), select((_554 && _552), (_549 + 3.1415927410125732f), _549)) * 57.2957763671875f)));
  } else {
    _566 = 0.0f;
  }
  float _571 = min(max(select((_566 < 0.0f), (_566 + 360.0f), _566), 0.0f), 360.0f);
  if (_571 < -180.0f) {
    _580 = (_571 + 360.0f);
  } else {
    if (_571 > 180.0f) {
      _580 = (_571 + -360.0f);
    } else {
      _580 = _571;
    }
  }
  float _584 = saturate(1.0f - abs(_580 * 0.014814814552664757f));
  float _588 = (_584 * _584) * (3.0f - (_584 * 2.0f));
  float _594 = ((_588 * _588) * ((_493 * 0.18000000715255737f) * (0.029999999329447746f - _535))) + _535;
  float _604 = max(0.0f, mad(-0.21492856740951538f, _537, mad(-0.2365107536315918f, _536, (_594 * 1.4514392614364624f))));
  float _605 = max(0.0f, mad(-0.09967592358589172f, _537, mad(1.17622971534729f, _536, (_594 * -0.07655377686023712f))));
  float _606 = max(0.0f, mad(0.9977163076400757f, _537, mad(-0.006032449658960104f, _536, (_594 * 0.008316148072481155f))));
  float _607 = dot(float3(_604, _605, _606), float3(0.2722287178039551f, 0.6740817427635193f, 0.053689517080783844f));
  float _617 = log2(lerp(_607, _604, 0.9599999785423279f));
  float _618 = log2(lerp(_607, _605, 0.9599999785423279f));
  float _619 = log2(lerp(_607, _606, 0.9599999785423279f));
  float _620 = _617 * 0.3010300099849701f;
  float _621 = _618 * 0.3010300099849701f;
  float _622 = _619 * 0.3010300099849701f;
  float _624 = (_617 * 0.2649064064025879f) + 0.7762733697891235f;
  float _626 = (_618 * 0.2649064064025879f) + 0.7762733697891235f;
  float _628 = (_619 * 0.2649064064025879f) + 0.7762733697891235f;
  float _665 = select((_620 < -0.31394699215888977f), (1.0f / (exp2(-1.5943126678466797f - (_617 * 1.5287165641784668f)) + 1.0f)), _624);
  float _666 = select((_621 < -0.31394699215888977f), (1.0f / (exp2(-1.5943126678466797f - (_618 * 1.5287165641784668f)) + 1.0f)), _626);
  float _667 = select((_622 < -0.31394699215888977f), (1.0f / (exp2(-1.5943126678466797f - (_619 * 1.5287165641784668f)) + 1.0f)), _628);
  float _683 = 1.0f - saturate(-1.1511386632919312f - (_617 * 1.103776454925537f));
  float _684 = 1.0f - saturate(-1.1511386632919312f - (_618 * 1.103776454925537f));
  float _685 = 1.0f - saturate(-1.1511386632919312f - (_619 * 1.103776454925537f));
  float _704 = (((_683 * _683) * (select((_620 > -0.5866743326187134f), (1.0399999618530273f - (1.559999942779541f / (exp2((_617 * 0.9799466133117676f) + 1.9098079204559326f) + 1.0f))), _624) - _665)) * (3.0f - (_683 * 2.0f))) + _665;
  float _705 = (((_684 * _684) * (select((_621 > -0.5866743326187134f), (1.0399999618530273f - (1.559999942779541f / (exp2((_618 * 0.9799466133117676f) + 1.9098079204559326f) + 1.0f))), _626) - _666)) * (3.0f - (_684 * 2.0f))) + _666;
  float _706 = (((_685 * _685) * (select((_622 > -0.5866743326187134f), (1.0399999618530273f - (1.559999942779541f / (exp2((_619 * 0.9799466133117676f) + 1.9098079204559326f) + 1.0f))), _628) - _667)) * (3.0f - (_685 * 2.0f))) + _667;
  float _707 = dot(float3(_704, _705, _706), float3(0.2722287178039551f, 0.6740817427635193f, 0.053689517080783844f));
  float _717 = max(0.0f, (lerp(_707, _704, 0.9300000071525574f)));
  float _718 = max(0.0f, (lerp(_707, _705, 0.9300000071525574f)));
  float _719 = max(0.0f, (lerp(_707, _706, 0.9300000071525574f)));
  bool _722 = (cb0_037x > 0.0f);
  float4 _723 = t0.SampleLevel(s0, float3(_473, _474, _475), 0.0f);
  float _727 = max(6.103519990574569e-05f, _723.x);
  float _728 = max(6.103519990574569e-05f, _723.y);
  float _729 = max(6.103519990574569e-05f, _723.z);
  bool _758 = (cb0_037y > 0.0f);
  float4 _759 = t1.SampleLevel(s1, float3(_473, _474, _475), 0.0f);
  float _763 = max(6.103519990574569e-05f, _759.x);
  float _764 = max(6.103519990574569e-05f, _759.y);
  float _765 = max(6.103519990574569e-05f, _759.z);
  float _797 = (select(_722, select((_727 > 0.08100000023841858f), exp2(log2((_727 + 0.0989999994635582f) * 0.9099181294441223f) * 2.222222328186035f), (_727 * 0.2222222238779068f)), _717) - _717) * cb0_037z;
  float _798 = (select(_722, select((_728 > 0.08100000023841858f), exp2(log2((_728 + 0.0989999994635582f) * 0.9099181294441223f) * 2.222222328186035f), (_728 * 0.2222222238779068f)), _718) - _718) * cb0_037z;
  float _799 = (select(_722, select((_729 > 0.08100000023841858f), exp2(log2((_729 + 0.0989999994635582f) * 0.9099181294441223f) * 2.222222328186035f), (_729 * 0.2222222238779068f)), _719) - _719) * cb0_037z;
  float _818 = (_797 + _717) + ((((select(_758, select((_763 > 0.08100000023841858f), exp2(log2((_763 + 0.0989999994635582f) * 0.9099181294441223f) * 2.222222328186035f), (_763 * 0.2222222238779068f)), _717) - _717) * cb0_037w) - _797) * cb0_036x);
  float _819 = (_798 + _718) + ((((select(_758, select((_764 > 0.08100000023841858f), exp2(log2((_764 + 0.0989999994635582f) * 0.9099181294441223f) * 2.222222328186035f), (_764 * 0.2222222238779068f)), _718) - _718) * cb0_037w) - _798) * cb0_036x);
  float _820 = (_799 + _719) + ((((select(_758, select((_765 > 0.08100000023841858f), exp2(log2((_765 + 0.0989999994635582f) * 0.9099181294441223f) * 2.222222328186035f), (_765 * 0.2222222238779068f)), _719) - _719) * cb0_037w) - _799) * cb0_036x);
  float _864 = 0.5f - cb0_009z;
  float _868 = saturate(_864 + ((exp2(log2(select((_818 <= 0.0031308000907301903f), (_818 * 12.920000076293945f), (((pow(_818, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f))) * cb0_009x) + -0.5f) * cb0_009y));
  float _869 = saturate(_864 + ((exp2(log2(select((_819 <= 0.0031308000907301903f), (_819 * 12.920000076293945f), (((pow(_819, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f))) * cb0_009x) + -0.5f) * cb0_009y));
  float _870 = saturate(_864 + ((exp2(log2(select((_820 <= 0.0031308000907301903f), (_820 * 12.920000076293945f), (((pow(_820, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f))) * cb0_009x) + -0.5f) * cb0_009y));
  int _874 = int(cb0_013x);
  float _876 = select((_874 == 1), 1.0f, 0.0f);
  float _878 = select((_874 == 2), 1.0f, 0.0f);
  float _880 = select((_874 == 3), 1.0f, 0.0f);
  float _882 = select((_874 == 0), 0.0f, 0.8999999761581421f);
  float _889 = (_882 * 0.1120000034570694f) + 1.0f;
  float _895 = (select((_882 > 0.0f), 0.10999999940395355f, 0.0f) - (_882 * 0.07500000298023224f)) + 0.5f;
  float _896 = _895 + (_889 * (_868 + -0.5f));
  float _897 = _895 + (_889 * (_869 + -0.5f));
  float _898 = _895 + (_889 * (_870 + -0.5f));
  float _903 = ((_896 * 17.882400512695312f) + (_897 * 43.5161018371582f)) + (_898 * 4.119349956512451f);
  float _908 = ((_896 * 3.4556500911712646f) + (_897 * 27.155399322509766f)) + (_898 * 3.867140054702759f);
  float _913 = ((_896 * 0.029956599697470665f) + (_897 * 0.1843090057373047f)) + (_898 * 1.4670900106430054f);
  float _920 = (((_908 * 2.023439884185791f) - (_913 * 2.52810001373291f)) * _876) + (_903 * (1.0f - _876));
  float _927 = (((_903 * 0.4942069947719574f) + (_913 * 1.248270034790039f)) * _878) + (_908 * (1.0f - _878));
  float _934 = (((_908 * 0.8011090159416199f) - (_903 * 0.3959130048751831f)) * _880) + (_913 * (1.0f - _880));
  float _947 = ((((_927 * 0.13050441443920135f) + _896) - (_920 * 0.08094444870948792f)) - (_934 * 0.11672106385231018f)) * 0.699999988079071f;
  float _967 = 1.0f - _882;

  float3 tonemapped = renodx::color::srgb::DecodeSafe(float3((((((min(max(_896, 0.0f), 1.0f) * _882) - _868) + (_896 * _967)) * cb0_013y) + _868),
                                                             (((((min(max((((((_897 * 2.0f) - (_927 * 0.05401932820677757f)) + (_920 * 0.010248533450067043f)) + (_934 * 0.11361470818519592f)) + _947), 0.0f), 1.0f) * _882) - _869) + (_897 * _967)) * cb0_013y) + _869),
                                                             (((((min(max((((((_920 * 0.0003652969317045063f) + (_898 * 2.0f)) + (_927 * 0.004121614620089531f)) - (_934 * 0.693511426448822f)) + _947), 0.0f), 1.0f) * _882) - _870) + (_898 * _967)) * cb0_013y) + _870)));
  float3 untonemapped = float3(_419, _420, _421);

  // Applying cb0_009x (which controls fading to white / black) to untonemapped
  untonemapped.r = (_864 + ((exp2(log2(select((untonemapped.r <= 0.0031308000907301903f), (untonemapped.r * 12.920000076293945f), (((pow(untonemapped.r, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f))) * cb0_009x) + -0.5f) * cb0_009y));
  untonemapped.g = (_864 + ((exp2(log2(select((untonemapped.g <= 0.0031308000907301903f), (untonemapped.g * 12.920000076293945f), (((pow(untonemapped.g, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f))) * cb0_009x) + -0.5f) * cb0_009y));
  untonemapped.b = (_864 + ((exp2(log2(select((untonemapped.b <= 0.0031308000907301903f), (untonemapped.b * 12.920000076293945f), (((pow(untonemapped.b, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f))) * cb0_009x) + -0.5f) * cb0_009y));
  untonemapped = renodx::color::srgb::DecodeSafe(untonemapped);

  untonemapped = renodx::color::correct::GammaSafe(untonemapped, false, 2.4);

  // Bypass normal per channel hue correction
  renodx::draw::Config config = renodx::draw::BuildConfig();
  config.per_channel_blowout_restoration = 0.f;
  config.per_channel_chrominance_correction = 0.f;
  config.per_channel_hue_correction = 0.f;


  tonemapped = LUTPerChannelCorrection(untonemapped, tonemapped);
  untonemapped = CrossFadeFix(untonemapped, tonemapped, cb0_009z);
  float4 output = LutBuilderTonemap(untonemapped, tonemapped, config);
  u0[int3((uint)(SV_DispatchThreadID.x), (uint)(SV_DispatchThreadID.y), (uint)(SV_DispatchThreadID.z))] = output;
}
