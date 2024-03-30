extends Node2D

func _on_back_button_pressed():
	get_tree().change_scene_to_file("res://scene/Main.tscn")

func _on_button_pressed():
	get_tree().change_scene_to_file("res://scene/artillery.tscn")

func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://scene/TOT.tscn")
