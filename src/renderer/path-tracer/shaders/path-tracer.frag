#version 300 es
precision mediump float;

in vec2 v_texCoord;
out vec4 outColor;

uniform float u_time;

void main() {
    outColor = vec4(1.0, 0.0, 0.0, 1.0);
}