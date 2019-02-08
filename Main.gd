extends Node

var score = 0
var notes = preload("res://Note.tscn")
var instance
var mob_types = ["A", "B", "C", "D", "E", "F", "G"]

func _ready():
	$Clock.start()
	$HUD.update_time(int($Clock.get_time_left()))
	#instance = notes.instance()
	#note = mob_types[randi() % mob_types.size()]
	
func _process(delta):
	$HUD.update_time(int($Clock.get_time_left()))
	
	if ($Clock.get_time_left() == 0 and score < 25):
		get_tree().change_scene("game_over.tscn")
	if($Clock.get_time_left() == 0 and score >= 25):
		get_tree().change_scene("winner.tscn")

func _on_Area2D_hit():
	score += 1
	$HUD.update_score(score)

