extends KinematicBody2D


# > 512
var speed = 15000
var position_ball = Vector2()
var position_ball_old = Vector2()
var dir = Vector2(1,1)
var velocity = Vector2()
var distance
var d1
var move_dir
var x1_dest
var x2_dest
onready var timer = $Timer

func _process(delta):
	_pos1()
	_pos2()
	_pos1()
	_dir()
	_movement()
	move_and_slide(Vector2(0,move_dir) * delta * speed)



func _movement():
	 
	d1 = 855 - position_ball.x
	x1_dest = d1 / dir.x
	
	x2_dest = position_ball.y + (dir.y * x1_dest)
	
	if x2_dest > global_position.y:
		move_dir = 1
	elif x2_dest < global_position.y:
		move_dir = -1
	else:
		move_dir = 0

		 

func _pos1():
	position_ball = Global.ball_pos

func _pos2():
	if timer.time_left == 0:
		position_ball_old = position_ball
		print("---------------------------------------")
		timer.start(0.5)

func _dir():
	dir = position_ball_old - Global.ball_pos
	print("dirx:", dir.x)
	print("A: ", Global.ball_pos.x, " | B: ", position_ball_old.x)
	if dir.x == 0:
		dir.x = 1
