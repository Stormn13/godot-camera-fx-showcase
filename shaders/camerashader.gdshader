shader_type canvas_item;

uniform float random_value;
uniform float intensity;

float random(vec2 p){
	return fract(
		sin(dot(p, vec2(12.9898,78.233)))
		* 43758.5453
	);
}

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	// Called for every pixel the material is visible on.
	float r = random(UV + random_value);
	if(r > intensity){
		COLOR = vec4(1.0, 1.0, 1.0, 0.8);
	}
	else{
		COLOR = vec4(1.0, 1.0, 1.0, 0);
	}
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
