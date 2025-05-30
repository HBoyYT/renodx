#include "../shared.h"
#include "../common.hlsl"


Texture2D<float4> t0 : register(t0);

Texture2D<float4> t1 : register(t1);

cbuffer cb0 : register(b0) {
  float cb0_000x : packoffset(c000.x);
  float cb0_000y : packoffset(c000.y);
  float cb0_000z : packoffset(c000.z);
  float cb0_000w : packoffset(c000.w);
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
  float cb0_006y : packoffset(c006.y);
  float cb0_006z : packoffset(c006.z);
  float cb0_006w : packoffset(c006.w);
  float cb0_007x : packoffset(c007.x);
  float cb0_008x : packoffset(c008.x);
  float cb0_008y : packoffset(c008.y);
  float cb0_008z : packoffset(c008.z);
  float cb0_008w : packoffset(c008.w);
  float cb0_009x : packoffset(c009.x);
  float cb0_009y : packoffset(c009.y);
  float cb0_018x : packoffset(c018.x);
  float cb0_023x : packoffset(c023.x);
  float cb0_023y : packoffset(c023.y);
  float cb0_023z : packoffset(c023.z);
  float cb0_083x : packoffset(c083.x);
  float cb0_083y : packoffset(c083.y);
};

SamplerState s0 : register(s0);

SamplerState s1 : register(s1);

