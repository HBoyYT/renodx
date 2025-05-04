#include "../shared.h"

Texture2D<float4> t0 : register(t0);

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
  float cb0_018x : packoffset(c018.x);
  float cb0_023x : packoffset(c023.x);
  float cb0_023y : packoffset(c023.y);
  float cb0_023z : packoffset(c023.z);
  float cb0_073x : packoffset(c073.x);
  float cb0_073y : packoffset(c073.y);
  float cb0_077x : packoffset(c077.x);
  float cb0_077y : packoffset(c077.y);
  float cb0_077z : packoffset(c077.z);
  float cb0_077w : packoffset(c077.w);
  float cb0_078x : packoffset(c078.x);
  float cb0_078y : packoffset(c078.y);
  float cb0_078z : packoffset(c078.z);
  float cb0_078w : packoffset(c078.w);
  float cb0_079x : packoffset(c079.x);
  float cb0_079y : packoffset(c079.y);
  float cb0_079z : packoffset(c079.z);
  float cb0_079w : packoffset(c079.w);
  float cb0_080x : packoffset(c080.x);
  float cb0_080y : packoffset(c080.y);
  float cb0_080z : packoffset(c080.z);
  float cb0_083x : packoffset(c083.x);
  float cb0_083y : packoffset(c083.y);
  float cb0_084x : packoffset(c084.x);
};

SamplerState s0 : register(s0);

