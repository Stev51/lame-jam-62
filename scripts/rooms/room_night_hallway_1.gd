extends Room

func _ready() -> void:
	
	await FadeScreen.fade_in_finished
	
	if not PACBox.get_flag("seen_hallway_1"):
		
		PACBox.set_flag("seen_hallway_1", true)
		
		BGM.switch_bg_sound("nighttime_bgm")
		BGM.player_node.volume_db = -5
		BGM.play_bg_sound()
