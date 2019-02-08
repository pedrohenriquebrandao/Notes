extends Node

var score = 0

func _ready():
	pass

func _on_Area2D_hit():
	score += 1
	$HUD.update_score(score)