float4 main(
  noperspective float4 SV_Position : SV_Position,
  linear float4 COLOR : COLOR,
  linear float4 TEXCOORD : TEXCOORD,
  linear float4 TEXCOORD_1 : TEXCOORD1
) : SV_Target {
  float4 SV_Target;
  float _23 = ((((cb0_077x) - (TEXCOORD.z)) * 2.0f) + -1.0f) * ((cb0_073y) / (cb0_073x));
  float _25 = (((cb0_077y) - (TEXCOORD.w)) * 2.0f) + -1.0f;
  float _35 = (((((cb0_077x) - (TEXCOORD.x)) * (cb0_077w)) - _23) * (cb0_077z)) + _23;
  float _36 = ((((cb0_077y) - (TEXCOORD.y)) - _25) * (cb0_077z)) + _25;
  float _45 = exp2(((log2((sqrt(((_35 * _35) + (_36 * _36)))))) * (cb0_079z)));
  float _70 = exp2(((log2((((abs(((sin((((cb0_078w) * 3.1415927410125732f) * (((cb0_007x) * (cb0_079y)) + _45)))) * (sin((((cb0_078z) * 3.1415927410125732f) * (((cb0_007x) * (cb0_079x)) + _45))))))) * 0.5f) + 0.5f))) * (cb0_078x)));
  float _76 = _70 * (cb0_079w);
  float _82 = _70 * (cb0_078y);
  float4 _90 = t0.SampleBias(s0, float2(((_76 * (((TEXCOORD.x) * 0.5f) + -0.5f)) + (TEXCOORD.x)), ((_76 * (((TEXCOORD.y) * 0.5f) + -0.5f)) + (TEXCOORD.y))), -0.5f, int2(0, 0));
  float _101 = ((((cb0_080x) * _82) - (_90.x)) * _82) + (_90.x);
  float _102 = ((((cb0_080y) * _82) - (_90.y)) * _82) + (_90.y);
  float _103 = ((((cb0_080z) * _82) - (_90.z)) * _82) + (_90.z);
  float _171 = _101;
  float _172 = _102;
  float _173 = _103;
  float _174 = (_90.w);
  if ((((cb0_018x) > 0.0f))) {
    float _117 = exp2(((log2(_101)) * 0.4545454680919647f));
    float _118 = exp2(((log2(_102)) * 0.4545454680919647f));
    float _119 = exp2(((log2(_103)) * 0.4545454680919647f));
    float _120 = exp2(((log2(((_90.w) + 9.999999747378752e-05f))) * 0.4545454680919647f));
    _171 = (exp2(((log2((saturate(((cb0_006x) + (dot(float4((cb0_002x), (cb0_002y), (cb0_002z), (cb0_002w)), float4(_117, _118, _119, _120)))))))) * 2.200000047683716f)));
    _172 = (exp2(((log2((saturate(((cb0_006y) + (dot(float4((cb0_003x), (cb0_003y), (cb0_003z), (cb0_003w)), float4(_117, _118, _119, _120)))))))) * 2.200000047683716f)));
    _173 = (exp2(((log2((saturate(((cb0_006z) + (dot(float4((cb0_004x), (cb0_004y), (cb0_004z), (cb0_004w)), float4(_117, _118, _119, _120)))))))) * 2.200000047683716f)));
    _174 = (exp2(((log2((saturate(((cb0_006w) + (dot(float4((cb0_005x), (cb0_005y), (cb0_005z), (cb0_005w)), float4(_117, _118, _119, _120)))))))) * 2.200000047683716f)));
  }
  float _187 = (_174 * (COLOR.w)) * (cb0_000w);
  float _215 = (cb0_023x) * (((exp2(((log2((cb0_001x))) * 2.200000047683716f))) * _187) + ((_171 * (COLOR.x)) * (cb0_000x)));
  float _216 = (cb0_023y) * (((exp2(((log2((cb0_001y))) * 2.200000047683716f))) * _187) + ((_172 * (COLOR.y)) * (cb0_000y)));
  float _217 = (cb0_023z) * (((exp2(((log2((cb0_001z))) * 2.200000047683716f))) * _187) + ((_173 * (COLOR.z)) * (cb0_000z)));
  int _221 = int(221);
  float _223 = (((bool)((_221 == 1))) ? 1.0f : 0.0f);
  float _225 = (((bool)((_221 == 2))) ? 1.0f : 0.0f);
  float _227 = (((bool)((_221 == 3))) ? 1.0f : 0.0f);
  float _229 = (((bool)((_221 == 0))) ? 0.0f : 0.8999999761581421f);
  float _236 = (_229 * 0.1120000034570694f) + 1.0f;
  float _242 = (((((bool)((_229 > 0.0f))) ? 0.10999999940395355f : 0.0f)) - (_229 * 0.07500000298023224f)) + 0.5f;
  float _243 = _242 + (_236 * (_215 + -0.5f));
  float _244 = _242 + (_236 * (_216 + -0.5f));
  float _245 = _242 + (_236 * (_217 + -0.5f));
  float _250 = ((_243 * 17.882400512695312f) + (_244 * 43.5161018371582f)) + (_245 * 4.119349956512451f);
  float _255 = ((_243 * 3.4556500911712646f) + (_244 * 27.155399322509766f)) + (_245 * 3.867140054702759f);
  float _260 = ((_243 * 0.029956599697470665f) + (_244 * 0.1843090057373047f)) + (_245 * 1.4670900106430054f);
  float _267 = (((_255 * 2.023439884185791f) - (_260 * 2.52810001373291f)) * _223) + (_250 * (1.0f - _223));
  float _274 = (((_250 * 0.4942069947719574f) + (_260 * 1.248270034790039f)) * _225) + (_255 * (1.0f - _225));
  float _281 = (((_255 * 0.8011090159416199f) - (_250 * 0.3959130048751831f)) * _227) + (_260 * (1.0f - _227));
  float _294 = ((((_274 * 0.13050441443920135f) + _243) - (_267 * 0.08094444870948792f)) - (_281 * 0.11672106385231018f)) * 0.699999988079071f;
  float _314 = 1.0f - _229;
  SV_Target.x = (((((((min((max(_243, 0.0f)), 1.0f)) * _229) - _215) + (_243 * _314)) * (cb0_083y)) + _215) * (cb0_084x));
  SV_Target.y = (((((((min((max((((((_244 * 2.0f) - (_274 * 0.05401932820677757f)) + (_267 * 0.010248533450067043f)) + (_281 * 0.11361470818519592f)) + _294), 0.0f)), 1.0f)) * _229) - _216) + (_244 * _314)) * (cb0_083y)) + _216) * (cb0_084x));
  SV_Target.z = (((((((min((max((((((_267 * 0.0003652969317045063f) + (_245 * 2.0f)) + (_274 * 0.004121614620089531f)) - (_281 * 0.693511426448822f)) + _294), 0.0f)), 1.0f)) * _229) - _217) + (_245 * _314)) * (cb0_083y)) + _217) * (cb0_084x));
  SV_Target.w = (saturate(((_187 + 9.999999974752427e-07f) + (cb0_001w))));
  if (RENODX_UI_CLAMP == 0.f) {
    return (SV_Target);
  } else {
    return saturate(SV_Target);
  }
}
