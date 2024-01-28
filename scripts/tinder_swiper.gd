extends Node2D
var profiles = {"Mason": false, "Lewis": false, "Kara": false,
 "Kali": false, "Raymond": false, "John": false, "Kelsey": false,
 "Grace": false}
var demon
var reverseProf = {0: "Mason",1: "Lewis",2: "Kara", 3:"Kali",
 4: "Raymond", 5: "John", 6: "Kelsey",
 7: "Grace"}
var rangeList = [0, 1, 2, 3, 4, 5, 6]
var demonReshuffle: Dictionary
#variable for counting where on the list of profiles you are
var counter: int = 0
var tripleSwipe: int = 0
var actual_game = "res://scenes/game.tscn"
# Called when the node enters the scene tree for the first time.
func _ready():
	demon = global.get_demon()
	rangeList.shuffle()
	$DateName.text = reverseProf[rangeList[counter]]

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

#swipe left and discard date option increase counter when the counter
#reaches the end of the dictionary check for fail condition
	
	
func _on_left_pressed():
	if counter < profiles.size() - 1:
		profiles[reverseProf[rangeList[counter]]] = false
		counter += 1
		if counter < profiles.size() - 1:
			$DateName.text = reverseProf[rangeList[counter]]
	else: check_profiles()
	#Checks for fail condition and sends player to next scene if 
	#fail condition isnt met
func check_profiles():
	if tripleSwipe == 3:
		var x = 0
		var stri
		for key in profiles:
			if profiles[key] == true:
				if x == 0:
					Dialogic.VAR.set("SwipeRightOne", key)
					if demon[x]:
						Dialogic.VAR.set("Skinwalker", key)
				elif x == 1:
					Dialogic.VAR.set("SwipeRightTwo", key)
					if demon[x]:
						Dialogic.VAR.set("Skinwalker", key)
				elif x == 2:
					Dialogic.VAR.set("SwipeRightThree", key)
					if demon[x]:
						Dialogic.VAR.set("Skinwalker", key)
				x = x + 1
				
		get_tree().change_scene_to_file(actual_game)
		
	else: global.game_over()
	

#swipes right and selects player for date only a maximum of three
#people
func _on_right_pressed():
	if counter < profiles.size():
		tripleSwipe += 1
		profiles[reverseProf[rangeList[counter]]] = true
		counter += 1
		$DateName.text = reverseProf[rangeList[counter]]
		if counter == profiles.size():
			if tripleSwipe != 3:
				global.game_over()
				
	else: check_profiles()
	if tripleSwipe == 3:
		print("right pressed")
		check_profiles()
