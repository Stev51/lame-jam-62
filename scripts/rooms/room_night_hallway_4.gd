extends Room

func _ready() -> void:
	
	await FadeScreen.fade_in_finished
	
	if not PACBox.get_flag("seen_hallway_4"):
		PACBox.set_flag("seen_hallway_4")
		PACBox.queue_dialog("hallway_4")
