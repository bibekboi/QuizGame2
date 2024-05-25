extends Control

@onready var line_edit = $Name/LineEdit
@onready var leaderboard_scene = preload("res://addons/silent_wolf/Scores/Leaderboard.tscn")

#var score = randi() % 101

func _ready():
	#For placeholder names
	line_edit.placeholder_text = "YOUR NAME"
	line_edit.add_theme_color_override("font_placeholder_color", Color.TAN)

func _on_submit_button_button_down():
	var username = line_edit.text
	print("Your Username is: " + str(username))
	print("Your Score is: " + str(globalScripts.scoreCounter))
	
	var sw_result: Dictionary = await SilentWolf.Scores.get_scores().sw_get_scores_complete
	print("Scores: " + str(sw_result.scores))
	
	# Save Score
	SilentWolf.Scores.save_score(username, globalScripts.scoreCounter)
	get_tree().change_scene_to_packed(leaderboard_scene)


func _on_cross_button_down():
	get_tree().change_scene_to_file("res://scenes/main_screen.tscn")
