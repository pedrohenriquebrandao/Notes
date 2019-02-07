extends Node

signal start_game

func _on_Button_pressed():
	get_tree().change_scene("Main.tscn")
