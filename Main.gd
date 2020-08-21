extends Node2D

onready var LevelNumber = $LevelNumber
onready var Player = $Level/Player
onready var Player__Move = $Level/Player/Move

func _init():
	var Level = load('res://Levels/Level_'+str(G.level)+'.tscn')
	var Level_ = Level.instance()
	self.add_child(Level_)


func _ready():
	LevelNumber.set_text(str(G.level))
	


func _process(delta):
	pass


func _input(event):
	if event is InputEventScreenDrag or event is InputEventScreenTouch or event is InputEventMouseMotion:
		if (event.has_method('get_index') and event.index == 0) or not event.has_method('get_index'):
			Player__Move.interpolate_property(
				Player, 'position', Player.position, event.position,
				Player.position.distance_to(event.position)/700,
				Tween.TRANS_LINEAR, Tween.EASE_IN
			)
			Player__Move.start()
	else:
		print(3, event)
	
