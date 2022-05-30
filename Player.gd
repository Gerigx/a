extends KinematicBody2D

var dir = Vector2(0,0)
var speed = 15000

func _process(delta):
	if Input.is_action_pressed("move_up"):
		dir.y = -1
	elif Input.is_action_pressed("move_down"):
		dir.y = 1
	else:
		dir.y = 0
	
	
	move_and_slide(dir * delta * speed)
