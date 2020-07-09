extends KinematicBody2D

var y_velocity
var y_previous

var Y_LOWER_BOUND = 100
var Y_UPPER_BOUND = 500

var X_LOWER_BOUND = 60
var X_UPPER_BOUND = 100

# Called when the node enters the scene tree for the first time.
func _ready():
	y_velocity = 0


func _physics_process(delta):
	y_previous = position.y
	var mousey = get_viewport().get_mouse_position().y
	var mousex = get_viewport().get_mouse_position().x
	
	#position.x = get_viewport().get_mouse_position().x
	position.y = clamp(mousey, Y_LOWER_BOUND, Y_UPPER_BOUND)
	position.x = clamp(mousex, X_LOWER_BOUND, X_UPPER_BOUND)
	
	y_velocity = position.y - y_previous


