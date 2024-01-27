extends Node2D

var dict: Dictionary
var difficulty: Dictionary
var x: int = 1

func _process(delta):
	if Input.is_action_pressed("exit_game"):
		get_tree().quit()
	
func set_dict(value: Dictionary) -> void:
	dict = value
	print(dict)
	
func g_set_difficulty(value: Dictionary) -> void:
	difficulty = value
	print(difficulty)
	
func get_difficulty():
	return difficulty
