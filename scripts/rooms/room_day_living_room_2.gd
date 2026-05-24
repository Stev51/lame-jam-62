extends Room

func _ready() -> void:
	
	await FadeScreen.fade_in_finished
	
	if not PACBox.get_flag("game_started"):
		
		PACBox.set_flag("game_started", true)
		
		BGM.switch_bg_sound("daytime_bgm")
		BGM.play_bg_sound()
