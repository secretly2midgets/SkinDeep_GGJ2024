extends Node2D

var attractionLevel
var attractionThreshold
var isDemon

var defaultSprite
var loveSprite
var demonSprite

# Called when the node enters the scene tree for the first time.
func _ready():
	isDemon = false # update to true if demon
	attractionLevel = 0 # maybe not always 0 at the get-go?
	attractionThreshold = 3 # arbitrary

func secretlyMonster():
	# call this function when you select this person to be the monster
	isDemon = true

func revealMonster():
	$Sprite2D.texture = load(demonSprite)

func changeAttraction(attractionShift):
	attractionLevel += attractionShift
	if attractionLevel >= attractionThreshold:
		$Sprite2D.texture = load(loveSprite)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
