extends Control

onready var img = $StartImage
onready var video1 = $Video1
onready var video2 = $Video2
onready var video3 = $Video3


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	video1.set_visible(false)
	video2.set_visible(false)
	video3.set_visible(false)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Video1_finished():
	video2.set_visible(true)
	video1.set_visible(false)
	video2.play()


func _on_Video2_finished():
	video2.play()


func _on_StartImage_pressed():
	video1.set_visible(true)
	img.set_visible(false)
	video1.play()


func _on_Video2Button_pressed():
	video2.set_visible(false)
	video3.set_visible(true)
	video3.play()


func _on_Video3_finished():
	video3.play()


func _on_Button_pressed():
	get_tree().reload_current_scene()
