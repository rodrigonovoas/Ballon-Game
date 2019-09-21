extends Node

var score_file = "C://Users//kuluk//Documents//highscore.txt"
var score = 0
var vidas = 3

func _ready():
	pass


func getscore():
	return score

func load_score():
	var f = File.new()
	if f.file_exists(score_file):
		f.open(score_file, File.READ)
		var content = f.get_as_text()
		f.close()
		return int(content)

func save_score():
	var f = File.new()
	f.open(score_file, File.WRITE)
	f.store_string(str(score))
	f.close()