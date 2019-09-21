extends Node

onready var gameover = preload("res://Scenes/GameOver.tscn")
onready var spawn = get_node("/root/Main/SpawnEnemy")
onready var timer_label = self.get_node("TimeLabel")

#timer
var time = 0
var time_mult = 1.0

var gameover_confirmation = false

func _ready():
	randomize()

func _process(delta):
	time += delta * time_mult
	timer_label.text = "Tiempo: " + str(int(time))
	if utils.vidas <= 0 and gameover_confirmation == false:
		gameover_confirmation = instanciar_menuGameOver()
		spawn.queue_free()
	pass


func instanciar_menuGameOver():
	var menu = gameover.instance()
	self.get_node("../").add_child(menu)
	menu.set("z",0)
	return true