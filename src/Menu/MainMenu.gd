extends Spatial

onready var start_button = $CanvasLayer/FadeOut/Control/VBoxContainer/CenterContainer/VBoxContainer/StartButton
onready var quit_button = $CanvasLayer/FadeOut/Control/VBoxContainer/CenterContainer/VBoxContainer/QuitButton
onready var fader = $CanvasLayer/FadeOut

export (PackedScene) var game_scene = null

func _ready():
	start_button.connect("pressed", self, "on_start_pressed")
	quit_button.connect("pressed", self, "on_quit_pressed")
	fader.connect("fade_finished", self, "on_fade_finished")
		
func on_start_pressed():
	fader.fade_out()
	
#	get_tree().change_scene_to(game_scene)
	
func on_quit_pressed():
	get_tree().quit()

func on_fade_finished():
	get_tree().change_scene_to(game_scene)
	
