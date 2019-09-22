extends Node

var file = "user://savegame.txt"

onready var gameover = preload("res://Scenes/GameOver.tscn")
onready var spawn_node = preload("res://Scenes/SpawnEnemy.tscn")
onready var spawn
onready var timer_label = self.get_node("TimeLabel")
onready var mensaje_sprite = self.get_node("Mensaje")
onready var ok_button = self.get_node("OK")

var start = false

#timer
var time = 0
var time_mult = 1.0

var gameover_confirmation = false

func _ready():
	_cargarPrimeraVez()
	randomize()

func _process(delta):
	if start == true:
		time += delta * time_mult
		timer_label.text = "Tiempo: " + str(int(time))
		if utils.vidas <= 0 and gameover_confirmation == false:
			gameover_confirmation = instanciar_menuGameOver()
			spawn.queue_free()
			start = false
		pass


func instanciar_menuGameOver():
	var menu = gameover.instance()
	self.get_node("../").add_child(menu)
	menu.set("z",0)
	return true

func _cargarPrimeraVez():
	var f = File.new()
	if f.file_exists(file) == false:
		mensaje_sprite.visible = true
		ok_button.visible = true
	else:
		mensaje_sprite.queue_free()
		ok_button.queue_free()
		_spawnEnemies()
		start = true

func _on_OK_pressed():
	start = true
	_spawnEnemies()
	mensaje_sprite.queue_free()
	ok_button.queue_free()
	pass 

func _spawnEnemies():
	var spawn_instance = spawn_node.instance()
	spawn = spawn_instance
	self.add_child(spawn_instance)
	spawn_instance.set("z",0)