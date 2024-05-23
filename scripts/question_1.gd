extends Control

enum TheCorrectAnswer { FIRST_ANSWER, SECOND_ANSWER, THIRD_ANSWER }

@export var correctAnswer : TheCorrectAnswer

func _ready():
	pass

func _on_answer_1_button_down():
	if correctAnswer == TheCorrectAnswer.FIRST_ANSWER:
		print("Correct Answer")
	else: 
		print("Incorrect Answer")


func _on_answer_2_button_down():
	if correctAnswer == TheCorrectAnswer.SECOND_ANSWER:
		print("Correct Answer")
	else: 
		print("Incorrect Answer")


func _on_answer_3_button_down():
	if correctAnswer == TheCorrectAnswer.THIRD_ANSWER:
		print("Correct Answer")
	else: 
		print("Incorrect Answer")


func _on_cross_pressed():
	get_tree().change_scene_to_file("res://scenes/levels_scene.tscn")
