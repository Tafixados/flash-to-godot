extends Button

onready var arrows = $Arrows

export(String) var text_input = ""

func describe():
	arrows.set_visible(true)
	return text_input

func hide():
	arrows.set_visible(false)

