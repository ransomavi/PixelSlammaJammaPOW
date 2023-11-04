extends Node2D
class_name Level2

var crate_count : int = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("/root/Level2/Crates/Crate").crate_hit.connect(decrease_crates)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if crate_count == 0:
		#await get_tree().create_timer(0.3).timeout
		Global.switch_scene("res://Scenes/Level3.tscn")
	else:
		count_crates()

func count_crates():
	var crate_children = get_node("Crates").get_child_count()
	crate_count = crate_children
	

func decrease_crates():
	crate_count -= 1

