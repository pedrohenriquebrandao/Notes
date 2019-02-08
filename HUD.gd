extends CanvasLayer

var score = 0 

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func update_score(score):
	$ScoreLabel.text = str(score)

func update_note(note):
	$Note.text = str(note)


