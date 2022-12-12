precision mediump float;
varying vec2 textureCoordinate;
uniform sampler2D y_tex;
uniform sampler2D uv_tex;
void main() {
   float y, u, v, r, g, b;
   y = texture2D(y_tex, textureCoordinate).r;
   u = texture2D(uv_tex, textureCoordinate).r - 0.5;
   v = texture2D(uv_tex, textureCoordinate).a - 0.5;
   r = y + 1.28033*v;
   g = y - 0.21482*u - 0.38059*v;
   b = y + 2.12798*u;
   gl_FragColor = vec4(r, g, b, 1.0);
}