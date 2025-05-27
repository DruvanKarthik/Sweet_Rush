extends CharacterBody2D
func _physics_process(delta):
	velocity = Vector2(0, 580)
	move_and_slide()
	if position.y>580:
		position.y = -800
		position.x = randf_range(0,250)
