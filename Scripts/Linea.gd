extends Area2D

onready var gameover = preload("res://Scenes/GameOver.tscn")
onready var ballons = get_node("../SpawnEnemy")
onready var vida = get_node("/root/Main/VidaLabel")

func _on_Linea_area_entered(area):
	if area.is_in_group("normal")==true or is_in_group("triple")==true:
		utils.vidas -= 1
		vida.set_text("x" + str(utils.vidas))
	pass
	area.queue_free()
