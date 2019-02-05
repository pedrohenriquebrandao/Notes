extends CanvasLayer

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func update_score(score):
	$ScoreLabel.text = str(score)
