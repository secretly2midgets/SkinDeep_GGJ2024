extends Node2D
var profiles = {"Mason": false, "Lewis": false, "Kara": false,
 "Kali": false, "Raymond": false, "John": false, "Kelsey": false,
 "Grace": false}
var demon
var demonReshuffle: Dictionary
#variable for counting where on the list of profiles you are
var counter: int = 0
var tripleSwipe: int = 0
var actual_game = "res://scenes/game.tscn"
# Called when the node enters the scene tree for the first time.
func _ready():
	demon = global.get_demon()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

#swipe left and discard date option increase counter when the counter
#reaches the end of the dictionary check for fail condition
func _on_left_pressed():
	if counter < profiles.size() - 1:
		profiles[counter] = false
		counter += 1
	else: check_profiles()
	#Checks for fail condition and sends player to next scene if 
	#fail condition isnt met
func check_profiles():
	print("here")
	if tripleSwipe == 3:
		var x = 0
		var stri
		for keys in profiles:
			if profiles[keys] == true:
				print(profiles)
				#if x == 0:
					#stri = "One"
					#Dialogic.VAR.set("SwipeRight" + stri, profiles[keys])
					#print(Dialogic.VAR.get("SwipeRight" + stri))
				#elif x == 1:
					#stri = "Two"
					#Dialogic.VAR.set("SwipeRight" + stri, profiles[keys])
					#print(Dialogic.VAR.get("SwipeRight" + stri))
				#elif x == 2:
					#stri = "Three"
					#Dialogic.VAR.set("SwipeRight" + stri, profiles[keys])
					#print(Dialogic.VAR.get("SwipeRight" + stri))
				demonReshuffle[keys] = demon[x]
				
				x = x + 1
				
		print(demonReshuffle)
		get_tree().change_scene_to_file(actual_game)
		
	else: global.game_over()
	

#swipes right and selects player for date only a maximum of three
#people
func _on_right_pressed():
	
	if counter < profiles.size():
		tripleSwipe += 1
		profiles[counter] = true
		counter += 1
		if counter == profiles.size():
			if tripleSwipe != 3:
				global.game_over()
				
	else: check_profiles()
	if tripleSwipe == 3:
		print("right pressed")
		check_profiles()
