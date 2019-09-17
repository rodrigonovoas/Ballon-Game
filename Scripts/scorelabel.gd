extends Label

func _ready():
	self.text = "puntos: " + str(utils.score)
	pass