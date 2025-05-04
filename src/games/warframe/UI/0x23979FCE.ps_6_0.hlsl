#include "../shared.h"

Texture2D<float4> t0 : register(t0);

TextureCube<float4> t1 : register(t3);

Texture2D<float4> t2 : register(t4);

Texture2D<float4> t3 : register(t6);

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
  float cb0_013x : packoffset(c013.x);
  float cb0_013y : packoffset(c013.y);
  float cb0_013z : packoffset(c013.z);
  float cb0_013w : packoffset(c013.w);
  float cb0_014x : packoffset(c014.x);
  float cb0_014y : packoffset(c014.y);
  float cb0_014z : packoffset(c014.z);
  float cb0_014w : packoffset(c014.w);
  float cb0_015x : packoffset(c015.x);
  float cb0_015y : packoffset(c015.y);
  float cb0_015z : packoffset(c015.z);
  float cb0_015w : packoffset(c015.w);
  float cb0_018x : packoffset(c018.x);
  float cb0_023x : packoffset(c023.x);
  float cb0_023y : packoffset(c023.y);
  float cb0_023z : packoffset(c023.z);
  float cb0_024x : packoffset(c024.x);
  float cb0_025x : packoffset(c025.x);
  float cb0_026x : packoffset(c026.x);
  float cb0_027x : packoffset(c027.x);
  float cb0_027y : packoffset(c027.y);
  float cb0_083x : packoffset(c083.x);
  float cb0_083y : packoffset(c083.y);
};

SamplerState s0 : register(s0);

SamplerState s1 : register(s3);

SamplerState s2 : register(s4);

SamplerState s3 : register(s6);

