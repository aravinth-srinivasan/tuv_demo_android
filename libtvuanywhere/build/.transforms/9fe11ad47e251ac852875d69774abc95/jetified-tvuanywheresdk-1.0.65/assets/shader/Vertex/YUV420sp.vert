varying vec2 textureCoordinate;
attribute vec4 vPosition;
attribute vec2 inputTextureCoordinate;
uniform mat4 vMatrix;

void main(){
  gl_Position = vMatrix * vPosition;
  textureCoordinate = inputTextureCoordinate;
}