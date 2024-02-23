extends Node2D
var score = 0.0


var block = load("res://dresswear.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	for i in 9:
		for j in 5:
			var new_block = block.instantiate()
			new_block.position = Vector2(50 + i * 130, 50 + j * 50)
			add_child(new_block)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func update_score():
	score += 1
	$winnings.text = "Score: " + str(score)
