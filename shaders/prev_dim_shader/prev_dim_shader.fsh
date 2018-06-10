//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 texColor = texture2D( gm_BaseTexture, v_vTexcoord );
    gl_FragColor = vec4(texColor.r, texColor.g, texColor.b, 0.10);
}
