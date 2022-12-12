attribute lowp vec4 vPosition;
attribute lowp vec2 inputTextureCoordinate;
uniform lowp mat4 vMatrix;
varying lowp vec2 textureCoordinate;

void main(){
    gl_Position = vMatrix * vPosition;
    textureCoordinate = inputTextureCoordinate;
}