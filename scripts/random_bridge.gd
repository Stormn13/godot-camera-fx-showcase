extends Node3D
var random_value: float
@onready var glitch_rect := $CanvasLayer/ColorRect
@onready var shader_mat := glitch_rect.material as ShaderMaterial
func _process(delta: float) -> void:
	random_value = randf()
	shader_mat.set_shader_parameter("random_value" , random_value)
