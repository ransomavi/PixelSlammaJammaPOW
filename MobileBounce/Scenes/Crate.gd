extends RigidBody2D
class_name Crate

#var contacts = get_contact_count()

signal crate_hit()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if body.name == "Player":
		emit_signal("crate_hit")
		queue_free()
