extends Node2D

var demon: Dictionary
var difficulty: Dictionary
var profiles: Dictionary
var dates: Dictionary
var x: int = 1


func _process(delta):
	if Input.is_action_pressed("exit_game"):
		get_tree().quit()
	
#sets the demon from the RNGSeed script
func set_demon(value: Dictionary) -> void:
	demon = value

func get_demon():
	return demon
	
func set_difficulty(value: Dictionary) -> void:
	difficulty = value
	#print(difficulty)
	
func get_difficulty():
	return difficulty

func set_dates(value: Dictionary):
	profiles = value
	#print(dates)
func get_dates():
	return dates
func game_over() -> void:
	get_tree().quit()
