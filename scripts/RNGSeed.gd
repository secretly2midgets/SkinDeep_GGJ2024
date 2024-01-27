extends Node

var rando = RandomNumberGenerator.new()
var x: int
var dict = {0: false, 1: false, 2: false}

# Called when the node enters the scene tree for the first time.

 

func _on_menu_demon(value):
	rando.seed = value
	x = rando.randi_range(0, dict.size() - 1)
	print(x)
	for key in dict:
		if key == x:
			dict[key] = true
			global.set_dict(dict);
			print(dict)
			break
