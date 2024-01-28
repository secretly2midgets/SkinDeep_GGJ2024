extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	if Dialogic.current_timeline == null:
		Dialogic.start('OpeningNarration')


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
