extends CharacterBody2D

var speed := 300

func _physics_process(delta):
	var direction := 0

	if Input.is_action_pressed("ui_left"):
		direction -= 1
	if Input.is_action_pressed("ui_right"):
		direction += 1

	velocity.x = direction * speed
	velocity.y = 0
	move_and_slide()

	if get_slide_collision_count() > 0:
		var collision = get_last_slide_collision()
		if collision and collision.get_collider() is Node2D:
			var collider_node = collision.get_collider() as Node2D
			global.add_score(1)
			collider_node.position = Vector2(randf_range(0, 250), -800)
			if global.is_level_complete():
					print("Level Complete!")  # Replace with scene transition or UI
