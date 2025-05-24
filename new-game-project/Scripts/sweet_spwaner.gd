extends Node2D

var motichoor_ladoo = preload("res://Scenes/Sweets/Mothichoor_ladoo.tscn")
var spawn_points = []

func _ready():
	randomize()
	spawn_points = $Spawner.get_children()
	$Timer.timeout.connect(_on_Timer_timeout)
	$Timer.start()

func spawn_motichoor_ladoo():
	var index = randi() % spawn_points.size()
	var ladoo = motichoor_ladoo.instantiate()
	ladoo.global_position = spawn_points[index].global_position
	get_parent().add_child(ladoo)

func _on_Timer_timeout():
	spawn_motichoor_ladoo()
