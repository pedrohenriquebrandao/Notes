extends CanvasLayer

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func update_score(score):
	score += 1
	$ScoreLabel.text = str(score)

