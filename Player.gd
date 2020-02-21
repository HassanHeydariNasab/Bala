extends Area2D


const HEALTH = 100.0
var health = 100.0 setget set_health
func set_health(value):
	if value < 0.0:
		value = 0.0
	health = value

func _ready():
	pass

func _draw():
	draw_circle(Vector2(0,0), 50, Color(1,1,1,1))
	draw_arc(
		Vector2(0,0), 50, 0, (health/HEALTH)*2.0*PI,
		32, Color('#64DD17'), 10.0
	)

func _on_Player_area_entered(area):
	area.queue_free()
	self.health -= 10
	if health <= 0:
		get_tree().change_scene('res://GameOver.tscn')
	update()
	
