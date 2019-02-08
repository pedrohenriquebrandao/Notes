extends Node

func _ready():
	pass

func _process(delta):
    if not $VideoPlayer.is_playing():
    	$VideoPlayer.play()

func _on_Button_pressed():
	get_tree().change_scene("TitleScreen.tscn")