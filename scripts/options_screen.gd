extends Node

var difficulty = {"Easy": false, "Medium": false, "Hard": false}

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.





func _on_easy_button_difficulty(value):
	set_difficulty(value)

func _on_medium_button_difficulty(value):
	set_difficulty(value)
	
func _on_hard_button_difficulty(value):
	set_difficulty(value)
#checks the button pressed agains the dictionary to set the right difficulty
func set_difficulty(value):
	for key in difficulty:
		if key == value:
			difficulty[key] = true
		else: difficulty[key] = false
		
	global.g_set_difficulty(difficulty)

