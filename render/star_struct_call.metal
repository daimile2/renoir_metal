// SPDX-License-Identifier: MIT
// Fixture 5: a vertex entry calling a non-inlined helper that returns a
// struct by value, the shape of CoreAnimation's path vertex shaders.
#include <metal_stdlib>
using namespace metal;
struct StarStructOut {
    float4 position [[position]];
    float2 uv;
    float weight;
};
__attribute__((noinline)) static StarStructOut star_struct_build(ushort vid, ushort iid,
    constant float4x4 &transform, device const float4 *points)
{
    StarStructOut out;
    float4 p = points[vid];
    out.position = transform * float4(p.xy, 0.0, 1.0);
    out.uv = p.zw;
    out.weight = float(iid) * 0.5;
    return out;
}
vertex StarStructOut star_struct_vertex(ushort vid [[vertex_id]], ushort iid [[instance_id]],
                                        constant float4x4 &transform [[buffer(0)]],
                                        device const float4 *points [[buffer(1)]])
{
    return star_struct_build(vid, iid, transform, points);
}
