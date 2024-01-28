extends Node

var rando = RandomNumberGenerator.new()
var x: int
# The three characters to choose to date
var dict = {0: false, 1: false, 2: false}


 
# When the new game is created a seed is sent through the script and
# made into range between the dictionary numbers

func _on_menu_demon(value):
	rando.seed = value
	x = rando.randi_range(0, dict.size() - 1)
	print(x)
	for key in dict:
		if key == x:
			dict[key] = true
			global.set_demon(dict);
			print(dict)
			break
