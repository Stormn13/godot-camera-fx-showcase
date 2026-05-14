extends Node3D
var random_value: float
@onready var glitch_rect := $CanvasLayer/ColorRect
@onready var shader_mat := glitch_rect.material as ShaderMaterial
@export_range(0.0, 1) var intensity: float = 0.99
func _process(delta: float) -> void:
	random_value = randf()
	shader_mat.set_shader_parameter("random_value" , random_value)
	shader_mat.set_shader_parameter("intensity", intensity)
