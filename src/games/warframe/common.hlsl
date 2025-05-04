#include "./shared.h"

float4 LutBuilderTonemap(float3 untonemapped, float3 tonemapped, renodx::draw::Config config = renodx::draw::BuildConfig()) {
  float4 output;
  if (RENODX_TONE_MAP_TYPE != 0.f) {
    output.rgb = renodx::draw::ToneMapPass(untonemapped, tonemapped, config);
  } else {
    output.rgb = saturate(max(0,tonemapped));
  }
  output = renodx::draw::RenderIntermediatePass(output);
  return output;
}

/* I use this when the lutbuilder samples a lut texture. 
Using per channel correction applies the color from untonemapped (no color grading), making the output look incorrect
I'm using hue correction to 'apply' the color to the untonemapped color, then using that as an input for perchannel correction instead */

float3 LUTPerChannelCorrection(float3 untonemapped, float3 tonemapped) {
  float3 tonemappedNew = renodx::draw::ApplyPerChannelCorrection(renodx::color::correct::Hue(untonemapped, tonemapped, 1.f, 1u),
                                                                 tonemapped,
                                                                 RENODX_PER_CHANNEL_BLOWOUT_RESTORATION/1.5,
                                                                 0.f,
                                                                 0.f,
                                                                 0.f);

  if (RENODX_TONE_MAP_TYPE == 0.f || RENODX_PER_CHANNEL_BLOWOUT_RESTORATION == 0.f ) {
    return tonemapped;
  } else {
    return tonemappedNew;
  }
}

/* The lutbuilder controls when the game fades to black / to white
When i use tonemappass, the output looks weird
So, I check check the cbuffer cb0_009z, which determines wether the game fades to black / white
If it is > 0, the game gets darker.
If it is < 0, the game gets lighter.
When the game is fading to black, and it is in its darker section (when cb0_009z > 0.55f), I just set untonemapped to tonemapped
This avoids the wierd output when tonemappassing untonemapped and tonemapped.
Then, as the fade to black is less strong, I slowly fade back in untonemapped to tonemapped
This creates a smooth transtion during the fades, whilst avoiding the strange output from tonemappass
I cant really think of any other solutions, so hopefully this will do.
*/
float3 CrossFadeFix(float3 untonemapped, float3 tonemapped, float fadeCbuffer) {
  float cb0_009z = fadeCbuffer;

  if (cb0_009z > 0.f) { // If its positive (fade to black)
    if (cb0_009z > 0.055f) {
      untonemapped = saturate(tonemapped); // When its more dark, its just tonmapped
    } else if (cb0_009z < 0.055f) { // As It fades from black back to normal
      // Applies a curve to fade between untonemapped and tonemapped for a smoother transition
      float fade = pow((1 - (cb0_009z)), 15);
      untonemapped = lerp(saturate(tonemapped), untonemapped, fade);
    }
  }

  if (cb0_009z < 0) {  // If is negative (fade to white)
    // Scale tonemapped to peak brightness
    float scale = RENODX_PEAK_WHITE_NITS / RENODX_DIFFUSE_WHITE_NITS;
    float3 tonemappedScaled = saturate(tonemapped) * scale;
    // As cb0_009z goes torwards -1.f (full white), lerp untonemapped to tonemapped
    float fade = cb0_009z * -1.f;
    untonemapped = lerp(max(0,untonemapped), max(0,tonemappedScaled), fade);  
  }
  return untonemapped;
}
