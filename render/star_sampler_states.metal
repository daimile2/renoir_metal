// SPDX-License-Identifier: MIT
// Sampler-state encoding fixture: one constexpr sampler per variation.
#include <metal_stdlib>
using namespace metal;
constexpr sampler s_base;
kernel void sampler_base(texture2d<float> t [[texture(0)]], device float4 *out [[buffer(0)]])
{
    out[0] = float4(t.sample(s_base, float2(0.5)));
}
constexpr sampler s_s_clamp_to_zero(s_address::clamp_to_zero);
kernel void sampler_s_clamp_to_zero(texture2d<float> t [[texture(0)]], device float4 *out [[buffer(0)]])
{
    out[0] = float4(t.sample(s_s_clamp_to_zero, float2(0.5)));
}
constexpr sampler s_s_clamp_to_edge(s_address::clamp_to_edge);
kernel void sampler_s_clamp_to_edge(texture2d<float> t [[texture(0)]], device float4 *out [[buffer(0)]])
{
    out[0] = float4(t.sample(s_s_clamp_to_edge, float2(0.5)));
}
constexpr sampler s_s_repeat(s_address::repeat);
kernel void sampler_s_repeat(texture2d<float> t [[texture(0)]], device float4 *out [[buffer(0)]])
{
    out[0] = float4(t.sample(s_s_repeat, float2(0.5)));
}
constexpr sampler s_s_mirrored_repeat(s_address::mirrored_repeat);
kernel void sampler_s_mirrored_repeat(texture2d<float> t [[texture(0)]], device float4 *out [[buffer(0)]])
{
    out[0] = float4(t.sample(s_s_mirrored_repeat, float2(0.5)));
}
constexpr sampler s_s_clamp_to_border(s_address::clamp_to_border);
kernel void sampler_s_clamp_to_border(texture2d<float> t [[texture(0)]], device float4 *out [[buffer(0)]])
{
    out[0] = float4(t.sample(s_s_clamp_to_border, float2(0.5)));
}
constexpr sampler s_t_repeat(t_address::repeat);
kernel void sampler_t_repeat(texture2d<float> t [[texture(0)]], device float4 *out [[buffer(0)]])
{
    out[0] = float4(t.sample(s_t_repeat, float2(0.5)));
}
constexpr sampler s_r_repeat(r_address::repeat);
kernel void sampler_r_repeat(texture2d<float> t [[texture(0)]], device float4 *out [[buffer(0)]])
{
    out[0] = float4(t.sample(s_r_repeat, float2(0.5)));
}
constexpr sampler s_mag_linear(mag_filter::linear);
kernel void sampler_mag_linear(texture2d<float> t [[texture(0)]], device float4 *out [[buffer(0)]])
{
    out[0] = float4(t.sample(s_mag_linear, float2(0.5)));
}
constexpr sampler s_min_linear(min_filter::linear);
kernel void sampler_min_linear(texture2d<float> t [[texture(0)]], device float4 *out [[buffer(0)]])
{
    out[0] = float4(t.sample(s_min_linear, float2(0.5)));
}
constexpr sampler s_mip_nearest(mip_filter::nearest);
kernel void sampler_mip_nearest(texture2d<float> t [[texture(0)]], device float4 *out [[buffer(0)]])
{
    out[0] = float4(t.sample(s_mip_nearest, float2(0.5)));
}
constexpr sampler s_mip_linear(mip_filter::linear);
kernel void sampler_mip_linear(texture2d<float> t [[texture(0)]], device float4 *out [[buffer(0)]])
{
    out[0] = float4(t.sample(s_mip_linear, float2(0.5)));
}
constexpr sampler s_coord_pixel(coord::pixel);
kernel void sampler_coord_pixel(texture2d<float> t [[texture(0)]], device float4 *out [[buffer(0)]])
{
    out[0] = float4(t.sample(s_coord_pixel, float2(0.5)));
}
constexpr sampler s_border_opaque_black(address::clamp_to_border, border_color::opaque_black);
kernel void sampler_border_opaque_black(texture2d<float> t [[texture(0)]], device float4 *out [[buffer(0)]])
{
    out[0] = float4(t.sample(s_border_opaque_black, float2(0.5)));
}
constexpr sampler s_border_opaque_white(address::clamp_to_border, border_color::opaque_white);
kernel void sampler_border_opaque_white(texture2d<float> t [[texture(0)]], device float4 *out [[buffer(0)]])
{
    out[0] = float4(t.sample(s_border_opaque_white, float2(0.5)));
}
constexpr sampler s_compare_less(compare_func::less);
kernel void sampler_compare_less(depth2d<float> t [[texture(0)]], device float4 *out [[buffer(0)]])
{
    out[0] = float4(t.sample_compare(s_compare_less, float2(0.5), 0.5));
}
constexpr sampler s_compare_always(compare_func::always);
kernel void sampler_compare_always(depth2d<float> t [[texture(0)]], device float4 *out [[buffer(0)]])
{
    out[0] = float4(t.sample_compare(s_compare_always, float2(0.5), 0.5));
}
constexpr sampler s_compare_never(compare_func::never);
kernel void sampler_compare_never(depth2d<float> t [[texture(0)]], device float4 *out [[buffer(0)]])
{
    out[0] = float4(t.sample_compare(s_compare_never, float2(0.5), 0.5));
}
constexpr sampler s_aniso_4(max_anisotropy(4));
kernel void sampler_aniso_4(texture2d<float> t [[texture(0)]], device float4 *out [[buffer(0)]])
{
    out[0] = float4(t.sample(s_aniso_4, float2(0.5)));
}
constexpr sampler s_aniso_16(max_anisotropy(16));
kernel void sampler_aniso_16(texture2d<float> t [[texture(0)]], device float4 *out [[buffer(0)]])
{
    out[0] = float4(t.sample(s_aniso_16, float2(0.5)));
}
constexpr sampler s_lod_1_2(lod_clamp(1.0, 2.0));
kernel void sampler_lod_1_2(texture2d<float> t [[texture(0)]], device float4 *out [[buffer(0)]])
{
    out[0] = float4(t.sample(s_lod_1_2, float2(0.5)));
}
constexpr sampler s_lod_0_8(lod_clamp(0.0, 8.0));
kernel void sampler_lod_0_8(texture2d<float> t [[texture(0)]], device float4 *out [[buffer(0)]])
{
    out[0] = float4(t.sample(s_lod_0_8, float2(0.5)));
}
