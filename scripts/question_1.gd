extends Control

enum TheCorrectAnswer { FIRST_ANSWER, SECOND_ANSWER, THIRD_ANSWER }
@export var correctAnswer : TheCorrectAnswer

@onready var correct_answer_screen = $CorrectAnswer
@onready var incorrect_answer_screen = $IncorrectAnswer
@onready var score_counter_text = $ScoreBase/ScoreText
@onready var next_button = $NextButton

func _ready():
	correct_answer_screen.visible = false
	incorrect_answer_screen.visible = false

func _process(delta):
	score_counter_text.text = ("Score: " + str(globalScripts.scoreCounter))

func _on_answer_1_button_down():
	if correctAnswer == TheCorrectAnswer.FIRST_ANSWER:
		globalScripts.scoreCounter += 1
		correct_answer_screen.visible = true
		next_button.visible = true
		
	else: 
		incorrect_answer_screen.visible = true
		next_button.visible = true

func _on_answer_2_button_down():
	if correctAnswer == TheCorrectAnswer.SECOND_ANSWER:
		globalScripts.scoreCounter += 1
		correct_answer_screen.visible = true
		next_button.visible = true
	else: 
		incorrect_answer_screen.visible = true
		next_button.visible = true

func _on_answer_3_button_down():
	if correctAnswer == TheCorrectAnswer.THIRD_ANSWER:
		globalScripts.scoreCounter += 1
		correct_answer_screen.visible = true
		next_button.visible = true
	else: 
		incorrect_answer_screen.visible = true
		next_button.visible = true

func _on_cross_pressed():
	get_tree().change_scene_to_file("res://scenes/levels_scene.tscn")
	globalScripts.currentLevel = 1


func _on_next_button_button_down():
	
	globalScripts.currentLevel += 1 
	
	#Debugger
	print("res://scenes/question_" + str(globalScripts.currentLevel) + ".tscn")
	#
	
	var newScene = "res://scenes/question_" + str(globalScripts.currentLevel) + ".tscn"
	
	if ResourceLoader.exists(newScene):
		get_tree().change_scene_to_file(str(newScene))
	else:
		get_tree().change_scene_to_file("res://scenes/game_end_screen.tscn")
		globalScripts.currentLevel = 1
