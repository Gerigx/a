extends RigidBody2D

var position_ball = Vector2(0,0)
var speed = 600
var vel = Vector2()
var rng = RandomNumberGenerator.new()

func _ready():
	self.position.x = 512
	_get_position()
	rng.randomize()
	vel.x = rng.randf_range(-1,1)
	vel.y = rng.randf_range(-1,1)
	
	print("velx: ", vel.x, " vel.y: ", vel.y)
	
	
	linear_velocity = vel * speed


func _process(delta):
	_get_position()
	Global._get_position(position_ball)

func _get_position():
	position_ball = global_position



func _on_Goal_Player_body_entered(body):
	Global.score2 += 1
	get_tree().change_scene("res://scene/Map.tscn")
	


func _on_Goal_Enemy_body_entered(body):
	Global.score1 += 1
	get_tree().change_scene("res://scene/Map.tscn")
	
	
