extends Node2D

onready var desc = $DescriptionBox
onready var wallButton = $WallButton
onready var membraneButton = $MembraneButton
onready var coreButton = $CoreButton
onready var cytoplasmButton = $CytoplasmButton
onready var vacuolemButton = $VacuoleButton
onready var chloroplastButton = $ChloroplastButton

func _on_WallButton_hover():
	desc.text = wallButton.text_input
func _on_MembraneButton_hover():
	desc.text = membraneButton.text_input
func _on_CoreButton_hover():
	desc.text = coreButton.text_input
func _on_CytoplasmButton_hover():
	desc.text = cytoplasmButton.text_input
func _on_VacuoleButton_hover():
	desc.text = vacuolemButton.text_input
func _on_ChloroplastButton_hover():
	desc.text = chloroplastButton.text_input
