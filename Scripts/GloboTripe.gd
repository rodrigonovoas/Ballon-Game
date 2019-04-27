# script: globoTriple

extends Area2D

export var velocity = Vector2()
onready var label = get_node("/root/Main/ScoreLabel")

func _ready():
	set_process(true)

func _process(delta):
	translate(velocity * delta)
	pass


func _on_GloboTripe_mouse_entered():
	self.queue_free()
	utils.score += 3
	label.set_text("puntos: " + str(utils.score))
	pass
