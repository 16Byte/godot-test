extends Node2D

var my_int : int = 5;

func _ready() -> void:
	DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED)
	
func _process(delta: float) -> void:
	print(Engine.get_frames_per_second())
