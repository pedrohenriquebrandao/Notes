extends RigidBody2D

var score = 0
signal touch

export (int) var MIN_SPEED # minimum speed range
export (int) var MAX_SPEED # maximum speed range
var mob_types = ["A", "B", "C", "D", "E", "F", "G"]
var current = mob_types[randi() % mob_types.size()]

func _ready():
	$AnimatedSprite.animation = current

func _on_Visibility_screen_exited():
    queue_free()

func get_notes():
	return str(current)

