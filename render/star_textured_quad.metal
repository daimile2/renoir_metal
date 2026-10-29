// SPDX-License-Identifier: MIT
// Render fixture 2: stage_in attributes, uniform buffer, texture2d/sampler and
// premultiplied-alpha output, the minimal compositor-style draw.
#include <metal_stdlib>
using namespace metal;
struct StarQuadVertex {
    float2 position [[attribute(0)]];
    float2 texcoord [[attribute(1)]];
};
struct StarQuadUniforms {
    float4x4 transform;
    float opacity;
};
struct StarQuadOut {
    float4 position [[position]];
    float2 texcoord;
};
vertex StarQuadOut star_quad_vertex(StarQuadVertex in [[stage_in]],
                                    constant StarQuadUniforms &uniforms [[buffer(1)]])
{
    StarQuadOut out;
    out.position = uniforms.transform * float4(in.position, 0.0, 1.0);
    out.texcoord = in.texcoord;
    return out;
}
fragment float4 star_quad_fragment(StarQuadOut in [[stage_in]],
                                   texture2d<float> source [[texture(0)]],
                                   sampler source_sampler [[sampler(0)]],
                                   constant StarQuadUniforms &uniforms [[buffer(1)]])
{
    float4 color = source.sample(source_sampler, in.texcoord);
    return color * uniforms.opacity;
}
