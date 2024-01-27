extends Node2D

var rngSeeder = RandomNumberGenerator.new()
var p1 
var p2



# Called when the node enters the scene tree for the first time.
func SendRandom(car):
	p1 = 0
	p2 = 1
	rngSeeder.randomize()
	print(rngSeeder.seed)
	if p1 == rngSeeder:
		print(p1)
	car = rngSeeder
		
	
 
