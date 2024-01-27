extends Node

var rando = RandomNumberGenerator.new()


# Called when the node enters the scene tree for the first time.

 


func _on_menu_demon(value):
	rando.seed = value
	print(rando.randi_range(0,7))
	print(rando.randi_range(0,7))
	rando.seed = value
	print(rando.randi_range(0,7))
