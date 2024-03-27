extends Node
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _on_back_button_pressed():
	get_tree().change_scene_to_file("res://scene/Main.tscn")

func _on_level_1_pressed():
	get_tree().change_scene_to_file("res://scene/sideView.tscn")
