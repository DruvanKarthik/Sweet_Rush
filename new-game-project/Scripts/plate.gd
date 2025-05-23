extends CharacterBody2D  # Prefer CharacterBody2D or KinematicBody2D for movement

var speed := 300

func _physics_process(delta):  # Better to use _physics_process for movement
	var direction := 0

	if Input.is_action_pressed("ui_left"):
		direction -= 1
	if Input.is_action_pressed("ui_right"):
		direction += 1

	velocity.x = direction * speed
	velocity.y = 0  # Optional: if you want vertical movement zeroed
	move_and_slide()
