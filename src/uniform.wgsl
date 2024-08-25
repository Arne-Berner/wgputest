// Some credit to https://github.com/paulgb/wgsl-playground/tree/main.

// We use separate the x and y instead of using a vec2 to avoid wgsl padding.
struct TimeUniform {
    inner: f32,
}

struct VertexInput {
    @builtin(vertex_index) vertex_index: u32,
};

@group(0)
@binding(0)
var<uniform> time: TimeUniform;

struct VertexOutput {
    @builtin(position) position: vec4<f32>,
    @location(0) coord: vec2<f32>,
};

fn plot(st:vec2f,pct:f32) -> f32{
  return  smoothstep( pct-0.02, pct, st.y) -
          smoothstep( pct, pct+0.02, st.y);
}

@vertex
fn vs_main(in: VertexInput) -> VertexOutput {
    var vertices = array<vec2<f32>, 3>(
        vec2<f32>(-1., 1.),
        vec2<f32>(3., 1.),
        vec2<f32>(-1., -3.),
    );
    var out: VertexOutput;
    out.coord = vertices[in.vertex_index];
    out.position = vec4<f32>(out.coord, 0.0, 1.0);

    return out;
}

@fragment
fn fs_main(in: VertexOutput) -> @location(0) vec4<f32> {
    // this is still in the big triangle, so not matched to the screen
    var st = vec2((in.coord.x + 1)/2, (in.coord.y + 1)/2);
    var x = st.x;
    var y = x;
    y = x % 0.5; // return x modulo of 0.5
//y = fract(x); // return only the fraction part of a number
//y = ceil(x);  // nearest integer that is greater than or equal to x
//y = floor(x); // nearest integer less than or equal to x
//y = sign(x);  // extract the sign of x
//y = abs(x);   // return the absolute value of x
//y = clamp(x,0.0,1.0); // constrain x to lie between 0.0 and 1.0
//y = min(0.0,x);   // return the lesser of x and 0.0
//y = max(0.0,x);   // return the greater of x and 0.0
    var color = vec3(y);
    var pct = plot(st,y);
    color = (1.0-pct)*color+pct*vec3(0.0,1.0,0.0);
    return vec4(color, 1.0);
    // return vec4(color.x,color.y,color.z, 1.0);
}
