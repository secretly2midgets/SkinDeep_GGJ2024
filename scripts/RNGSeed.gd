extends Node

var rando = RandomNumberGenerator.new()
var x: int
var dict = {0: false, 1: false, 2: false, 3: false, 4: false, 5: false, 6: false, 7: false}

# Called when the node enters the scene tree for the first time.

 

func _on_menu_demon(value):
	rando.seed = value
	x = rando.randi_range(0, 7)
	for key in dict:
		if key == x:
			dict[key] = true
			global.setDict(dict);
			break
