extends CharacterBody2D

const speed = 100

func _physics_process(delta: float) -> void:
	pass

func player_movement(delta):
	if Input.is_action_pressed("ui_right"):
		velocity.x = speed
		velocity.y = 0
	if Input.is_action_pressed("ui_down"):
		velocity.x = 0
		velocity.y = speed
