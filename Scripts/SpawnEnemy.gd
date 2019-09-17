extends Node

const balloon = preload("res://Scenes/Balloon.tscn")
const sp_balloon = preload("res://Scenes/SpecialBalloon.tscn")
const enemy = preload("res://Scenes/Enemy.tscn")
const bee = preload("res://Scenes/Bee.tscn")
const ufo = preload("res://Scenes/UFO.tscn")

onready var tiempo = get_node("Timer")
onready var tiempo2 = get_node("TripleTimer")
onready var tiempo3 = get_node("EnemyTimer")
onready var beetimer = get_node("BeeTimer")
onready var ufotimer = get_node("UFOTimer")


func _on_Timer_timeout():
	var balloon_instance = balloon.instance()
	var pos = Vector2()
	pos.x = rand_range(50,1000)
	pos.y = 700
	balloon_instance.position = pos
	get_node("container").add_child(balloon_instance)
	tiempo.start()
	if utils.score == 10:
		tiempo.wait_time = 1.4
	elif utils.score == 50:
		tiempo.wait_time = 1
	elif utils.score == 100:
		tiempo.wait_time = 0.8
	pass

func _on_TripleTimer_timeout():
	var sp_balloon_instance = sp_balloon.instance()
	var pos = Vector2()
	pos.x = rand_range(0+30,1050)
	pos.y = 700
	sp_balloon_instance.position = pos
	get_node("container").add_child(sp_balloon_instance)
	tiempo2.start()
	pass


func _on_EnemyTimer_timeout():
	var enemy_instance = enemy.instance()
	var pos = Vector2()
	pos.x = rand_range(0+30,1050)
	pos.y = 700
	enemy_instance.position = pos
	get_node("container").add_child(enemy_instance)
	tiempo3.start()
	pass


func _on_BeeTimer_timeout():
	var enemy_instance = bee.instance()
	var pos = Vector2()
	pos.x = rand_range(0+30,1050)
	pos.y = 700
	enemy_instance.position = pos
	get_node("container").add_child(enemy_instance)
	beetimer.start()
	pass


func _on_UFOTimer_timeout():
	var enemy_instance = ufo.instance()
	var pos = Vector2()
	pos.x = rand_range(0+30,1050)
	pos.y = 700
	enemy_instance.position = pos
	get_node("container").add_child(enemy_instance)
	ufotimer.start()
	pass
