extends Control


onready var teama = $Team1
onready var teamb = $Team2

func _process(delta):
	teama.text = str(Global.score1)
	teamb.text = str(Global.score2)
