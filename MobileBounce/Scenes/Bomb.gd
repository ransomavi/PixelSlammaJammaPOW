extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if body.name == "Player":
		get_node("BombSprite").visible = false
		get_node("AsplodeSprite").visible = true
		await get_tree().create_timer(0.3).timeout
		Global.switch_scene("res://Scenes/Level1.tscn")