float4 main(
  noperspective float4 SV_Position : SV_Position,
  linear float4 COLOR : COLOR,
  linear float4 TEXCOORD : TEXCOORD,
  linear float4 TEXCOORD_1 : TEXCOORD1,
  linear float3 TEXCOORD_2 : TEXCOORD2,
  linear float3 TEXCOORD_3 : TEXCOORD3,
  linear float3 TEXCOORD_4 : TEXCOORD4,
  linear float3 TEXCOORD_5 : TEXCOORD5,
  linear float3 TEXCOORD_6 : TEXCOORD6
) : SV_Target {
  float4 SV_Target;
  float4 _29 = t0.SampleBias(s0, float2((TEXCOORD.x), (TEXCOORD.y)), -0.5f, int2(0, 0));
  float _101 = (_29.x);
  float _102 = (_29.y);
  float _103 = (_29.z);
  float _104 = (_29.w);
  if ((((cb0_018x) > 0.0f))) {
    float _47 = exp2(((log2((_29.x))) * 0.4545454680919647f));
    float _48 = exp2(((log2((_29.y))) * 0.4545454680919647f));
    float _49 = exp2(((log2((_29.z))) * 0.4545454680919647f));
    float _50 = exp2(((log2(((_29.w) + 9.999999747378752e-05f))) * 0.4545454680919647f));
    _101 = (exp2(((log2((saturate(((cb0_006x) + (dot(float4((cb0_002x), (cb0_002y), (cb0_002z), (cb0_002w)), float4(_47, _48, _49, _50)))))))) * 2.200000047683716f)));
    _102 = (exp2(((log2((saturate(((cb0_006y) + (dot(float4((cb0_003x), (cb0_003y), (cb0_003z), (cb0_003w)), float4(_47, _48, _49, _50)))))))) * 2.200000047683716f)));
    _103 = (exp2(((log2((saturate(((cb0_006z) + (dot(float4((cb0_004x), (cb0_004y), (cb0_004z), (cb0_004w)), float4(_47, _48, _49, _50)))))))) * 2.200000047683716f)));
    _104 = (exp2(((log2((saturate(((cb0_006w) + (dot(float4((cb0_005x), (cb0_005y), (cb0_005z), (cb0_005w)), float4(_47, _48, _49, _50)))))))) * 2.200000047683716f)));
  }
  float _117 = (_104 * (COLOR.w)) * (cb0_000w);
  float _134 = ((exp2(((log2((cb0_001x))) * 2.200000047683716f))) * _117) + ((_101 * (COLOR.x)) * (cb0_000x));
  float _135 = ((exp2(((log2((cb0_001y))) * 2.200000047683716f))) * _117) + ((_102 * (COLOR.y)) * (cb0_000y));
  float _136 = ((exp2(((log2((cb0_001z))) * 2.200000047683716f))) * _117) + ((_103 * (COLOR.z)) * (cb0_000z));
  float _140 = saturate(((_117 + 9.999999974752427e-07f) + (cb0_001w)));
  float _142 = rsqrt((dot(float3((TEXCOORD_2.x), (TEXCOORD_2.y), (TEXCOORD_2.z)), float3((TEXCOORD_2.x), (TEXCOORD_2.y), (TEXCOORD_2.z)))));
  float _143 = _142 * (TEXCOORD_2.x);
  float _144 = _142 * (TEXCOORD_2.y);
  float _145 = _142 * (TEXCOORD_2.z);
  float _149 = (cb0_013z) * (TEXCOORD.x);
  float _150 = (cb0_013w) * (TEXCOORD.y);
  float4 _151 = t2.SampleBias(s2, float2(_149, _150), 0.0f, int2(0, 0));
  float _158 = (((_151.w) * 2.0f) * (_151.x)) + -1.0f;
  float _159 = ((_151.y) * 2.0f) + -1.0f;
  float _165 = sqrt((saturate(((dot(float2(_158, _159), float2((-0.0f - _158), (-0.0f - _159)))) + 1.0f))));
  float _168 = (cb0_013x) * _158;
  float _169 = (cb0_013x) * _159;
  float _171 = (cb0_013y) * _158;
  float _172 = (cb0_013y) * _159;
  float _175 = mad(_165, (TEXCOORD_5.x), (mad(_169, (TEXCOORD_4.x), (_168 * (TEXCOORD_3.x)))));
  float _178 = mad(_165, (TEXCOORD_5.y), (mad(_169, (TEXCOORD_4.y), (_168 * (TEXCOORD_3.y)))));
  float _181 = mad(_165, (TEXCOORD_5.z), (mad(_169, (TEXCOORD_4.z), (_168 * (TEXCOORD_3.z)))));
  float _183 = rsqrt((dot(float3(_175, _178, _181), float3(_175, _178, _181))));
  float _184 = _183 * _175;
  float _185 = _183 * _178;
  float _186 = _183 * _181;
  float _189 = mad(_165, (TEXCOORD_5.x), (mad(_172, (TEXCOORD_4.x), (_171 * (TEXCOORD_3.x)))));
  float _192 = mad(_165, (TEXCOORD_5.y), (mad(_172, (TEXCOORD_4.y), (_171 * (TEXCOORD_3.y)))));
  float _195 = mad(_165, (TEXCOORD_5.z), (mad(_172, (TEXCOORD_4.z), (_171 * (TEXCOORD_3.z)))));
  float _197 = rsqrt((dot(float3(_189, _192, _195), float3(_189, _192, _195))));
  float _198 = _197 * _189;
  float _199 = _197 * _192;
  float _200 = _197 * _195;
  float _202 = (dot(float3(_184, _185, _186), float3(_143, _144, _145))) * 2.0f;
  float _219 = min((max((((log2((saturate(((1.0f - (dot(float3(_134, _135, _136), float3(0.3330000042915344f, 0.3330000042915344f, 0.3330000042915344f)))) + (cb0_015w)))))) * 1.2000000476837158f) + 5.0f), 0.0f)), 5.0f);
  float4 _223 = t1.SampleLevel(s1, float3((-0.0f - (_184 - (_202 * _143))), (-0.0f - (_185 - (_202 * _144))), (-0.0f - (_186 - (_202 * _145)))), _219);
  float _232 = (cb0_014x) * (_223.x);
  float _233 = (cb0_014y) * (_223.x);
  float _234 = (cb0_014z) * (_223.x);
  float _245 = (dot(float3(_198, _199, _200), float3(_143, _144, _145))) * 2.0f;
  float4 _255 = t1.SampleLevel(s1, float3((-0.0f - (_198 - (_245 * _143))), (-0.0f - (_199 - (_245 * _144))), (-0.0f - (_200 - (_245 * _145)))), _219);
  float _259 = (_255.x) * (cb0_014x);
  float _260 = (_255.x) * (cb0_014y);
  float _261 = (_255.x) * (cb0_014z);
  float _275 = (cb0_015z) * _134;
  float _276 = (cb0_015z) * _135;
  float _277 = (cb0_015z) * _136;
  float _291 = (_140 * 0.125f) * (((float4)(t3.Sample(s3, float2(_149, _150)))).x);
  float _326 = (cb0_023x) * ((_291 * ((((cb0_015x) * ((((_223.x) - _232) * (cb0_014w)) + _232)) * _275) + ((cb0_015y) * ((((_255.x) - _259) * (cb0_014w)) + _259)))) + _275);
  float _327 = (cb0_023y) * ((_291 * ((((cb0_015x) * ((((_223.y) - _233) * (cb0_014w)) + _233)) * _276) + ((cb0_015y) * ((((_255.y) - _260) * (cb0_014w)) + _260)))) + _276);
  float _328 = (cb0_023z) * ((_291 * ((((cb0_015x) * ((((_223.z) - _234) * (cb0_014w)) + _234)) * _277) + ((cb0_015y) * ((((_255.z) - _261) * (cb0_014w)) + _261)))) + _277);
  int _332 = int(332);
  float _334 = (((bool)((_332 == 1))) ? 1.0f : 0.0f);
  float _336 = (((bool)((_332 == 2))) ? 1.0f : 0.0f);
  float _338 = (((bool)((_332 == 3))) ? 1.0f : 0.0f);
  float _340 = (((bool)((_332 == 0))) ? 0.0f : 0.8999999761581421f);
  float _347 = (_340 * 0.1120000034570694f) + 1.0f;
  float _353 = (((((bool)((_340 > 0.0f))) ? 0.10999999940395355f : 0.0f)) - (_340 * 0.07500000298023224f)) + 0.5f;
  float _354 = _353 + (_347 * (_326 + -0.5f));
  float _355 = _353 + (_347 * (_327 + -0.5f));
  float _356 = _353 + (_347 * (_328 + -0.5f));
  float _361 = ((_354 * 17.882400512695312f) + (_355 * 43.5161018371582f)) + (_356 * 4.119349956512451f);
  float _366 = ((_354 * 3.4556500911712646f) + (_355 * 27.155399322509766f)) + (_356 * 3.867140054702759f);
  float _371 = ((_354 * 0.029956599697470665f) + (_355 * 0.1843090057373047f)) + (_356 * 1.4670900106430054f);
  float _378 = (((_366 * 2.023439884185791f) - (_371 * 2.52810001373291f)) * _334) + (_361 * (1.0f - _334));
  float _385 = (((_361 * 0.4942069947719574f) + (_371 * 1.248270034790039f)) * _336) + (_366 * (1.0f - _336));
  float _392 = (((_366 * 0.8011090159416199f) - (_361 * 0.3959130048751831f)) * _338) + (_371 * (1.0f - _338));
  float _405 = ((((_385 * 0.13050441443920135f) + _354) - (_378 * 0.08094444870948792f)) - (_392 * 0.11672106385231018f)) * 0.699999988079071f;
  float _425 = 1.0f - _340;
  SV_Target.x = ((((((min((max(_354, 0.0f)), 1.0f)) * _340) - _326) + (_354 * _425)) * (cb0_083y)) + _326);
  SV_Target.y = ((((((min((max((((((_355 * 2.0f) - (_385 * 0.05401932820677757f)) + (_378 * 0.010248533450067043f)) + (_392 * 0.11361470818519592f)) + _405), 0.0f)), 1.0f)) * _340) - _327) + (_355 * _425)) * (cb0_083y)) + _327);
  SV_Target.z = ((((((min((max((((((_378 * 0.0003652969317045063f) + (_356 * 2.0f)) + (_385 * 0.004121614620089531f)) - (_392 * 0.693511426448822f)) + _405), 0.0f)), 1.0f)) * _340) - _328) + (_356 * _425)) * (cb0_083y)) + _328);
  SV_Target.w = (((cb0_027x) - ((cb0_027y) * (saturate(((((saturate(((cb0_025x) * 0.5f))) - (abs((((1.0f - (TEXCOORD.w)) * 0.5f) - (cb0_024x))))) + (cb0_026x)) / (cb0_026x)))))) * _140);
  if (RENODX_UI_CLAMP == 0.f) {
    return (SV_Target);
  } else {
    return saturate(SV_Target);
  }
}
