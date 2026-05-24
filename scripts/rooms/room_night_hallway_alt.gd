extends Room

func _ready() -> void:
	
	await FadeScreen.fade_in_finished
	
	if not PACBox.get_flag("seen_alt_hallway"):
		PACBox.set_flag("seen_alt_hallway", true)
		PACBox.queue_dialog("alt_hallway")
