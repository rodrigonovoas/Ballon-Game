extends Node

onready var gameover = preload("res://Scenes/GameOver.tscn")
onready var spawn = get_node("/root/Main/SpawnEnemy")

var gameover_confirmation = false

func _process(delta):
	if utils.vidas <= 0 and gameover_confirmation == false:
		gameover_confirmation = instanciar_menuGameOver()
		spawn.queue_free()
	pass


func instanciar_menuGameOver():
	var menu = gameover.instance()
	self.get_node("../").add_child(menu)
	menu.set("z",0)
	return true