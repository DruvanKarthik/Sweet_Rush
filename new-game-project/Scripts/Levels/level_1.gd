extends Sprite2D

@onready var score: Label = $Score

func _process(delta: float) -> void:
	score.text = "%d / %d" % [
		global.get_current_score(),
		global.get_score_goal(global.curr_level)
	]
