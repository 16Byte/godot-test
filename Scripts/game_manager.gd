extends Node

# considering changing to an array of scenes in the future
# but honestly this system isn't terrible for a gamejam environment/game

var final_level = 2

var level_index = 1
var levels_path = "res://Scenes/Levels/"

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_close_dialog"):
		get_tree().quit()

func next_level(): 
	var full_level_path 

	# iterate through the levels
	if level_index < final_level:
		level_index += 1
		full_level_path = levels_path + "level_" + str(level_index) + ".tscn"

	# out of levels?
	elif level_index >= final_level:
		full_level_path = "res://Scenes/test_area.tscn"

	get_tree().change_scene_to_file(full_level_path)
	print("loaded level " + full_level_path)
