# script: Enemy

extends Area2D

export var velocity = Vector2()
onready var label = get_node("/root/Main/VidaLabel")

func _ready():
	set_process(true)

func _process(delta):
	translate(velocity * delta)
	pass

func _on_Enemy_mouse_entered():
	self.queue_free()
	utils.vidas -= 1
	label.set_text("x" + str(utils.vidas))
	pass 