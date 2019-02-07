extends Position2D

export (PackedScene) var note

func _ready():
	pass

func _on_Timer_timeout():
	var newNote = note.instance()
	get_tree().get_nodes_in_group("main")[0].add_child(newNote)
	newNote.global_position = global_position