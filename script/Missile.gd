extends Node2D

# 미사일 속도
var velocity = Vector2.ZERO

# 중력
const GRAVITY = 2000

# 초기 속도
var initial_speed = 1000

# 발사 각도 (라디안)
var launch_angle = deg_to_rad(45)

func _ready():
	# 미사일 초기 속도 계산
	velocity.x = initial_speed * cos(launch_angle)
	velocity.y = -initial_speed * sin(launch_angle)

func _process(delta):
	# 중력에 따라 속도 업데이트
	velocity.y += GRAVITY * delta
	
	# 미사일 이동
	position += velocity * delta
