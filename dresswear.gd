extends Area2D


func _on_body_entered(body):
	if body.name == "proket" and body.hitting == false:
		body.hitting = true
		if body.position.y < position.y + 40 and body.position.y - body.dy*2 >= position.y + 40:
			body.ySpeed *= -1
		elif body.position.y + 20 > position.y and body.position.y + 20 - body.dy*2 <= position.y:
			body.ySpeed *= -1
		else:
			body.xSpeed *= -1
		self.queue_free()
