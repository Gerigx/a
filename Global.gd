extends Node

var score1 = 0
var score2 = 0
var ball_pos = Vector2()

func _process(delta):
	_get_position()
	

func _get_position(var pos = Vector2()):
	ball_pos = pos
