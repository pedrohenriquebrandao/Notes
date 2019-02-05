extends Node2D

signal start_game

func _on_Button_pressed():
	get_tree().change_scene("Player.tscn")
