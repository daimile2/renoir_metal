// SPDX-License-Identifier: MIT
// Fixture 4: an LLVM switch on a uniform selector.
#include <metal_stdlib>
using namespace metal;
struct StarSwitchIn {
    float4 position [[position]];
    float2 uv;
};
fragment float4 star_switch_fragment(StarSwitchIn in [[stage_in]],
                                     constant uint &mode [[buffer(0)]])
{
    float4 c;
    switch (mode) {
    case 0: c = float4(in.uv, 0.0, 1.0); break;
    case 1: c = float4(sin(in.uv.x), cos(in.uv.y), 0.5, 1.0); break;
    case 2: c = float4(fract(in.uv * 7.0), 0.25, 1.0); break;
    case 5: c = float4(length(in.uv), 0.0, 1.0 - in.uv.x, 1.0); break;
    default: c = float4(1.0, 0.0, 1.0, 1.0); break;
    }
    return c;
}
