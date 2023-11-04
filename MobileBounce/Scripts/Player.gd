extends RigidBody2D

var first_touch
var release

func _process(delta):
	if Input.is_action_just_pressed("click"):
		first_touch = get_global_mouse_position()
	
	if Input.is_action_just_released("click"):
		release = get_global_mouse_position()
		
		var dir = (release - first_touch).normalized()
		
		linear_velocity = dir * delta * 55000
