extends Node2D

var dict: Dictionary
var x: int = 1

func _process(delta):
	if Input.is_action_pressed("exit_game"):
		get_tree().quit()
	
	
func setDict(value: Dictionary) -> void:
	dict = value
	print(dict)
	
