#include "../../common.hlsli"
struct SExposureData {
  float SExposureData_000;
  float SExposureData_004;
  float SExposureData_008;
  float SExposureData_012;
  float SExposureData_016;
  float SExposureData_020;
};

StructuredBuffer<SExposureData> t0 : register(t0);

Texture2D<float4> t1 : register(t1);

Texture2D<float> t2 : register(t2);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t5 : register(t5);

Texture3D<float4> t6 : register(t6);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t8 : register(t8);

Texture3D<float2> t9 : register(t9);

Texture2D<float4> t10 : register(t10);

cbuffer cb0 : register(b0) {
  float cb0_028x : packoffset(c028.x);
  float cb0_028z : packoffset(c028.z);
};

cbuffer cb1 : register(b1) {
  float cb1_018y : packoffset(c018.y);
  float cb1_018z : packoffset(c018.z);
  uint cb1_018w : packoffset(c018.w);
};

cbuffer cb2 : register(b2) {
  float cb2_000x : packoffset(c000.x);
  float cb2_000y : packoffset(c000.y);
  float cb2_000z : packoffset(c000.z);
  float cb2_009x : packoffset(c009.x);
  float cb2_009y : packoffset(c009.y);
  float cb2_009z : packoffset(c009.z);
  float cb2_010x : packoffset(c010.x);
  float cb2_010y : packoffset(c010.y);
  float cb2_010z : packoffset(c010.z);
  float cb2_011x : packoffset(c011.x);
  float cb2_011y : packoffset(c011.y);
  float cb2_011z : packoffset(c011.z);
  float cb2_011w : packoffset(c011.w);
  float cb2_012x : packoffset(c012.x);
  float cb2_012y : packoffset(c012.y);
  float cb2_012z : packoffset(c012.z);
  float cb2_012w : packoffset(c012.w);
  float cb2_013x : packoffset(c013.x);
  float cb2_013y : packoffset(c013.y);
  float cb2_013z : packoffset(c013.z);
  float cb2_013w : packoffset(c013.w);
  float cb2_014x : packoffset(c014.x);
  float cb2_015x : packoffset(c015.x);
  float cb2_015y : packoffset(c015.y);
  float cb2_015z : packoffset(c015.z);
  float cb2_015w : packoffset(c015.w);
  float cb2_016x : packoffset(c016.x);
  float cb2_016y : packoffset(c016.y);
  float cb2_016z : packoffset(c016.z);
  float cb2_016w : packoffset(c016.w);
  float cb2_017x : packoffset(c017.x);
  float cb2_017y : packoffset(c017.y);
  float cb2_017z : packoffset(c017.z);
  float cb2_017w : packoffset(c017.w);
  float cb2_018x : packoffset(c018.x);
  float cb2_018y : packoffset(c018.y);
  uint cb2_019x : packoffset(c019.x);
  uint cb2_019y : packoffset(c019.y);
  uint cb2_019z : packoffset(c019.z);
  uint cb2_019w : packoffset(c019.w);
  float cb2_020x : packoffset(c020.x);
  float cb2_020y : packoffset(c020.y);
  float cb2_020z : packoffset(c020.z);
  float cb2_020w : packoffset(c020.w);
  float cb2_021x : packoffset(c021.x);
  float cb2_021y : packoffset(c021.y);
  float cb2_021z : packoffset(c021.z);
  float cb2_021w : packoffset(c021.w);
  float cb2_022x : packoffset(c022.x);
  float cb2_023x : packoffset(c023.x);
  float cb2_023y : packoffset(c023.y);
  float cb2_023z : packoffset(c023.z);
  float cb2_023w : packoffset(c023.w);
  float cb2_024x : packoffset(c024.x);
  float cb2_024y : packoffset(c024.y);
  float cb2_024z : packoffset(c024.z);
  float cb2_024w : packoffset(c024.w);
  float cb2_025x : packoffset(c025.x);
  float cb2_025y : packoffset(c025.y);
  float cb2_025z : packoffset(c025.z);
  float cb2_025w : packoffset(c025.w);
  float cb2_026x : packoffset(c026.x);
  float cb2_026z : packoffset(c026.z);
  float cb2_026w : packoffset(c026.w);
  float cb2_027x : packoffset(c027.x);
  float cb2_027y : packoffset(c027.y);
  float cb2_027z : packoffset(c027.z);
  float cb2_027w : packoffset(c027.w);
  uint cb2_069y : packoffset(c069.y);
  uint cb2_069z : packoffset(c069.z);
  uint cb2_070x : packoffset(c070.x);
  uint cb2_070y : packoffset(c070.y);
  uint cb2_070z : packoffset(c070.z);
  uint cb2_070w : packoffset(c070.w);
  uint cb2_071x : packoffset(c071.x);
  uint cb2_071y : packoffset(c071.y);
  uint cb2_071z : packoffset(c071.z);
  uint cb2_071w : packoffset(c071.w);
  uint cb2_072x : packoffset(c072.x);
  uint cb2_072y : packoffset(c072.y);
  uint cb2_072z : packoffset(c072.z);
  uint cb2_072w : packoffset(c072.w);
  uint cb2_073x : packoffset(c073.x);
  uint cb2_073y : packoffset(c073.y);
  uint cb2_073z : packoffset(c073.z);
  uint cb2_073w : packoffset(c073.w);
  uint cb2_074x : packoffset(c074.x);
  uint cb2_074y : packoffset(c074.y);
  uint cb2_074z : packoffset(c074.z);
  uint cb2_074w : packoffset(c074.w);
  uint cb2_075x : packoffset(c075.x);
  uint cb2_075y : packoffset(c075.y);
  uint cb2_075z : packoffset(c075.z);
  uint cb2_075w : packoffset(c075.w);
  uint cb2_076x : packoffset(c076.x);
  uint cb2_076y : packoffset(c076.y);
  uint cb2_076z : packoffset(c076.z);
  uint cb2_076w : packoffset(c076.w);
  uint cb2_077x : packoffset(c077.x);
  uint cb2_077y : packoffset(c077.y);
  uint cb2_077z : packoffset(c077.z);
  uint cb2_077w : packoffset(c077.w);
  uint cb2_078x : packoffset(c078.x);
  uint cb2_078y : packoffset(c078.y);
  uint cb2_078z : packoffset(c078.z);
  uint cb2_078w : packoffset(c078.w);
  uint cb2_079x : packoffset(c079.x);
  uint cb2_079y : packoffset(c079.y);
  uint cb2_079z : packoffset(c079.z);
  uint cb2_094x : packoffset(c094.x);
  uint cb2_094y : packoffset(c094.y);
  uint cb2_094z : packoffset(c094.z);
  uint cb2_094w : packoffset(c094.w);
  uint cb2_095x : packoffset(c095.x);
  float cb2_095y : packoffset(c095.y);
};

