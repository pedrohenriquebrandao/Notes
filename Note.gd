extends RigidBody2D

export (int) var MIN_SPEED # minimum speed range
export (int) var MAX_SPEED # maximum speed range
var mob_types = ["A", "B", "C", "D", "E", "F"]

func _ready():
    $AnimatedSprite.animation = mob_types[randi() % mob_types.size()]

func _on_Visibility_screen_exited():
    queue_free()

func _on_Note_area_entered(area):
	print(area)

