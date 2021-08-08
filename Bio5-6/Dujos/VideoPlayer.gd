extends Control

onready var img = $StartImage
onready var video1 = $Video1
onready var video2 = $Video2
onready var video3 = $Video3


#missing fade transition between videos 2 and 3

func _ready():
	video1.set_visible(false)
	video2.set_visible(false)
	video3.set_visible(false)


func _on_ButtonUIpanel_scene_changed(scene):
	match scene:
		1:
			img.set_visible(true)
			video1.set_visible(false)
			video2.set_visible(false)
			video3.set_visible(false)
		2:
			img.set_visible(false)
			video1.set_visible(true)
			video2.set_visible(false)
			video3.set_visible(false)
			video1.play()
		3:
			video1.set_visible(false)
			video2.set_visible(false)
			video3.set_visible(true)
			video3.play()

func _on_Video1_finished():
	video2.set_visible(true)
	video1.set_visible(false)
	video2.play()

func _on_Video2_finished():
	video2.play()

func _on_Video3_finished():
	video3.play()
