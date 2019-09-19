extends Button


var score_file = "C://Users//kuluk//Documents//highscore.txt"
var highscore = 10

func _ready():
	save_score()

func load_score():
    var f = File.new()
    if f.file_exists(score_file):
        f.open(score_file, File.READ)
        var content = f.get_as_text()
        highscore = int(content)
        f.close()

func save_score():
    var f = File.new()
    f.open(score_file, File.WRITE)
    f.store_string(str(highscore))
    f.close()