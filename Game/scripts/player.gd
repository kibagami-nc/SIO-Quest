extends CharacterBody2D

@export var speed : float = 100
var character_direction : Vector2

func _physics_process(delta):
	# Utilisation de get_vector pour éviter d'aller trop vite en diagonale
	character_direction = Input.get_vector("left", "right", "up", "down")
	
	if character_direction.x > 0: 
		%AnimatedSprite2D.flip_h = false
	elif character_direction.x < 0: 
		%AnimatedSprite2D.flip_h = true
	
	if character_direction != Vector2.ZERO:
		velocity = character_direction * speed
		if %AnimatedSprite2D.animation != "right": %AnimatedSprite2D.play("right")
	else:
		# Utilise une valeur de friction (ex: 500) au lieu de speed pour un arrêt net
		velocity = velocity.move_toward(Vector2.ZERO, speed)
		if %AnimatedSprite2D.animation != "idle": %AnimatedSprite2D.play("idle")
		
	move_and_slide()
