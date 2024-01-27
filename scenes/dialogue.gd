extends Node

var dialogue = {
	"intro": {
		"dialogue":
			"Character dialogue",
		"Option1": {
			"text": "Yes",
			"value": "example_effect"
		},
		"Option2": {
			"text": "No",
			"value": ""
		},
		"Option3": {
			"text": "Maybe",
			"value": ""
		}
	},
	"example_effect": {
		"func": "",
		"args": []
	}
}: set = set_dialogue

var state = {}: set = set_state

func _ready():
	set_state(dialogue["intro"])
	process_state(state)
	pass

func change_scene(scene):
	get_tree().change_scene(scene)
	pass

func set_state(new_state):
	state = new_state
	pass

func set_dialogue(new_dialogue):
	dialogue = new_dialogue
	pass

func display_state(state):
	$Label.text = state["dialogue"]
	$Option1/Label.text = state["Option1"]["text"]
	$Option2/Label.text = state["Option2"]["text"]
	$Option3/Label.text = state["Option3"]["text"]
	pass

func process_state(state):
	if state.has("func"):
		return callv(state["func"], state["args"])
	if state.has("dialogue"):
		display_state(state)
	pass

func _on_option_1_pressed():
	state = dialogue[state["Option1"]["value"]]
	process_state(state)
	pass

func _on_option_2_pressed():
	state = dialogue[state["Option2"]["value"]]
	process_state(state)
	pass

func _on_option_3_pressed():
	state = dialogue[state["Option3"]["value"]]
	process_state(state)
	pass
