extends Control

@onready var player_node = $BGMPlayer

@onready var daytime_bgm = preload("res://assets/audio/bgm/Forest_Ambience.mp3")

@onready var sound_ref = {
	"daytime_bgm": daytime_bgm
}

func switch_bg_sound(id: String) -> void:
	if id in sound_ref:
		player_node.stream = sound_ref[id]
	else:
		print("ERROR: Accessed nonexistent BGM ID")

func play_bg_sound() -> void:
	player_node.play()

func stop_bg_sound() -> void:
	player_node.stop() 
