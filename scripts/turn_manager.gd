extends Node 
enum GamePhase { CHOIX, RESOLUTION }
var phase = GamePhase.CHOIX
var player1_action = null
var player2_action = null
var timer = 10.0
var timer_running = false

func start_turn():
	phase = GamePhase.CHOIX
	timer_running = true
	player1_action = null
	player2_action = null


func _on_Timer_timeout():
	timer_running = false
	resolve_actions()

func submit_action(player_id, action):
	if player_id == 1:
		player1_action = action
	elif player_id == 2:
		player2_action = action

	if player1_action != null and player2_action != null:
		$Timer.stop()
		timer_running = false
		resolve_actions()

func play_animation_for(action_data):
	var target = $Player1 if action_data.player_id == 1 else $Player2
	target.play_action_animation(action_data)

func wait_for_animations():
	await $Player1.animation_done
	await $Player2.animation_done


func resolve_actions():
	phase = GamePhase.RESOLUTION
	# Ordre logique ici : déplacements puis attaques
	play_animation_for(player1_action)
	play_animation_for(player2_action)

	await wait_for_animations()
	start_turn()
