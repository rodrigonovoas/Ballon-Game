extends Node

onready var sound = self.get_node("../Main/Audio")
onready var label_maxscore = self.get_node("MaxScore")

func _ready():
	sound.stop()
	label_maxscore.text = "MAX SCORE:  " + str(_compararPuntos())
	pass


func _compararPuntos():
	var max_score = utils.score
	if max_score > utils.load_score():
		utils.save_score()
	else:
		max_score = utils.load_score()
	return max_score