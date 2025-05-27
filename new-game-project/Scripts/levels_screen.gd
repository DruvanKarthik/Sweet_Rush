extends Control
func _ready():
	for i in range($levels.get_child_count()):
		global.levels.append(i+1)
	for level in $levels.get_children():
		if str_to_var(level.name) in range(global.unlocked_levels+1):
			level.disabled  = false
			level.connect("pressed",change_level(level.name))
		else:
			level.disable = true
func change_level(lvl_no):
	get_tree().change_scene_to_file("res://Scenes/Levels/level_"+str(lvl_no)+".tscn")
