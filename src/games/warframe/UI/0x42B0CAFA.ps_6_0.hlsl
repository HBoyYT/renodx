#include "../shared.h"

Texture2D<float4> t0 : register(t0);

cbuffer cb0 : register(b0) {
  float cb0_000x : packoffset(c000.x);
  float cb0_000y : packoffset(c000.y);
  float cb0_000z : packoffset(c000.z);
  float cb0_009x : packoffset(c009.x);
  float cb0_010x : packoffset(c010.x);
  float cb0_010y : packoffset(c010.y);
  float cb0_011x : packoffset(c011.x);
  float cb0_011z : packoffset(c011.z);
  float cb0_011w : packoffset(c011.w);
  float cb0_020x : packoffset(c020.x);
  float cb0_020y : packoffset(c020.y);
  float cb0_020z : packoffset(c020.z);
  float cb0_024x : packoffset(c024.x);
  float cb0_024y : packoffset(c024.y);
  float cb0_024z : packoffset(c024.z);
  float cb0_025x : packoffset(c025.x);
  float cb0_026x : packoffset(c026.x);
  float cb0_038x : packoffset(c038.x);
  float cb0_038y : packoffset(c038.y);
};

SamplerState s0 : register(s0);

float4 main(
  noperspective float4 SV_Position : SV_Position,
  linear float4 COLOR : COLOR,
  linear float4 TEXCOORD : TEXCOORD,
  linear float4 TEXCOORD_1 : TEXCOORD1
) : SV_Target {
  float4 SV_Target;
  float4 _10 = t0.Sample(s0, float2(TEXCOORD.x, TEXCOORD.y));
  float _20 = ddx_coarse(TEXCOORD.x) * cb0_010x;
  float _21 = ddx_coarse(TEXCOORD.y) * cb0_010y;
  float _24 = ddy_coarse(TEXCOORD.x) * cb0_010x;
  float _25 = ddy_coarse(TEXCOORD.y) * cb0_010y;
  float _29 = sqrt((_21 * _21) + (_20 * _20));
  float _33 = sqrt((_25 * _25) + (_24 * _24));
  float _40 = cb0_011x * rsqrt((_33 * _33) + (_29 * _29));
  float _48 = saturate(min(max(((_40 * (_10.x + -0.5f)) + 0.5f), 0.0f), 1.0f) * cb0_011z);
  float _78 = (((cb0_020x * COLOR.x) - cb0_024x) * _48) + cb0_024x;
  float _79 = (((cb0_020y * COLOR.y) - cb0_024y) * _48) + cb0_024y;
  float _80 = (((cb0_020z * COLOR.z) - cb0_024z) * _48) + cb0_024z;
  bool _85 = !(cb0_009x == 0.0f);
  float _98 = select(_85, (_78 * _10.x), _78) * cb0_000x;
  float _99 = select(_85, (_79 * _10.y), _79) * cb0_000y;
  float _100 = select(_85, (_80 * _10.z), _80) * cb0_000z;
  int _104 = int(cb0_038x);
  float _106 = select((_104 == 1), 1.0f, 0.0f);
  float _108 = select((_104 == 2), 1.0f, 0.0f);
  float _110 = select((_104 == 3), 1.0f, 0.0f);
  float _112 = select((_104 == 0), 0.0f, 0.8999999761581421f);
  float _119 = (_112 * 0.1120000034570694f) + 1.0f;
  float _125 = (select((_112 > 0.0f), 0.10999999940395355f, 0.0f) - (_112 * 0.07500000298023224f)) + 0.5f;
  float _126 = _125 + (_119 * (_98 + -0.5f));
  float _127 = _125 + (_119 * (_99 + -0.5f));
  float _128 = _125 + (_119 * (_100 + -0.5f));
  float _133 = ((_126 * 17.882400512695312f) + (_127 * 43.5161018371582f)) + (_128 * 4.119349956512451f);
  float _138 = ((_126 * 3.4556500911712646f) + (_127 * 27.155399322509766f)) + (_128 * 3.867140054702759f);
  float _143 = ((_126 * 0.029956599697470665f) + (_127 * 0.1843090057373047f)) + (_128 * 1.4670900106430054f);
  float _150 = (((_138 * 2.023439884185791f) - (_143 * 2.52810001373291f)) * _106) + (_133 * (1.0f - _106));
  float _157 = (((_133 * 0.4942069947719574f) + (_143 * 1.248270034790039f)) * _108) + (_138 * (1.0f - _108));
  float _164 = (((_138 * 0.8011090159416199f) - (_133 * 0.3959130048751831f)) * _110) + (_143 * (1.0f - _110));
  float _177 = ((((_157 * 0.13050441443920135f) + _126) - (_150 * 0.08094444870948792f)) - (_164 * 0.11672106385231018f)) * 0.699999988079071f;
  float _197 = 1.0f - _112;
  SV_Target.x = ((((((min(max(_126, 0.0f), 1.0f) * _112) - _98) + (_126 * _197)) * cb0_038y) + _98) * cb0_011w);
  SV_Target.y = ((((((min(max((((((_127 * 2.0f) - (_157 * 0.05401932820677757f)) + (_150 * 0.010248533450067043f)) + (_164 * 0.11361470818519592f)) + _177), 0.0f), 1.0f) * _112) - _99) + (_127 * _197)) * cb0_038y) + _99) * cb0_011w);
  SV_Target.z = ((((((min(max((((((_150 * 0.0003652969317045063f) + (_128 * 2.0f)) + (_157 * 0.004121614620089531f)) - (_164 * 0.693511426448822f)) + _177), 0.0f), 1.0f) * _112) - _100) + (_128 * _197)) * cb0_038y) + _100) * cb0_011w);
  SV_Target.w = ((COLOR.w * select(_85, _10.w, saturate((min(max(((((_10.x + -0.4000000059604645f) + (cb0_026x * 0.20000000298023224f)) * _40) + 0.5f), 0.0f), 1.0f) * cb0_025x) + _48))) * cb0_011w);
  if (RENODX_UI_CLAMP == 0.f) {
    return (SV_Target);
  } else {
    return saturate(SV_Target);
  }
}