extends Area2D

const SPEED = 10


func _ready():
	pass



func _on_MoveInterval_timeout():
	var angle = get_rotation()
	global_translate(Vector2(cos(angle)*SPEED, sin(angle)*SPEED))
