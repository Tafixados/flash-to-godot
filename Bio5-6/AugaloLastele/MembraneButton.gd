extends Button

onready var arrow2 = $Arrow2

export(String) var text_input = ""

func describe():
	arrow2.set_visible(true)
	return text_input

func hide():
	arrow2.set_visible(false)
