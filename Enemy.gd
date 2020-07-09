extends KinematicBody2D

var MOVESPEED = 400
var ROLL_CONSTANT = 70
var AI_fail = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	#build a simple AI to follow the Ball's movement
	
	if (get_node("../Ball")):
		if (AI_fail):
			position.y = position.y
		else:
			position.y = move_toward(position.y, get_node("../Ball").position.y, delta * MOVESPEED)


func _on_Screwup_timeout():
	randomize()
	var roll = rand_range(0,100)
	if (roll > ROLL_CONSTANT):
		AI_fail = true
	else:
		AI_fail = false
