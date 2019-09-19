extends Node

onready var sonido = self.get_node("../Main/Audio")

func _ready():
	sonido.stop()
	pass 