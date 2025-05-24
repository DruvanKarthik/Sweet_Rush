extends CharacterBody2D

const fall_speed = 300.0
var is_caught = false

func _physics_process(delta):
	if not is_caught:
		var collision = move_and_collide(Vector2(0, fall_speed * delta))
		if collision:
			var collider = collision.get_collider()
			if collider.name == "Plate":
				# Stick the sweet to the plate
				is_caught = true
				get_parent().remove_child(self)
				collider.add_child(self)
				position = collider.to_local(global_position)
