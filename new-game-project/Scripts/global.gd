extends Node

var levels = []
var scores = []
var unlocked_levels = 1
var curr_level = 0

const BASE_SCORE_GOAL := 10
const SCORE_INCREMENT := 5

func get_current_score() -> int:
	if curr_level >= scores.size():
		scores.resize(curr_level + 1)
		scores[curr_level] = 0
	return scores[curr_level]

func add_score(amount: int) -> void:
	if curr_level >= scores.size():
		scores.resize(curr_level + 1)
		scores[curr_level] = 0

	scores[curr_level] += amount

func get_score_goal(level: int) -> int:
	return BASE_SCORE_GOAL + level * SCORE_INCREMENT

func is_level_complete() -> bool:
	return get_current_score() >= get_score_goal(curr_level)

func reset_score_for_level(level_index: int):
	if level_index >= scores.size():
		scores.resize(level_index + 1)
	scores[level_index] = 0
