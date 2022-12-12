#extension GL_OES_EGL_image_external : require
precision lowp float;
varying lowp vec2 textureCoordinate;
uniform lowp samplerExternalOES uTexture;
void main() {
    gl_FragColor = texture2D( uTexture, textureCoordinate);
}