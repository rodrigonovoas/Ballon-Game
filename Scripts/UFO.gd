extends Node2D

onready var label = get_node("/root/Main/VidaLabel")

func _ready():
	set_process(true)

func _process(delta):
	self.position.y = self.position.y - 2
	pass

func _on_Area_mouse_entered():
	self.queue_free()
	utils.vidas -= 1
	label.set_text("x" + str(utils.vidas))
	pass 
