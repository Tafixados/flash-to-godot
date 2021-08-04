extends Area2D


export(String) var textbox_input = ""

onready var arrow = $Arrow
onready var textbox = $TextBox

func _ready():
	textbox.text = textbox_input
	self.connect("mouse_entered", self, "show")
	self.connect("mouse_exited",self,"hide")

func show():
	arrow.set_visible(true)
	textbox.set_visible(true)
	
func hide():
	arrow.set_visible(false)
	textbox.set_visible(false)
