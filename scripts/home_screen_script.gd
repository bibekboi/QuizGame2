extends Control

func _on_new_game_pressed():
	get_tree().change_scene_to_file("res://scenes/levels_scene.tscn")


func _on_leaderboard_pressed():
	pass # Replace with function body.


func _on_quit_game_pressed():
	get_tree().quit()
