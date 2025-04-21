extends Control

@onready var map_selector = $VBoxContainer/map_selector
@onready var mode_selector = $VBoxContainer/mode_selector
@onready var play_button = $VBoxContainer/play_button
@onready var rules_button = $VBoxContainer/rules_button

func _ready():
	# Cartes disponibles
	map_selector.add_item("Map1")
	map_selector.add_item("Map2")
	map_selector.add_item("Map3")

	# Modes de jeu
	mode_selector.add_item("Joueur vs IA")
	mode_selector.add_item("Joueur vs Joueur")

	play_button.pressed.connect(_on_play_pressed)
	rules_button.pressed.connect(_on_rules_pressed)

func _on_play_pressed():
	var selected_map = map_selector.get_selected_id()
	var selected_mode = mode_selector.get_selected_id()

	# Tu peux stocker les choix dans un singleton (Autoload)
	GlobalSettings.selected_map = selected_map
	GlobalSettings.selected_mode = selected_mode

	get_tree().change_scene_to_file("res://Scenes/Game.tscn")

func _on_rules_pressed():
	get_tree().change_scene_to_file("res://Scenes/Rules.tscn")
