extends Node

const enemy = preload("res://Scenes/Globo.tscn")
const enemy2 = preload("res://Scenes/GloboTripe.tscn")
const enemy3 = preload("res://Scenes/Enemy.tscn")
onready var tiempo = get_node("Timer")
onready var tiempo2 = get_node("TripleTimer")
onready var tiempo3 = get_node("EnemyTimer")

func _ready():
	pass


func _on_Timer_timeout():
	var globo = enemy.instance()
	var pos = Vector2()
	pos.x = rand_range(0+30,1100)
	pos.y = 700
	globo.position = pos
	get_node("container").add_child(globo)
	tiempo.start()
	if utils.score == 10:
		tiempo.wait_time = 1.4
	elif utils.score == 50:
		tiempo.wait_time = 1
	elif utils.score == 100:
		tiempo.wait_time = 0.8
	pass

func _on_TripleTimer_timeout():
	var globoTripe = enemy2.instance()
	var pos = Vector2()
	pos.x = rand_range(0+30,1100)
	pos.y = 700
	globoTripe.position = pos
	get_node("container").add_child(globoTripe)
	tiempo2.start()
	pass


func _on_EnemyTimer_timeout():
	var enemyx = enemy3.instance()
	var pos = Vector2()
	pos.x = rand_range(0+30,1100)
	pos.y = 700
	enemyx.position = pos
	get_node("container").add_child(enemyx)
	tiempo3.start()
	pass
