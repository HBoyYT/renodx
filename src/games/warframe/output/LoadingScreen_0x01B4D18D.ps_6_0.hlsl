#include "../common.hlsl"
#include "../shared.h"

Texture2D<float4> t0 : register(t0);

cbuffer cb0 : register(b0) {
  float Globals_000 : packoffset(c000.x);
};

float4 main(
  noperspective float4 SV_Position : SV_Position,
  linear float4 TEXCOORD : TEXCOORD,
  linear float4 TEXCOORD_1 : TEXCOORD1
) : SV_Target {
  float4 SV_Target;
  float4 _7 = t0.Load(int3((uint)(uint(SV_Position.x)), (uint)(uint(SV_Position.y)), 0));
  if (false) discard;
  [branch]
  if (!RENODX_FIX_COLOR) {
    float _32 = select((_7.x <= 0.0392800010740757f), (_7.x * 0.07739938050508499f), exp2(log2((_7.x + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
    float _33 = select((_7.y <= 0.0392800010740757f), (_7.y * 0.07739938050508499f), exp2(log2((_7.y + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
    float _34 = select((_7.z <= 0.0392800010740757f), (_7.z * 0.07739938050508499f), exp2(log2((_7.z + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f));
    float _46 = (Globals_000) * 9.999999747378752e-05f;
    float _56 = exp2(log2(_46 * mad(0.04331360012292862f, _34, mad(0.3292819857597351f, _33, (_32 * 0.627403974533081f)))) * 0.1593017578125f);
    float _57 = exp2(log2(_46 * mad(0.012477199546992779f, _34, mad(0.9417769908905029f, _33, (_32 * 0.045745600014925f)))) * 0.1593017578125f);
    float _58 = exp2(log2(_46 * mad(0.9836069941520691f, _34, mad(0.017604099586606026f, _33, (_32 * -0.0012105499627068639f)))) * 0.1593017578125f);
    SV_Target.x = exp2(log2(((_56 * 18.8515625f) + 0.8359375f) / ((_56 * 18.6875f) + 1.0f)) * 78.84375f);
    SV_Target.y = exp2(log2(((_57 * 18.8515625f) + 0.8359375f) / ((_57 * 18.6875f) + 1.0f)) * 78.84375f);
    SV_Target.z = exp2(log2(((_58 * 18.8515625f) + 0.8359375f) / ((_58 * 18.6875f) + 1.0f)) * 78.84375f);
  } else {
    float3 color = renodx::color::srgb::DecodeSafe(_7.rgb);
    GammaColorSpaceCorrection(color, 0u, 0u);
    color = renodx::color::bt2020::from::BT709(color);
    color = renodx::color::pq::EncodeSafe(color, RENODX_GRAPHICS_WHITE_NITS);
    SV_Target.rgb = color;
  }
  SV_Target.w = 1.0f;
  return SV_Target;
}
