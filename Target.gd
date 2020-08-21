extends Area2D

func _ready():
	pass

func _draw():
	draw_arc(
		Vector2(0,0), 20, 0, 2.0*PI,
		32, Color('#90A4AE'), 7.0
	)
	draw_circle(Vector2(0,0), 5, Color('#90A4AE'))


func _on_Target_area_entered(area):
	G.level += 1
	get_tree().reload_current_scene()
