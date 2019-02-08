extends Node

var score = 0
var note
var mob_types = ["A", "B", "C", "D", "E", "F", "G"]

func _ready():
	note = mob_types[randi() % mob_types.size()]
	$HUD.update_note(note)

func _on_Area2D_hit():
	score += 1
	$HUD.update_score(score)

