extends Area2D

onready var gameover = preload("res://Scenes/GameOver.tscn")
onready var globos = get_node("../SpawnEnemy")
onready var vida = get_node("/root/Main/VidaLabel")

func _ready():
	pass


func _on_Linea_area_entered(area):
	if area.is_in_group("normal")==true or is_in_group("triple")==true:
		var hub = gameover.instance()
		utils.vidas -= 1
		vida.set_text("x" + str(utils.vidas))
		if utils.vidas == 0:
			utils.vidas = 3
			utils.score = 0
			globos.queue_free()
			get_node("../../Main").add_child(hub)
	pass
