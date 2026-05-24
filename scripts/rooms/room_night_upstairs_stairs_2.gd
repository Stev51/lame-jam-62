extends Room

func _ready() -> void:
	
	await FadeScreen.fade_in_finished
	
	if not PACBox.get_flag("seen_night_stairs"):
		PACBox.queue_dialog("night_stairs")
		PACBox.set_flag("seen_night_stairs", true)
