extends Button


func _on_Button_pressed():
	_guardar()
	pass # Replace with function body.

func _guardar():
	var dict = {}
	var file = File.new()
	file.open("C://Users//kuluk//panelText.json", file.READ)
	var text = "ok"
	file.store_string(text)
	file.close()