extends Node

func _ready():
	
  SilentWolf.configure({
	"api_key": "qX98DtypRz8oLTy9as03G5B6ZrnlDj2o4qF7SrcG",
	"game_id": "quizgame1",
	"log_level": 1
  })

  SilentWolf.configure_scores({
	"open_scene_on_close": "res://scripts/game_end_screen.gd"
  })
