extends Path2D
class_name MovingPlatform

@export var path_time = 1.0
@export var looping = false
@export var easeType : Tween.EaseType
@export var transition : Tween.TransitionType
@export var path_follow_2D : PathFollow2D

func _ready():
	move_tween()
	
func move_tween():
	var tween = get_tree().create_tween().set_loops() # loops the tweens
	tween.tween_property(path_follow_2D, "progress_ratio", 1.0, path_time).set_ease(easeType).set_trans(transition)
	if not looping:
		tween.tween_property(path_follow_2D, "progress_ratio", 0.0, path_time).set_ease(easeType).set_trans(transition)
	else:
		tween.tween_property(path_follow_2D, "progress_ratio", 0.0, 0.0).set_ease(easeType).set_trans(transition)
	# Tweens happen sequentially. The second tween will begin when the previous one is complete.
