extends Button

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _on_Empezar_pressed():
	get_tree().change_scene("res://Main.tscn")
	pass # replace with function body

func _on_Salir_pressed():
	get_tree().quit()# replace with function body

func _on_Continuar_pressed():
	get_tree().change_scene("res://Main.tscn")
	pass # replace with function body
