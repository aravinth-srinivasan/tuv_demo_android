attribute vec4 vPosition;
attribute vec2 inputTextureCoordinate;
varying vec2 textureCoordinate;
varying vec2 vBlurCoord1s[14];
uniform float uWidth;
uniform float uHeight;
uniform mat4 vMatrix;
//uniform mat4 uTextureMatrix;
void main()
{
    gl_Position = vMatrix*vPosition;
    textureCoordinate = /*(uTextureMatrix*vec4(*/inputTextureCoordinate/*,0,1)).xy*/;

    highp float mul_x = 2.0 / uWidth;
    highp float mul_y = 2.0 / uHeight;

    vBlurCoord1s[0] = textureCoordinate + vec2( 0.0 * mul_x, -10.0 * mul_y );
    vBlurCoord1s[1] = textureCoordinate + vec2( 8.0 * mul_x, -5.0 * mul_y );
    vBlurCoord1s[2] = textureCoordinate + vec2( 8.0 * mul_x, 5.0 * mul_y );
    vBlurCoord1s[3] = inputTextureCoordinate + vec2( 0.0 * mul_x, 10.0 * mul_y );
    vBlurCoord1s[4] = inputTextureCoordinate + vec2( -8.0 * mul_x, 5.0 * mul_y );
    vBlurCoord1s[5] = inputTextureCoordinate + vec2( -8.0 * mul_x, -5.0 * mul_y );

    mul_x = 1.2 / uWidth;
    mul_y = 1.2 / uHeight;

    vBlurCoord1s[6] = inputTextureCoordinate + vec2( 0.0 * mul_x, -6.0 * mul_y );
    vBlurCoord1s[7] = inputTextureCoordinate + vec2( -4.0 * mul_x, -4.0 * mul_y );
    vBlurCoord1s[8] = inputTextureCoordinate + vec2( -6.0 * mul_x, 0.0 * mul_y );
    vBlurCoord1s[9] = inputTextureCoordinate + vec2( -4.0 * mul_x, 4.0 * mul_y );
    vBlurCoord1s[10] = inputTextureCoordinate + vec2( 0.0 * mul_x, 6.0 * mul_y );
    vBlurCoord1s[11] = inputTextureCoordinate + vec2( 4.0 * mul_x, 4.0 * mul_y );
    vBlurCoord1s[12] = inputTextureCoordinate + vec2( 6.0 * mul_x, 0.0 * mul_y );
    vBlurCoord1s[13] = inputTextureCoordinate + vec2( 4.0 * mul_x, -4.0 * mul_y );
}