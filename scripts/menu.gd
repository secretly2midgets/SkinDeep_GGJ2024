extends Node
signal demon(value)
var demonSeeder = RandomNumberGenerator.new()
var actual_game = "res://scenes/game.tscn"
var options_screen = "res://scenes/options_screen.tscn"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_options_button_pressed():
	get_tree().change_scene_to_file(options_screen)
# Creats a random seed to send to the main script
func _on_new_game_button_pressed():
	# Setting up the demon seed to send to the game
	demonSeeder.randomize()
	emit_signal("demon", demonSeeder.seed)
	get_tree().change_scene_to_file(actual_game)

func _on_exit_button_pressed():
	get_tree().quit()


