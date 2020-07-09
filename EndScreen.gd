extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	if (global.win == 1):
		$ColorRect.color = Color(0.4,0.8,0.3)
		$Label.text = "You Win!"
	else:
		$ColorRect.color = Color(0.96, 0.43, 0.43)
		$Label.text = "You Lose!"
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_button_down():
	get_tree().change_scene("res://IntroScreen.tscn")
