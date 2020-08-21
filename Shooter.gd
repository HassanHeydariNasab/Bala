extends Node2D

var Bullet = preload('res://Bullet.tscn')
onready var Interval = $Interval
onready var Bullets = get_node('/root/Main/Level/Bullets')
onready var Rotation:Tween = $Rotation

func _ready():
	Rotation.interpolate_property(self, 'rotation_degrees', self.get_rotation_degrees(), self.get_rotation_degrees()+360, 5, Tween.TRANS_LINEAR, Tween.EASE_IN)
	Rotation.start()

func _on_Interval_timeout():
	var Bullet_ = Bullet.instance()
	Bullet_.set_global_position(get_global_position())
#	Bullet_.set_rotation(rand_range(0,360))
	Bullet_.set_rotation(self.get_rotation())
	Bullets.add_child(Bullet_)
