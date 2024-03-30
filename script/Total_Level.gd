extends Node

func _ready():
	pass

func _on_back_button_pressed():
	get_tree().change_scene_to_file("res://scene/Main.tscn")

func _on_level_1_pressed():
	get_tree().change_scene_to_file("res://scene/Level1.tscn")

func _on_level_2_pressed():
	get_tree().change_scene_to_file("res://scene/Level2.tscn")

func _on_level_3_pressed():
	get_tree().change_scene_to_file("res://scene/Level3.tscn")

func _on_level_4_pressed():
	get_tree().change_scene_to_file("res://scene/Level4.tscn")

func _on_level_5_pressed():
	get_tree().change_scene_to_file("res://scene/Level5.tscn")
