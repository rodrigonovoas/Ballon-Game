extends Button

onready var sonido = get_node("../Audio")

func _on_Button_pressed():
	if sonido.volume_db == -15:
		sonido.volume_db = -100
	else:
		sonido.volume_db = -15
	pass 