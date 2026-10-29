// SPDX-License-Identifier: MIT
// Render fixture 1: vertex_id-indexed constants, stage IO and interpolation only.
#include <metal_stdlib>
using namespace metal;
struct StarTriangleOut {
    float4 position [[position]];
    float4 color;
};
constant float2 star_triangle_positions[3] = {
    float2(-0.5, -0.5), float2(0.5, -0.5), float2(0.0, 0.5)
};
constant float4 star_triangle_colors[3] = {
    float4(1.0, 0.0, 0.0, 1.0), float4(0.0, 1.0, 0.0, 1.0), float4(0.0, 0.0, 1.0, 1.0)
};
vertex StarTriangleOut star_triangle_vertex(uint vid [[vertex_id]])
{
    StarTriangleOut out;
    out.position = float4(star_triangle_positions[vid], 0.0, 1.0);
    out.color = star_triangle_colors[vid];
    return out;
}
fragment float4 star_triangle_fragment(StarTriangleOut in [[stage_in]])
{
    return in.color;
}
