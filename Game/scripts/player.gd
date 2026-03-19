extends CharacterBody2D

@export var speed = 100
var character_direction : Vector2

func _physics_process(delta: float) -> void:
	character_direction.x = Input.get_axis("left", "right")
	character_direction.y = Input.get_axis("up", "down")
	
	if character_direction.x > 0: %sprite.flip_h = false
	elif character_direction.x < 0: %sprite.flip_h = true
	
	if character_direction:
		velocity = character_direction * speed
		if %sprite.animation != ""



func player_movement(delta):
	pass