float4 main(
  noperspective float4 SV_Position : SV_Position,
  linear float4 COLOR : COLOR,
  linear float4 TEXCOORD : TEXCOORD,
  linear float4 TEXCOORD_1 : TEXCOORD1
) : SV_Target { 
  float4 SV_Target;
  float _25 = ((((cb0_008z) - (cb0_008y)) * (min((max(((TEXCOORD.y) - (cb0_008w)), 0.0f)), 1.0f))) + (cb0_008y)) * (cb0_008x);
  float _33 = ((frac(((cb0_009x) * (cb0_007x)))) * 2.0f) + -1.0f;
  float4 _39 = t1.Sample(s1, float2((_33 + ((cb0_009y) * (TEXCOORD.z))), (_33 + ((cb0_009y) * (TEXCOORD.w)))));
  float4 _52 = t1.Sample(s1, float2((((cb0_009y) * (TEXCOORD.z)) - _33), (((cb0_009y) * (TEXCOORD.w)) - _33)));
  float _61 = (((_39.x) * 2.0f) + -1.0f) + ((((_52.x) * 2.0f) + -1.0f) * _25);
  float _62 = (((_39.y) * 2.0f) + -1.0f) + ((((_52.y) * 2.0f) + -1.0f) * _25);
  float4 _65 = t0.Sample(s0, float2(((_61 * _25) + (TEXCOORD.x)), (TEXCOORD.y)));
  float _79 = 1.0f - ((cb0_008x) * (saturate(((sqrt(((_61 * _61) + (_62 * _62)))) * 0.20000000298023224f))));
  float _80 = _79 * (_65.x);
  float _81 = _79 * (_65.y);
  float _82 = _79 * (_65.z);
  float _150 = _80;
  float _151 = _81;
  float _152 = _82;
  float _153 = (_65.w);
  if ((((cb0_018x) > 0.0f))) {
    float _96 = exp2(((log2(_80)) * 0.4545454680919647f));
    float _97 = exp2(((log2(_81)) * 0.4545454680919647f));
    float _98 = exp2(((log2(_82)) * 0.4545454680919647f));
    float _99 = exp2(((log2(((_65.w) + 9.999999747378752e-05f))) * 0.4545454680919647f));
    _150 = (exp2(((log2((saturate(((cb0_006x) + (dot(float4((cb0_002x), (cb0_002y), (cb0_002z), (cb0_002w)), float4(_96, _97, _98, _99)))))))) * 2.200000047683716f)));
    _151 = (exp2(((log2((saturate(((cb0_006y) + (dot(float4((cb0_003x), (cb0_003y), (cb0_003z), (cb0_003w)), float4(_96, _97, _98, _99)))))))) * 2.200000047683716f)));
    _152 = (exp2(((log2((saturate(((cb0_006z) + (dot(float4((cb0_004x), (cb0_004y), (cb0_004z), (cb0_004w)), float4(_96, _97, _98, _99)))))))) * 2.200000047683716f)));
    _153 = (exp2(((log2((saturate(((cb0_006w) + (dot(float4((cb0_005x), (cb0_005y), (cb0_005z), (cb0_005w)), float4(_96, _97, _98, _99)))))))) * 2.200000047683716f)));
  }
  float _166 = (_153 * (COLOR.w)) * (cb0_000w);
  float _193 = (cb0_023x) * (((exp2(((log2((cb0_001x))) * 2.200000047683716f))) * _166) + ((_150 * (COLOR.x)) * (cb0_000x)));
  float _194 = (cb0_023y) * (((exp2(((log2((cb0_001y))) * 2.200000047683716f))) * _166) + ((_151 * (COLOR.y)) * (cb0_000y)));
  float _195 = (cb0_023z) * (((exp2(((log2((cb0_001z))) * 2.200000047683716f))) * _166) + ((_152 * (COLOR.z)) * (cb0_000z)));
  int _199 = int(199);
  float _201 = (((bool)((_199 == 1))) ? 1.0f : 0.0f);
  float _203 = (((bool)((_199 == 2))) ? 1.0f : 0.0f);
  float _205 = (((bool)((_199 == 3))) ? 1.0f : 0.0f);
  float _207 = (((bool)((_199 == 0))) ? 0.0f : 0.8999999761581421f);
  float _214 = (_207 * 0.1120000034570694f) + 1.0f;
  float _220 = (((((bool)((_207 > 0.0f))) ? 0.10999999940395355f : 0.0f)) - (_207 * 0.07500000298023224f)) + 0.5f;
  float _221 = _220 + (_214 * (_193 + -0.5f));
  float _222 = _220 + (_214 * (_194 + -0.5f));
  float _223 = _220 + (_214 * (_195 + -0.5f));
  float _228 = ((_221 * 17.882400512695312f) + (_222 * 43.5161018371582f)) + (_223 * 4.119349956512451f);
  float _233 = ((_221 * 3.4556500911712646f) + (_222 * 27.155399322509766f)) + (_223 * 3.867140054702759f);
  float _238 = ((_221 * 0.029956599697470665f) + (_222 * 0.1843090057373047f)) + (_223 * 1.4670900106430054f);
  float _245 = (((_233 * 2.023439884185791f) - (_238 * 2.52810001373291f)) * _201) + (_228 * (1.0f - _201));
  float _252 = (((_228 * 0.4942069947719574f) + (_238 * 1.248270034790039f)) * _203) + (_233 * (1.0f - _203));
  float _259 = (((_233 * 0.8011090159416199f) - (_228 * 0.3959130048751831f)) * _205) + (_238 * (1.0f - _205));
  float _272 = ((((_252 * 0.13050441443920135f) + _221) - (_245 * 0.08094444870948792f)) - (_259 * 0.11672106385231018f)) * 0.699999988079071f;
  float _292 = 1.0f - _207;
  SV_Target.x = ((((((min((max(_221, 0.0f)), 1.0f)) * _207) - _193) + (_221 * _292)) * (cb0_083y)) + _193);
  SV_Target.y = ((((((min((max((((((_222 * 2.0f) - (_252 * 0.05401932820677757f)) + (_245 * 0.010248533450067043f)) + (_259 * 0.11361470818519592f)) + _272), 0.0f)), 1.0f)) * _207) - _194) + (_222 * _292)) * (cb0_083y)) + _194);
  SV_Target.z = ((((((min((max((((((_245 * 0.0003652969317045063f) + (_223 * 2.0f)) + (_252 * 0.004121614620089531f)) - (_259 * 0.693511426448822f)) + _272), 0.0f)), 1.0f)) * _207) - _195) + (_223 * _292)) * (cb0_083y)) + _195);
  SV_Target.w = (saturate(((cb0_001w) + _166)));

  SV_Target.rgb = renodx::draw::UpscaleVideoPass(SV_Target.rgb);
  SV_Target.rgb = renodx::draw::RenderIntermediatePass(SV_Target.rgb);
  return SV_Target;
}
