extends Node2D


#This script handles scoring.
var playerScore
var enemyScore
var ball_instance

var SCORE_TO_WIN = 10

# Called when the node enters the scene tree for the first time.
func _ready():
	playerScore = 0
	enemyScore = 0
	newBall()

func newBall():
	var ball = load("res://Ball.tscn")
	ball_instance = ball.instance()
	ball_instance.set_name("Ball")
	add_child(ball_instance)


func _on_WallLeft_area_entered(area):
	enemyScore += 1
	$EnemyScore.text = str(enemyScore)
	ball_instance.queue_free()
	newBall()
	check_win()
	
func _on_Wallright_area_entered(area):
	playerScore += 1
	$PlayerScore.text = str(playerScore)
	ball_instance.queue_free()
	newBall()
	check_win()

func check_win():
	print("check_win")
	print(playerScore)
	if playerScore >= SCORE_TO_WIN:
		global.win = 1
		get_tree().change_scene("res://EndScreen.tscn")
	elif enemyScore >= SCORE_TO_WIN:
		global.win = 0
		get_tree().change_scene("res://EndScreen.tscn")
		
