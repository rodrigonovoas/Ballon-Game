extends Node2D

var direction = 1

onready var notifier = self.get_node("Area/VNotifier")
onready var label = get_node("/root/Main/VidaLabel")


func _ready():
	set_process(true)

func _process(delta):
	self.position.y = self.position.y - 2
	self.position.x = self.position.x * direction
	pass



func _on_VNotifier_screen_exited():
	direction = direction * (-1)
	notifier.position.x = notifier.position.x * (-1)
	pass 


func _on_Area_mouse_entered():
	self.queue_free()
	utils.vidas -= 1
	label.set_text("x" + str(utils.vidas))
	pass 
