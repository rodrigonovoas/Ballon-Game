extends Button


func _on_Start_pressed():
	get_tree().change_scene("res://Main.tscn")
	pass 

func _on_Quit_pressed():
	get_tree().quit()

func _on_Continue_pressed():
	utils.score = 0
	utils.vidas = 3
	get_tree().reload_current_scene()
	pass 
