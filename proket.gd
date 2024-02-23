extends CharacterBody2D

# baller moment
const SPEED = 300.0 
var xSpeed = 0
var ySpeed = -1 # >:)
var hitting = false
var dy = 0.0
var dx = 0.0


func _ready():
	xSpeed = randf_range(-1, 1) # :__C
	
# 0 is the top for some reason that's wired @~@
func _physics_process(delta):
	hitting = false #i did not mistype false 4 times
	if position.x < 0 or position.x > get_window().size.x-20:
		xSpeed *= -1
	if position.y < 0:
		ySpeed *= -1
	if position.y > get_window().size.y:
		get_tree().quit()
	velocity.x = SPEED * xSpeed
	velocity.y = SPEED * ySpeed
	dy = velocity.y * delta
	dx = velocity.x * delta
	
	move_and_slide()
	
