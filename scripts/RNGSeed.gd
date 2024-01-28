extends Node

var rando = RandomNumberGenerator.new()
var x: int
var y: int
# The three characters to choose to date
var chosen = {0: false, 1: false, 2: false}



 
# When the new game is created a seed is sent through the script and
# made into range between the dictionary numbers

func _on_menu_demon(value):
	rando.seed = value
	x = rando.randi_range(0, chosen.size() - 1)
	y = 0
	print(x)
	for key in chosen:
		if y == x:
			chosen[key] = true
			global.set_demon(chosen);
			print(chosen)
			break
		y += 1
