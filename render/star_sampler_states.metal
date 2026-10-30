// SPDX-License-Identifier: MIT
// Sampler-state encoding fixture: one constexpr sampler per variation.
#include <metal_stdlib>
using namespace metal;
constexpr sampler s_base;
fragment float4 sampler_base(texture2d<float> t [[texture(0)]])
{
    return float4(t.sample(s_base, float2(0.5)));
}
constexpr sampler s_s_clamp_to_zero(s_address::clamp_to_zero);
fragment float4 sampler_s_clamp_to_zero(texture2d<float> t [[texture(0)]])
{
    return float4(t.sample(s_s_clamp_to_zero, float2(0.5)));
}
constexpr sampler s_s_clamp_to_edge(s_address::clamp_to_edge);
fragment float4 sampler_s_clamp_to_edge(texture2d<float> t [[texture(0)]])
{
    return float4(t.sample(s_s_clamp_to_edge, float2(0.5)));
}
constexpr sampler s_s_repeat(s_address::repeat);
fragment float4 sampler_s_repeat(texture2d<float> t [[texture(0)]])
{
    return float4(t.sample(s_s_repeat, float2(0.5)));
}
constexpr sampler s_s_mirrored_repeat(s_address::mirrored_repeat);
fragment float4 sampler_s_mirrored_repeat(texture2d<float> t [[texture(0)]])
{
    return float4(t.sample(s_s_mirrored_repeat, float2(0.5)));
}
constexpr sampler s_s_clamp_to_border(s_address::clamp_to_border);
fragment float4 sampler_s_clamp_to_border(texture2d<float> t [[texture(0)]])
{
    return float4(t.sample(s_s_clamp_to_border, float2(0.5)));
}
constexpr sampler s_t_repeat(t_address::repeat);
fragment float4 sampler_t_repeat(texture2d<float> t [[texture(0)]])
{
    return float4(t.sample(s_t_repeat, float2(0.5)));
}
constexpr sampler s_r_repeat(r_address::repeat);
fragment float4 sampler_r_repeat(texture2d<float> t [[texture(0)]])
{
    return float4(t.sample(s_r_repeat, float2(0.5)));
}
constexpr sampler s_mag_linear(mag_filter::linear);
fragment float4 sampler_mag_linear(texture2d<float> t [[texture(0)]])
{
    return float4(t.sample(s_mag_linear, float2(0.5)));
}
constexpr sampler s_min_linear(min_filter::linear);
fragment float4 sampler_min_linear(texture2d<float> t [[texture(0)]])
{
    return float4(t.sample(s_min_linear, float2(0.5)));
}
constexpr sampler s_mip_nearest(mip_filter::nearest);
fragment float4 sampler_mip_nearest(texture2d<float> t [[texture(0)]])
{
    return float4(t.sample(s_mip_nearest, float2(0.5)));
}
constexpr sampler s_mip_linear(mip_filter::linear);
fragment float4 sampler_mip_linear(texture2d<float> t [[texture(0)]])
{
    return float4(t.sample(s_mip_linear, float2(0.5)));
}
constexpr sampler s_coord_pixel(coord::pixel);
fragment float4 sampler_coord_pixel(texture2d<float> t [[texture(0)]])
{
    return float4(t.sample(s_coord_pixel, float2(0.5)));
}
constexpr sampler s_border_opaque_black(address::clamp_to_border, border_color::opaque_black);
fragment float4 sampler_border_opaque_black(texture2d<float> t [[texture(0)]])
{
    return float4(t.sample(s_border_opaque_black, float2(0.5)));
}
constexpr sampler s_border_opaque_white(address::clamp_to_border, border_color::opaque_white);
fragment float4 sampler_border_opaque_white(texture2d<float> t [[texture(0)]])
{
    return float4(t.sample(s_border_opaque_white, float2(0.5)));
}
constexpr sampler s_compare_less(compare_func::less);
fragment float4 sampler_compare_less(depth2d<float> t [[texture(0)]])
{
    return float4(t.sample_compare(s_compare_less, float2(0.5), 0.5));
}
constexpr sampler s_compare_always(compare_func::always);
fragment float4 sampler_compare_always(depth2d<float> t [[texture(0)]])
{
    return float4(t.sample_compare(s_compare_always, float2(0.5), 0.5));
}
constexpr sampler s_compare_never(compare_func::never);
fragment float4 sampler_compare_never(depth2d<float> t [[texture(0)]])
{
    return float4(t.sample_compare(s_compare_never, float2(0.5), 0.5));
}
constexpr sampler s_aniso_4(max_anisotropy(4));
fragment float4 sampler_aniso_4(texture2d<float> t [[texture(0)]])
{
    return float4(t.sample(s_aniso_4, float2(0.5)));
}
constexpr sampler s_aniso_16(max_anisotropy(16));
fragment float4 sampler_aniso_16(texture2d<float> t [[texture(0)]])
{
    return float4(t.sample(s_aniso_16, float2(0.5)));
}
constexpr sampler s_lod_1_2(lod_clamp(1.0, 2.0));
fragment float4 sampler_lod_1_2(texture2d<float> t [[texture(0)]])
{
    return float4(t.sample(s_lod_1_2, float2(0.5)));
}
constexpr sampler s_lod_0_8(lod_clamp(0.0, 8.0));
fragment float4 sampler_lod_0_8(texture2d<float> t [[texture(0)]])
{
    return float4(t.sample(s_lod_0_8, float2(0.5)));
}
