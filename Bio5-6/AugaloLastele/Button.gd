extends Button

onready var arrows = $Arrows
onready var bg = $Background

export(String) var text_input = ""

signal hover

func _ready():
	self.connect("mouse_entered", self, "describe")
	self.connect("mouse_exited",self,"hide")

func describe():
	bg.set_visible(true)
	arrows.set_visible(true)
	emit_signal("hover")
	
func hide():
	bg.set_visible(false)
	arrows.set_visible(false)
