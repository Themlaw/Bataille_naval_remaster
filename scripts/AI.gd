extends Node2D

func play_action_animation(action_data):
	match action_data.type:
		"move":
			# Lance une animation de déplacement
			$AnimationPlayer.play("move")
		"attack":
			$AnimationPlayer.play("shoot")