SamplerState s0_space2 : register(s0, space2);

SamplerState s2_space2 : register(s2, space2);

SamplerState s4_space2 : register(s4, space2);

struct OutputSignature {
  float4 SV_Target : SV_Target;
  float4 SV_Target_1 : SV_Target1;
};

OutputSignature main(
  linear float2 TEXCOORD0_centroid : TEXCOORD0_centroid,
  noperspective float4 SV_Position : SV_Position,
  nointerpolation uint SV_IsFrontFace : SV_IsFrontFace
) {
  float4 SV_Target;
  float4 SV_Target_1;
  float _25 = t2.SampleLevel(s4_space2, float2(TEXCOORD0_centroid.x, TEXCOORD0_centroid.y), 0.0f);
  float4 _27 = t7.SampleLevel(s2_space2, float2(TEXCOORD0_centroid.x, TEXCOORD0_centroid.y), 0.0f);
  float _31 = _27.x * 6.283199787139893f;
  float _32 = cos(_31);
  float _33 = sin(_31);
  float _34 = _32 * _27.z;
  float _35 = _33 * _27.z;
  float _36 = _34 + TEXCOORD0_centroid.x;
  float _37 = _35 + TEXCOORD0_centroid.y;
  float _38 = _36 * 10.0f;
  float _39 = 10.0f - _38;
  float _40 = min(_38, _39);
  float _41 = saturate(_40);
  float _42 = _41 * _34;
  float _43 = _37 * 10.0f;
  float _44 = 10.0f - _43;
  float _45 = min(_43, _44);
  float _46 = saturate(_45);
  float _47 = _46 * _35;
  float _48 = _42 + TEXCOORD0_centroid.x;
  float _49 = _47 + TEXCOORD0_centroid.y;
  float4 _50 = t7.SampleLevel(s2_space2, float2(_48, _49), 0.0f);
  float _52 = _50.w * _42;
  float _53 = _50.w * _47;
  float _54 = 1.0f - _27.y;
  float _55 = saturate(_54);
  float _56 = _52 * _55;
  float _57 = _53 * _55;
  float _61 = cb2_015x * TEXCOORD0_centroid.x;
  float _62 = cb2_015y * TEXCOORD0_centroid.y;
  float _65 = _61 + cb2_015z;
  float _66 = _62 + cb2_015w;
  float4 _67 = t8.SampleLevel(s0_space2, float2(_65, _66), 0.0f);
  float _71 = saturate(_67.x);
  float _72 = saturate(_67.z);
  float _75 = cb2_026x * _72;
  float _76 = _71 * 6.283199787139893f;
  float _77 = cos(_76);
  float _78 = sin(_76);
  float _79 = _75 * _77;
  float _80 = _78 * _75;
  float _81 = 1.0f - _67.y;
  float _82 = saturate(_81);
  float _83 = _79 * _82;
  float _84 = _80 * _82;
  float _85 = _56 + TEXCOORD0_centroid.x;
  float _86 = _85 + _83;
  float _87 = _57 + TEXCOORD0_centroid.y;
  float _88 = _87 + _84;
  float4 _89 = t7.SampleLevel(s2_space2, float2(_86, _88), 0.0f);
  bool _91 = (_89.y > 0.0f);
  float _92 = select(_91, TEXCOORD0_centroid.x, _86);
  float _93 = select(_91, TEXCOORD0_centroid.y, _88);
  float4 _94 = t1.SampleLevel(s4_space2, float2(_92, _93), 0.0f);
  float _98 = max(_94.x, 0.0f);
  float _99 = max(_94.y, 0.0f);
  float _100 = max(_94.z, 0.0f);
  float _101 = min(_98, 65000.0f);
  float _102 = min(_99, 65000.0f);
  float _103 = min(_100, 65000.0f);
  float4 _104 = t4.SampleLevel(s2_space2, float2(_92, _93), 0.0f);
  float _109 = max(_104.x, 0.0f);
  float _110 = max(_104.y, 0.0f);
  float _111 = max(_104.z, 0.0f);
  float _112 = max(_104.w, 0.0f);
  float _113 = min(_109, 5000.0f);
  float _114 = min(_110, 5000.0f);
  float _115 = min(_111, 5000.0f);
  float _116 = min(_112, 5000.0f);
  float _119 = _25.x * cb0_028z;
  float _120 = _119 + cb0_028x;
  float _121 = cb2_027w / _120;
  float _122 = 1.0f - _121;
  float _123 = abs(_122);
  float _125 = cb2_027y * _123;
  float _127 = _125 - cb2_027z;
  float _128 = saturate(_127);
  float _129 = max(_128, _116);
  float _130 = saturate(_129);
  float _134 = cb2_013x * _92;
  float _135 = cb2_013y * _93;
  float _138 = _134 + cb2_013z;
  float _139 = _135 + cb2_013w;
  float _142 = dot(float2(_138, _139), float2(_138, _139));
  float _143 = abs(_142);
  float _144 = log2(_143);
  float _145 = _144 * cb2_014x;
  float _146 = exp2(_145);
  float _147 = saturate(_146);
  float _151 = cb2_011x * _92;
  float _152 = cb2_011y * _93;
  float _155 = _151 + cb2_011z;
  float _156 = _152 + cb2_011w;
  float _157 = _155 * _147;
  float _158 = _156 * _147;
  float _159 = _157 + _92;
  float _160 = _158 + _93;
  float _164 = cb2_012x * _92;
  float _165 = cb2_012y * _93;
  float _168 = _164 + cb2_012z;
  float _169 = _165 + cb2_012w;
  float _170 = _168 * _147;
  float _171 = _169 * _147;
  float _172 = _170 + _92;
  float _173 = _171 + _93;
  float4 _174 = t1.SampleLevel(s2_space2, float2(_159, _160), 0.0f);
  float _178 = max(_174.x, 0.0f);
  float _179 = max(_174.y, 0.0f);
  float _180 = max(_174.z, 0.0f);
  float _181 = min(_178, 65000.0f);
  float _182 = min(_179, 65000.0f);
  float _183 = min(_180, 65000.0f);
  float4 _184 = t1.SampleLevel(s2_space2, float2(_172, _173), 0.0f);
  float _188 = max(_184.x, 0.0f);
  float _189 = max(_184.y, 0.0f);
  float _190 = max(_184.z, 0.0f);
  float _191 = min(_188, 65000.0f);
  float _192 = min(_189, 65000.0f);
  float _193 = min(_190, 65000.0f);
  float4 _194 = t4.SampleLevel(s2_space2, float2(_159, _160), 0.0f);
  float _198 = max(_194.x, 0.0f);
  float _199 = max(_194.y, 0.0f);
  float _200 = max(_194.z, 0.0f);
  float _201 = min(_198, 5000.0f);
  float _202 = min(_199, 5000.0f);
  float _203 = min(_200, 5000.0f);
  float4 _204 = t4.SampleLevel(s2_space2, float2(_172, _173), 0.0f);
  float _208 = max(_204.x, 0.0f);
  float _209 = max(_204.y, 0.0f);
  float _210 = max(_204.z, 0.0f);
  float _211 = min(_208, 5000.0f);
  float _212 = min(_209, 5000.0f);
  float _213 = min(_210, 5000.0f);
  float _218 = 1.0f - cb2_009x;
  float _219 = 1.0f - cb2_009y;
  float _220 = 1.0f - cb2_009z;
  float _225 = _218 - cb2_010x;
  float _226 = _219 - cb2_010y;
  float _227 = _220 - cb2_010z;
  float _228 = saturate(_225);
  float _229 = saturate(_226);
  float _230 = saturate(_227);
  float _231 = _228 * _101;
  float _232 = _229 * _102;
  float _233 = _230 * _103;
  float _234 = cb2_009x * _181;
  float _235 = cb2_009y * _182;
  float _236 = cb2_009z * _183;
  float _237 = _234 + _231;
  float _238 = _235 + _232;
  float _239 = _236 + _233;
  float _240 = cb2_010x * _191;
  float _241 = cb2_010y * _192;
  float _242 = cb2_010z * _193;
  float _243 = _237 + _240;
  float _244 = _238 + _241;
  float _245 = _239 + _242;
  float _246 = _228 * _113;
  float _247 = _229 * _114;
  float _248 = _230 * _115;
  float _249 = cb2_009x * _201;
  float _250 = cb2_009y * _202;
  float _251 = cb2_009z * _203;
  float _252 = cb2_010x * _211;
  float _253 = cb2_010y * _212;
  float _254 = cb2_010z * _213;
  float4 _255 = t5.SampleLevel(s2_space2, float2(TEXCOORD0_centroid.x, TEXCOORD0_centroid.y), 0.0f);
  float _259 = _246 - _243;
  float _260 = _259 + _249;
  float _261 = _260 + _252;
  float _262 = _247 - _244;
  float _263 = _262 + _250;
  float _264 = _263 + _253;
  float _265 = _248 - _245;
  float _266 = _265 + _251;
  float _267 = _266 + _254;
  float _268 = _261 * _130;
  float _269 = _264 * _130;
  float _270 = _267 * _130;
  float _271 = _268 + _243;
  float _272 = _269 + _244;
  float _273 = _270 + _245;
  float _274 = dot(float3(_271, _272, _273), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _278 = t0[0].SExposureData_020;
  float _280 = t0[0].SExposureData_004;
  float _282 = cb2_018x * 0.5f;
  float _283 = _282 * cb2_018y;
  float _284 = _280.x - _283;
  float _285 = cb2_018y * cb2_018x;
  float _286 = 1.0f / _285;
  float _287 = _284 * _286;
  float _288 = _274 / _278.x;
  float _289 = _288 * 5464.01611328125f;
  float _290 = _289 + 9.99999993922529e-09f;
  float _291 = log2(_290);
  float _292 = _291 - _284;
  float _293 = _292 * _286;
  float _294 = saturate(_293);
  float2 _295 = t9.SampleLevel(s2_space2, float3(TEXCOORD0_centroid.x, TEXCOORD0_centroid.y, _294), 0.0f);
  float _298 = max(_295.y, 1.0000000116860974e-07f);
  float _299 = _295.x / _298;
  float _300 = _299 + _287;
  float _301 = _300 / _286;
  float _302 = _301 - _280.x;
  float _303 = -0.0f - _302;
  float _305 = _303 - cb2_027x;
  float _306 = max(0.0f, _305);
  float _308 = cb2_026z * _306;
  float _309 = _302 - cb2_027x;
  float _310 = max(0.0f, _309);
  float _312 = cb2_026w * _310;
  bool _313 = (_302 < 0.0f);
  float _314 = select(_313, _308, _312);
  float _315 = exp2(_314);
  float _316 = _315 * _271;
  float _317 = _315 * _272;
  float _318 = _315 * _273;
  float _323 = cb2_024y * _255.x;
  float _324 = cb2_024z * _255.y;
  float _325 = cb2_024w * _255.z;
  float _326 = _323 + _316;
  float _327 = _324 + _317;
  float _328 = _325 + _318;
  float _333 = _326 * cb2_025x;
  float _334 = _327 * cb2_025y;
  float _335 = _328 * cb2_025z;
  float _336 = dot(float3(_333, _334, _335), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _337 = t0[0].SExposureData_012;
  float _339 = _336 * 5464.01611328125f;
  float _340 = _339 * _337.x;
  float _341 = _340 + 9.99999993922529e-09f;
  float _342 = log2(_341);
  float _343 = _342 + 16.929765701293945f;
  float _344 = _343 * 0.05734497308731079f;
  float _345 = saturate(_344);
  float _346 = _345 * _345;
  float _347 = _345 * 2.0f;
  float _348 = 3.0f - _347;
  float _349 = _346 * _348;
  float _350 = _334 * 0.8450999855995178f;
  float _351 = _335 * 0.14589999616146088f;
  float _352 = _350 + _351;
  float _353 = _352 * 2.4890189170837402f;
  float _354 = _352 * 0.3754962384700775f;
  float _355 = _352 * 2.811495304107666f;
  float _356 = _352 * 5.519708156585693f;
  float _357 = _336 - _353;
  float _358 = _349 * _357;
  float _359 = _358 + _353;
  float _360 = _349 * 0.5f;
  float _361 = _360 + 0.5f;
  float _362 = _361 * _357;
  float _363 = _362 + _353;
  float _364 = _333 - _354;
  float _365 = _334 - _355;
  float _366 = _335 - _356;
  float _367 = _361 * _364;
  float _368 = _361 * _365;
  float _369 = _361 * _366;
  float _370 = _367 + _354;
  float _371 = _368 + _355;
  float _372 = _369 + _356;
  float _373 = 1.0f / _363;
  float _374 = _359 * _373;
  float _375 = _374 * _370;
  float _376 = _374 * _371;
  float _377 = _374 * _372;
  float _381 = cb2_020x * TEXCOORD0_centroid.x;
  float _382 = cb2_020y * TEXCOORD0_centroid.y;
  float _385 = _381 + cb2_020z;
  float _386 = _382 + cb2_020w;
  float _389 = dot(float2(_385, _386), float2(_385, _386));
  float _390 = 1.0f - _389;
  float _391 = saturate(_390);
  float _392 = log2(_391);
  float _393 = _392 * cb2_021w;
  float _394 = exp2(_393);
  float _398 = _375 - cb2_021x;
  float _399 = _376 - cb2_021y;
  float _400 = _377 - cb2_021z;
  float _401 = _398 * _394;
  float _402 = _399 * _394;
  float _403 = _400 * _394;
  float _404 = _401 + cb2_021x;
  float _405 = _402 + cb2_021y;
  float _406 = _403 + cb2_021z;
  float _407 = t0[0].SExposureData_000;
  float _409 = max(_278.x, 0.0010000000474974513f);
  float _410 = 1.0f / _409;
  float _411 = _410 * _407.x;
  bool _414 = ((uint)(cb2_069y) == 0);
  float _420;
  float _421;
  float _422;
  float _476;
  float _477;
  float _478;
  float _509;
  float _510;
  float _511;
  float _661;
  float _698;
  float _699;
  float _700;
  float _729;
  float _730;
  float _731;
  float _812;
  float _813;
  float _814;
  float _820;
  float _821;
  float _822;
  float _836;
  float _837;
  float _838;
  float _863;
  float _875;
  float _903;
  float _915;
  float _927;
  float _928;
  float _929;
  float _956;
  float _957;
  float _958;
  if (!_414) {
    float _416 = _411 * _404;
    float _417 = _411 * _405;
    float _418 = _411 * _406;
    _420 = _416;
    _421 = _417;
    _422 = _418;
  } else {
    _420 = _404;
    _421 = _405;
    _422 = _406;
  }
  float _423 = _420 * 0.6130970120429993f;
  float _424 = mad(0.33952298760414124f, _421, _423);
  float _425 = mad(0.04737899824976921f, _422, _424);
  float _426 = _420 * 0.07019399851560593f;
  float _427 = mad(0.9163540005683899f, _421, _426);
  float _428 = mad(0.013451999984681606f, _422, _427);
  float _429 = _420 * 0.02061600051820278f;
  float _430 = mad(0.10956999659538269f, _421, _429);
  float _431 = mad(0.8698149919509888f, _422, _430);
  float _432 = log2(_425);
  float _433 = log2(_428);
  float _434 = log2(_431);
  float _435 = _432 * 0.04211956635117531f;
  float _436 = _433 * 0.04211956635117531f;
  float _437 = _434 * 0.04211956635117531f;
  float _438 = _435 + 0.6252607107162476f;
  float _439 = _436 + 0.6252607107162476f;
  float _440 = _437 + 0.6252607107162476f;
  float4 _441 = t6.SampleLevel(s2_space2, float3(_438, _439, _440), 0.0f);
  bool _447 = ((int)(uint)(cb1_018w) > (int)-1);
  if (_447 && RENODX_TONE_MAP_TYPE == 0.f) {
    float _451 = cb2_017x * _441.x;
    float _452 = cb2_017x * _441.y;
    float _453 = cb2_017x * _441.z;
    float _455 = _451 + cb2_017y;
    float _456 = _452 + cb2_017y;
    float _457 = _453 + cb2_017y;
    float _458 = exp2(_455);
    float _459 = exp2(_456);
    float _460 = exp2(_457);
    float _461 = _458 + 1.0f;
    float _462 = _459 + 1.0f;
    float _463 = _460 + 1.0f;
    float _464 = 1.0f / _461;
    float _465 = 1.0f / _462;
    float _466 = 1.0f / _463;
    float _468 = cb2_017z * _464;
    float _469 = cb2_017z * _465;
    float _470 = cb2_017z * _466;
    float _472 = _468 + cb2_017w;
    float _473 = _469 + cb2_017w;
    float _474 = _470 + cb2_017w;
    _476 = _472;
    _477 = _473;
    _478 = _474;
  } else {
    _476 = _441.x;
    _477 = _441.y;
    _478 = _441.z;
  }
  float _479 = _476 * 23.0f;
  float _480 = _479 + -14.473931312561035f;
  float _481 = exp2(_480);
  float _482 = _477 * 23.0f;
  float _483 = _482 + -14.473931312561035f;
  float _484 = exp2(_483);
  float _485 = _478 * 23.0f;
  float _486 = _485 + -14.473931312561035f;
  float _487 = exp2(_486);
  float _494 = cb2_016x - _481;
  float _495 = cb2_016y - _484;
  float _496 = cb2_016z - _487;
  float _497 = _494 * cb2_016w;
  float _498 = _495 * cb2_016w;
  float _499 = _496 * cb2_016w;
  float _500 = _497 + _481;
  float _501 = _498 + _484;
  float _502 = _499 + _487;
  if (_447 && RENODX_TONE_MAP_TYPE == 0.f) {
    float _505 = cb2_024x * _500;
    float _506 = cb2_024x * _501;
    float _507 = cb2_024x * _502;
    _509 = _505;
    _510 = _506;
    _511 = _507;
  } else {
    _509 = _500;
    _510 = _501;
    _511 = _502;
  }
  float _514 = _509 * 0.9708889722824097f;
  float _515 = mad(0.026962999254465103f, _510, _514);
  float _516 = mad(0.002148000057786703f, _511, _515);
  float _517 = _509 * 0.01088900025933981f;
  float _518 = mad(0.9869629740715027f, _510, _517);
  float _519 = mad(0.002148000057786703f, _511, _518);
  float _520 = mad(0.026962999254465103f, _510, _517);
  float _521 = mad(0.9621480107307434f, _511, _520);
  float _522 = max(_516, 0.0f);
  float _523 = max(_519, 0.0f);
  float _524 = max(_521, 0.0f);
  float _525 = min(_522, cb2_095y);
  float _526 = min(_523, cb2_095y);
  float _527 = min(_524, cb2_095y);
  bool _530 = ((uint)(cb2_095x) == 0);
  bool _533 = ((uint)(cb2_094w) == 0);
  bool _535 = ((uint)(cb2_094z) == 0);
  bool _537 = ((uint)(cb2_094y) != 0);
  bool _539 = ((uint)(cb2_094x) == 0);
  bool _541 = ((uint)(cb2_069z) != 0);
  float _588 = asfloat((uint)(cb2_075y));
  float _589 = asfloat((uint)(cb2_075z));
  float _590 = asfloat((uint)(cb2_075w));
  float _591 = asfloat((uint)(cb2_074z));
  float _592 = asfloat((uint)(cb2_074w));
  float _593 = asfloat((uint)(cb2_075x));
  float _594 = asfloat((uint)(cb2_073w));
  float _595 = asfloat((uint)(cb2_074x));
  float _596 = asfloat((uint)(cb2_074y));
  float _597 = asfloat((uint)(cb2_077x));
  float _598 = asfloat((uint)(cb2_077y));
  float _599 = asfloat((uint)(cb2_079x));
  float _600 = asfloat((uint)(cb2_079y));
  float _601 = asfloat((uint)(cb2_079z));
  float _602 = asfloat((uint)(cb2_078y));
  float _603 = asfloat((uint)(cb2_078z));
  float _604 = asfloat((uint)(cb2_078w));
  float _605 = asfloat((uint)(cb2_077z));
  float _606 = asfloat((uint)(cb2_077w));
  float _607 = asfloat((uint)(cb2_078x));
  float _608 = asfloat((uint)(cb2_072y));
  float _609 = asfloat((uint)(cb2_072z));
  float _610 = asfloat((uint)(cb2_072w));
  float _611 = asfloat((uint)(cb2_071x));
  float _612 = asfloat((uint)(cb2_071y));
  float _613 = asfloat((uint)(cb2_076x));
  float _614 = asfloat((uint)(cb2_070w));
  float _615 = asfloat((uint)(cb2_070x));
  float _616 = asfloat((uint)(cb2_070y));
  float _617 = asfloat((uint)(cb2_070z));
  float _618 = asfloat((uint)(cb2_073x));
  float _619 = asfloat((uint)(cb2_073y));
  float _620 = asfloat((uint)(cb2_073z));
  float _621 = asfloat((uint)(cb2_071z));
  float _622 = asfloat((uint)(cb2_071w));
  float _623 = asfloat((uint)(cb2_072x));
  float _624 = max(_526, _527);
  float _625 = max(_525, _624);
  float _626 = 1.0f / _625;
  float _627 = _626 * _525;
  float _628 = _626 * _526;
  float _629 = _626 * _527;
  float _630 = abs(_627);
  float _631 = log2(_630);
  float _632 = _631 * _615;
  float _633 = exp2(_632);
  float _634 = abs(_628);
  float _635 = log2(_634);
  float _636 = _635 * _616;
  float _637 = exp2(_636);
  float _638 = abs(_629);
  float _639 = log2(_638);
  float _640 = _639 * _617;
  float _641 = exp2(_640);
  if (_537) {
    float _644 = asfloat((uint)(cb2_076w));
    float _646 = asfloat((uint)(cb2_076z));
    float _648 = asfloat((uint)(cb2_076y));
    float _649 = _646 * _526;
    float _650 = _648 * _525;
    float _651 = _644 * _527;
    float _652 = _650 + _651;
    float _653 = _652 + _649;
    _661 = _653;
  } else {
    float _655 = _622 * _526;
    float _656 = _621 * _525;
    float _657 = _623 * _527;
    float _658 = _655 + _656;
    float _659 = _658 + _657;
    _661 = _659;
  }
  float _662 = abs(_661);
  float _663 = log2(_662);
  float _664 = _663 * _614;
  float _665 = exp2(_664);
  float _666 = log2(_665);
  float _667 = _666 * _613;
  float _668 = exp2(_667);
  float _669 = select(_541, _668, _665);
  float _670 = _669 * _611;
  float _671 = _670 + _612;
  float _672 = 1.0f / _671;
  float _673 = _672 * _665;
  if (_537) {
    if (!_539) {
      float _676 = _633 * _605;
      float _677 = _637 * _606;
      float _678 = _641 * _607;
      float _679 = _677 + _676;
      float _680 = _679 + _678;
      float _681 = _637 * _603;
      float _682 = _633 * _602;
      float _683 = _641 * _604;
      float _684 = _681 + _682;
      float _685 = _684 + _683;
      float _686 = _641 * _601;
      float _687 = _637 * _600;
      float _688 = _633 * _599;
      float _689 = _687 + _688;
      float _690 = _689 + _686;
      float _691 = max(_685, _690);
      float _692 = max(_680, _691);
      float _693 = 1.0f / _692;
      float _694 = _693 * _680;
      float _695 = _693 * _685;
      float _696 = _693 * _690;
      _698 = _694;
      _699 = _695;
      _700 = _696;
    } else {
      _698 = _633;
      _699 = _637;
      _700 = _641;
    }
    float _701 = _698 * _598;
    float _702 = exp2(_701);
    float _703 = _702 * _597;
    float _704 = saturate(_703);
    float _705 = _698 * _597;
    float _706 = _698 - _705;
    float _707 = saturate(_706);
    float _708 = max(_597, _707);
    float _709 = min(_708, _704);
    float _710 = _699 * _598;
    float _711 = exp2(_710);
    float _712 = _711 * _597;
    float _713 = saturate(_712);
    float _714 = _699 * _597;
    float _715 = _699 - _714;
    float _716 = saturate(_715);
    float _717 = max(_597, _716);
    float _718 = min(_717, _713);
    float _719 = _700 * _598;
    float _720 = exp2(_719);
    float _721 = _720 * _597;
    float _722 = saturate(_721);
    float _723 = _700 * _597;
    float _724 = _700 - _723;
    float _725 = saturate(_724);
    float _726 = max(_597, _725);
    float _727 = min(_726, _722);
    _729 = _709;
    _730 = _718;
    _731 = _727;
  } else {
    _729 = _633;
    _730 = _637;
    _731 = _641;
  }
  float _732 = _729 * _621;
  float _733 = _730 * _622;
  float _734 = _733 + _732;
  float _735 = _731 * _623;
  float _736 = _734 + _735;
  float _737 = 1.0f / _736;
  float _738 = _737 * _673;
  float _739 = saturate(_738);
  float _740 = _739 * _729;
  float _741 = saturate(_740);
  float _742 = _739 * _730;
  float _743 = saturate(_742);
  float _744 = _739 * _731;
  float _745 = saturate(_744);
  float _746 = _741 * _608;
  float _747 = _608 - _746;
  float _748 = _743 * _609;
  float _749 = _609 - _748;
  float _750 = _745 * _610;
  float _751 = _610 - _750;
  float _752 = _745 * _623;
  float _753 = _741 * _621;
  float _754 = _743 * _622;
  float _755 = _673 - _753;
  float _756 = _755 - _754;
  float _757 = _756 - _752;
  float _758 = saturate(_757);
  float _759 = _749 * _622;
  float _760 = _747 * _621;
  float _761 = _751 * _623;
  float _762 = _759 + _760;
  float _763 = _762 + _761;
  float _764 = 1.0f / _763;
  float _765 = _764 * _758;
  float _766 = _765 * _747;
  float _767 = _766 + _741;
  float _768 = saturate(_767);
  float _769 = _765 * _749;
  float _770 = _769 + _743;
  float _771 = saturate(_770);
  float _772 = _765 * _751;
  float _773 = _772 + _745;
  float _774 = saturate(_773);
  float _775 = _774 * _623;
  float _776 = _768 * _621;
  float _777 = _771 * _622;
  float _778 = _673 - _776;
  float _779 = _778 - _777;
  float _780 = _779 - _775;
  float _781 = saturate(_780);
  float _782 = _781 * _618;
  float _783 = _782 + _768;
  float _784 = saturate(_783);
  float _785 = _781 * _619;
  float _786 = _785 + _771;
  float _787 = saturate(_786);
  float _788 = _781 * _620;
  float _789 = _788 + _774;
  float _790 = saturate(_789);
  if (!_535) {
    float _792 = _784 * _594;
    float _793 = _787 * _595;
    float _794 = _790 * _596;
    float _795 = _793 + _792;
    float _796 = _795 + _794;
    float _797 = _787 * _592;
    float _798 = _784 * _591;
    float _799 = _790 * _593;
    float _800 = _797 + _798;
    float _801 = _800 + _799;
    float _802 = _790 * _590;
    float _803 = _787 * _589;
    float _804 = _784 * _588;
    float _805 = _803 + _804;
    float _806 = _805 + _802;
    if (!_533) {
      float _808 = saturate(_796);
      float _809 = saturate(_801);
      float _810 = saturate(_806);
      _812 = _810;
      _813 = _809;
      _814 = _808;
    } else {
      _812 = _806;
      _813 = _801;
      _814 = _796;
    }
  } else {
    _812 = _790;
    _813 = _787;
    _814 = _784;
  }
  if (!_530) {
    float _816 = _814 * _594;
    float _817 = _813 * _594;
    float _818 = _812 * _594;
    _820 = _818;
    _821 = _817;
    _822 = _816;
  } else {
    _820 = _812;
    _821 = _813;
    _822 = _814;
  }
  if (_447) {
    float _826 = cb1_018z * 9.999999747378752e-05f;
    float _827 = _826 * _822;
    float _828 = _826 * _821;
    float _829 = _826 * _820;
    float _831 = 5000.0f / cb1_018y;
    float _832 = _827 * _831;
    float _833 = _828 * _831;
    float _834 = _829 * _831;
    _836 = _832;
    _837 = _833;
    _838 = _834;
  } else {
    _836 = _822;
    _837 = _821;
    _838 = _820;
  }
  float _839 = _836 * 1.6047500371932983f;
  float _840 = mad(-0.5310800075531006f, _837, _839);
  float _841 = mad(-0.07366999983787537f, _838, _840);
  float _842 = _836 * -0.10208000242710114f;
  float _843 = mad(1.1081299781799316f, _837, _842);
  float _844 = mad(-0.006049999967217445f, _838, _843);
  float _845 = _836 * -0.0032599999103695154f;
  float _846 = mad(-0.07275000214576721f, _837, _845);
  float _847 = mad(1.0760200023651123f, _838, _846);
  if (_447) {
    // float _849 = max(_841, 0.0f);
    // float _850 = max(_844, 0.0f);
    // float _851 = max(_847, 0.0f);
    // bool _852 = !(_849 >= 0.0030399328097701073f);
    // if (!_852) {
    //   float _854 = abs(_849);
    //   float _855 = log2(_854);
    //   float _856 = _855 * 0.4166666567325592f;
    //   float _857 = exp2(_856);
    //   float _858 = _857 * 1.0549999475479126f;
    //   float _859 = _858 + -0.054999999701976776f;
    //   _863 = _859;
    // } else {
    //   float _861 = _849 * 12.923210144042969f;
    //   _863 = _861;
    // }
    // bool _864 = !(_850 >= 0.0030399328097701073f);
    // if (!_864) {
    //   float _866 = abs(_850);
    //   float _867 = log2(_866);
    //   float _868 = _867 * 0.4166666567325592f;
    //   float _869 = exp2(_868);
    //   float _870 = _869 * 1.0549999475479126f;
    //   float _871 = _870 + -0.054999999701976776f;
    //   _875 = _871;
    // } else {
    //   float _873 = _850 * 12.923210144042969f;
    //   _875 = _873;
    // }
    // bool _876 = !(_851 >= 0.0030399328097701073f);
    // if (!_876) {
    //   float _878 = abs(_851);
    //   float _879 = log2(_878);
    //   float _880 = _879 * 0.4166666567325592f;
    //   float _881 = exp2(_880);
    //   float _882 = _881 * 1.0549999475479126f;
    //   float _883 = _882 + -0.054999999701976776f;
    //   _956 = _863;
    //   _957 = _875;
    //   _958 = _883;
    // } else {
    //   float _885 = _851 * 12.923210144042969f;
    //   _956 = _863;
    //   _957 = _875;
    //   _958 = _885;
    // }
    _956 = renodx::color::srgb::EncodeSafe(_841);
    _957 = renodx::color::srgb::EncodeSafe(_844);
    _958 = renodx::color::srgb::EncodeSafe(_847);

  } else {
    float _887 = saturate(_841);
    float _888 = saturate(_844);
    float _889 = saturate(_847);
    bool _890 = ((uint)(cb1_018w) == -2);
    if (!_890) {
      bool _892 = !(_887 >= 0.0030399328097701073f);
      if (!_892) {
        float _894 = abs(_887);
        float _895 = log2(_894);
        float _896 = _895 * 0.4166666567325592f;
        float _897 = exp2(_896);
        float _898 = _897 * 1.0549999475479126f;
        float _899 = _898 + -0.054999999701976776f;
        _903 = _899;
      } else {
        float _901 = _887 * 12.923210144042969f;
        _903 = _901;
      }
      bool _904 = !(_888 >= 0.0030399328097701073f);
      if (!_904) {
        float _906 = abs(_888);
        float _907 = log2(_906);
        float _908 = _907 * 0.4166666567325592f;
        float _909 = exp2(_908);
        float _910 = _909 * 1.0549999475479126f;
        float _911 = _910 + -0.054999999701976776f;
        _915 = _911;
      } else {
        float _913 = _888 * 12.923210144042969f;
        _915 = _913;
      }
      bool _916 = !(_889 >= 0.0030399328097701073f);
      if (!_916) {
        float _918 = abs(_889);
        float _919 = log2(_918);
        float _920 = _919 * 0.4166666567325592f;
        float _921 = exp2(_920);
        float _922 = _921 * 1.0549999475479126f;
        float _923 = _922 + -0.054999999701976776f;
        _927 = _903;
        _928 = _915;
        _929 = _923;
      } else {
        float _925 = _889 * 12.923210144042969f;
        _927 = _903;
        _928 = _915;
        _929 = _925;
      }
    } else {
      _927 = _887;
      _928 = _888;
      _929 = _889;
    }
    float _934 = abs(_927);
    float _935 = abs(_928);
    float _936 = abs(_929);
    float _937 = log2(_934);
    float _938 = log2(_935);
    float _939 = log2(_936);
    float _940 = _937 * cb2_000z;
    float _941 = _938 * cb2_000z;
    float _942 = _939 * cb2_000z;
    float _943 = exp2(_940);
    float _944 = exp2(_941);
    float _945 = exp2(_942);
    float _946 = _943 * cb2_000y;
    float _947 = _944 * cb2_000y;
    float _948 = _945 * cb2_000y;
    float _949 = _946 + cb2_000x;
    float _950 = _947 + cb2_000x;
    float _951 = _948 + cb2_000x;
    float _952 = saturate(_949);
    float _953 = saturate(_950);
    float _954 = saturate(_951);
    _956 = _952;
    _957 = _953;
    _958 = _954;
  }
  float _962 = cb2_023x * TEXCOORD0_centroid.x;
  float _963 = cb2_023y * TEXCOORD0_centroid.y;
  float _966 = _962 + cb2_023z;
  float _967 = _963 + cb2_023w;
  float4 _970 = t10.SampleLevel(s0_space2, float2(_966, _967), 0.0f);
  float _972 = _970.x + -0.5f;
  float _973 = _972 * cb2_022x;
  float _974 = _973 + 0.5f;
  float _975 = _974 * 2.0f;
  float _976 = _975 * _956;
  float _977 = _975 * _957;
  float _978 = _975 * _958;
  float _982 = float((uint)(cb2_019z));
  float _983 = float((uint)(cb2_019w));
  float _984 = _982 + SV_Position.x;
  float _985 = _983 + SV_Position.y;
  uint _986 = uint(_984);
  uint _987 = uint(_985);
  uint _990 = cb2_019x + -1u;
  uint _991 = cb2_019y + -1u;
  int _992 = _986 & _990;
  int _993 = _987 & _991;
  float4 _994 = t3.Load(int3(_992, _993, 0));
  float _998 = _994.x * 2.0f;
  float _999 = _994.y * 2.0f;
  float _1000 = _994.z * 2.0f;
  float _1001 = _998 + -1.0f;
  float _1002 = _999 + -1.0f;
  float _1003 = _1000 + -1.0f;
  float _1004 = _1001 * cb2_025w;
  float _1005 = _1002 * cb2_025w;
  float _1006 = _1003 * cb2_025w;
  float _1007 = _1004 + _976;
  float _1008 = _1005 + _977;
  float _1009 = _1006 + _978;
  float _1010 = dot(float3(_1007, _1008, _1009), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  SV_Target.x = _1007;
  SV_Target.y = _1008;
  SV_Target.z = _1009;
  SV_Target.w = _1010;
  SV_Target_1.x = _1010;
  SV_Target_1.y = 0.0f;
  SV_Target_1.z = 0.0f;
  SV_Target_1.w = 0.0f;
  OutputSignature output_signature = { SV_Target, SV_Target_1 };
  return output_signature;
}
