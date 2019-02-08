extends Area2D

signal hit

export (int) var speed # How fast the player will move (pixels/sec).
var screensize  # Size of the game window.

func _ready():
    screensize = get_viewport_rect().size
	
func _process(delta):
    var velocity = Vector2() # The player's movement vector.
    if Input.is_action_pressed("ui_right"):
        velocity.x += 1
    if Input.is_action_pressed("ui_left"):
        velocity.x -= 1
    if velocity.length() > 0:
        velocity = velocity.normalized() * speed * 1.1
        $AnimatedSprite.play()
    else:
        $AnimatedSprite.stop()

    position += velocity * delta
    position.x = clamp(position.x, 0, screensize.x)
    position.y = clamp(position.y, 0, screensize.y)

func _on_Area2D_body_entered(body):
	emit_signal("hit")
	
