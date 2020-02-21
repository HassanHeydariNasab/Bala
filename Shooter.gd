extends Node2D

var Bullet = preload('res://Bullet.tscn')
onready var Interval = $Interval
onready var Bullets = get_node('/root/Main/Bullets')

func _ready():
	pass


func _on_Interval_timeout():
	var Bullet_ = Bullet.instance()
	Bullet_.set_global_position(get_global_position())
	Bullet_.set_rotation(rand_range(0,360))
	Bullets.add_child(Bullet_)
