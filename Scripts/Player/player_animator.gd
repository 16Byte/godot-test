extends Node2D

@export var player_controller : PlayerController
@export var animation_player : AnimationPlayer
@export var sprite : Sprite2D

# basically Unity's Update() function
func _process(_delta: float) -> void:
	HandleFlip()
	
	# If our horizontal velocity is positive show the moving animation
	if abs(player_controller.velocity.x) > 0.0:
		animation_player.play("move")
	# Else, we're not moving. So, show the idle animation
	else:
		animation_player.play("idle")
		
	# If we're jumping or falling we instead show those animations
	if (player_controller.velocity.y) < 0.0:
		animation_player.play("jump")
	elif (player_controller.velocity.y) > 0.0:
		animation_player.play("fall")
	# also up is down, down is up, in godot. not sure why

# Handles the horizontal direction of the animation being played
# based on the player_controller's input direction.
func HandleFlip() -> void:
	if player_controller.direction == 1:
		sprite.flip_h = false
	elif player_controller.direction == -1:
		sprite.flip_h = true
