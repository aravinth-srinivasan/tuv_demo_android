precision lowp float;
varying lowp vec2 textureCoordinate;
uniform lowp sampler2D uTexture;
void main() {
    gl_FragColor = texture2D( uTexture, textureCoordinate);
}