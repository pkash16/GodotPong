extends RigidBody2D

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	var randphase = rand_range(0, PI/4)
	linear_velocity = Vector2(500, 0).rotated(randphase)
