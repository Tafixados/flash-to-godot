extends Panel

onready var label = $Label
onready var right = $Rightbutton
onready var left = $LeftButton
onready var restart = $RestartButton
export(int) var currentscene = 1
export(int) var max_scenes = 3

signal scene_changed(scene)

func _ready():
	set_label()

func update():
	set_label()
	emit_signal("scene_changed", currentscene)

func _process(_delta):
	
	match currentscene:
		1:
			right.set_disabled(false)
			left.set_disabled(true)
		max_scenes:
			right.set_disabled(true)
			left.set_disabled(false)
		_:
			right.set_disabled(false)
			left.set_disabled(false)

func set_label():
	label.text = str(currentscene) + " / " + str(max_scenes)

func _on_RestartButton_pressed():
	get_tree().reload_current_scene()


func _on_Rightbutton_pressed():  #next scene
	currentscene += 1
	update()

func _on_LeftButton_pressed(): #previous scene
	currentscene -= 1
	update()
