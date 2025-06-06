extends Control
@onready var main_buttons: VBoxContainer = $Main_buttons
@onready var options: Panel = $Options
@onready var back_button: Button = $Options/Back_button

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	main_buttons.visible = true
	options.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_start_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Levels/level_1.tscn");


func _on_options_button_pressed() -> void:
	main_buttons.visible = false
	options.visible = true

func _on_exit_pressed() -> void:
	get_tree().quit()


func _on_back_button_pressed() -> void:
	main_buttons.visible = true
	options.visible = false
