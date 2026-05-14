extends Camera3D

@export var sensitivity := 0.005

var pitch := 0.0

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _input(event):

	if event is InputEventMouseMotion:

		rotation.y -= event.relative.x * sensitivity

		pitch -= event.relative.y * sensitivity
		pitch = clamp(pitch, deg_to_rad(-90), deg_to_rad(90))

		rotation.x = pitch
