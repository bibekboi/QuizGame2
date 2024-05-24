extends Control

enum TheCorrectAnswer { FIRST_ANSWER, SECOND_ANSWER, THIRD_ANSWER }
@export var correctAnswer : TheCorrectAnswer

@onready var correct_answer_screen = $CorrectAnswer
@onready var incorrect_answer_screen = $IncorrectAnswer
@onready var score_counter_text = $ScoreCounter_TEXT

var scoreCounter : int = 0

func _ready():
	correct_answer_screen.visible = false
	incorrect_answer_screen.visible = false

func _process(delta):
	score_counter_text.text = str(scoreCounter)

func _on_answer_1_button_down():
	if correctAnswer == TheCorrectAnswer.FIRST_ANSWER:
		scoreCounter += 1
		correct_answer_screen.visible = true
	else: 
		incorrect_answer_screen.visible = true

func _on_answer_2_button_down():
	if correctAnswer == TheCorrectAnswer.SECOND_ANSWER:
		scoreCounter += 1
		correct_answer_screen.visible = true
	else: 
		incorrect_answer_screen.visible = true

func _on_answer_3_button_down():
	if correctAnswer == TheCorrectAnswer.THIRD_ANSWER:
		scoreCounter += 1
		correct_answer_screen.visible = true
	else: 
		incorrect_answer_screen.visible = true

func _on_cross_pressed():
	get_tree().change_scene_to_file("res://scenes/levels_scene.tscn")
