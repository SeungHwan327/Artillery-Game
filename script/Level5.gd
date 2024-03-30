extends Node2D

# 이동 속도
var speed = 200

# 회전 속도 (라디안 단위)
var rotation_speed = 0.5

# 이동할 오브젝트의 참조
var object_to_move

# 회전 각도의 최솟값과 최댓값
var min_rotation = deg_to_rad(-60) 
var max_rotation = deg_to_rad(0)  

func _ready():
	# 이동할 오브젝트의 참조 획득
	object_to_move = get_node("Cannon")
	
	# 초기 각도 설정
	object_to_move.rotation = max_rotation

func _process(delta):
	# 아래 방향키가 눌렸을 때
	if Input.is_action_pressed("ui_down"):
		# 회전 각도를 시계 방향으로 회전
		object_to_move.rotation += rotation_speed * delta
		# 최댓값을 넘어가면 최댓값으로 설정
		if object_to_move.rotation > max_rotation:
			object_to_move.rotation = max_rotation
	# 위 방향키가 눌렸을 때로
	elif Input.is_action_pressed("ui_up"):
		# 회전 각도를 반시계 방향으로 회전
		object_to_move.rotation -= rotation_speed * delta
		# 최솟값을 넘어가면 최솟값으로 설정
		if object_to_move.rotation < min_rotation:
			object_to_move.rotation = min_rotation

func _on_back_button_pressed():
	get_tree().change_scene_to_file("res://scene/list.tscn")

func _on_first_pressed():
	get_tree().change_scene_to_file("res://scene/Main.tscn")
