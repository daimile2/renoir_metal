// SPDX-License-Identifier: MIT
// Fixture 3: framebuffer fetch -- the fragment reads its own render target.
#include <metal_stdlib>
using namespace metal;
struct StarFetchIn {
    float4 position [[position]];
    float4 color;
};
fragment float4 star_fetch_fragment(StarFetchIn in [[stage_in]], float4 dst [[color(0)]])
{
    return in.color + dst * (1.0 - in.color.a);
}
