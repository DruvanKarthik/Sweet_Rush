extends Area2D

@export var fall_speed := 200
var is_caught := false

func _process(delta):
	if !is_caught:
		position.y += fall_speed * delta

	# Optional: auto-remove if it falls off screen
	if position.y > get_viewport_rect().size.y:
		queue_free()

func _on_Sweet_body_entered(body):
	if body.name == "Plate" and !is_caught:
		is_caught = true

		# Remove collision so it doesn’t trigger multiple times
		$CollisionShape2D.disabled = true

		# Make sweet a child of plate so it moves with it
		get_parent().remove_child(self)
		body.add_child(self)

		# Adjust the sweet's position to "sit" on top of the plate
		var offset = Vector2(0, -10)  # Adjust as needed
		position = body.to_local(global_position) + offset
