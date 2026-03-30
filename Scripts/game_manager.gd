extends Node

var level_index = 1
var levels_path = "res://Scenes/Levels/"

func next_level(): 
	level_index += 1
	var full_level_path = levels_path + "level_" + str(level_index) + ".tscn"
	get_tree().change_scene_to_file(full_level_path)
	print("loaded level " + str(level_index))
