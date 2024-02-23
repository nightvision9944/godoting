extends Area2D

func _process(delta):
	if Input.is_action_pressed("ui_left"):
		position.x -= 2000.0*delta
	if Input.is_action_pressed("ui_right"):
		position.x += 2000.0*delta
	position.x = clamp(position.x,0,get_window().size.x-100)

#frat moment (its paddling)
func _on_body_entered(body):
	if body.name == "proket":
		body.ySpeed *= -1
		body.xSpeed = (body.position.x - position.x - 50) * 0.1
