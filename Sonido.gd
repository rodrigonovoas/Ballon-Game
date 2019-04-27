extends Button

onready var sonido = get_node("../Audio")

func _ready():
	pass



func _on_Button_pressed():
	if sonido.playing == true:
		sonido.stop()
	else:
		sonido.play()
	pass # replace with function body
