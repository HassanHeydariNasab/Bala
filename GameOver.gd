extends Control

func _ready():
	pass


func _on_GameOver_gui_input(event):
	if event is InputEventMouseButton or event is InputEventScreenTouch:
		get_tree().change_scene("res://Main.tscn")
