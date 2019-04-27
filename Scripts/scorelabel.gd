extends Label

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	self.text = "puntos: " + str(utils.score)
	pass