extends Node

var rando = RandomNumberGenerator.new()
var x: int
var y: int
# The three characters to choose to date
var dict = {"Mason": false, "Lewis": false, "Kara": false}


 
# When the new game is created a seed is sent through the script and
# made into range between the dictionary numbers

func _on_menu_demon(value):
	rando.seed = value
	x = rando.randi_range(0, dict.size() - 1)
	y = 0
	print(x)
	for key in dict:
		if y == x:
			dict[key] = true
			global.set_demon(dict);
			Dialogic.VAR.set("Skinwalker", key)
			print(Dialogic.VAR.get("Skinwalker"))
			print(dict)
			break
		y += 1
