extends Room

func _ready() -> void:
	
	await FadeScreen.fade_in_finished
	
	if not PACBox.get_flag("seen_night_foyer"):
		PACBox.set_flag("seen_night_foyer", true)
		PACBox.queue_dialog("night_foyer")
