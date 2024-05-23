extends Control


func _on_one_pressed():
	get_tree().change_scene_to_file("res://scenes/question_1.tscn")


func _on_two_pressed():
	get_tree().change_scene_to_file("res://scenes/question_2.tscn")


func _on_three_pressed():
	get_tree().change_scene_to_file("res://scenes/question_3.tscn")


func _on_four_pressed():
	pass # Replace with function body.


func _on_five_pressed():
	pass # Replace with function body.


func _on_six_pressed():
	pass # Replace with function body.


func _on_seven_pressed():
	pass # Replace with function body.


func _on_eight_pressed():
	pass # Replace with function body.

func _on_cross_pressed():
	get_tree().change_scene_to_file("res://scenes/main_screen.tscn")
