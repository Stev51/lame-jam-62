extends Room

func _ready() -> void:
	
	await FadeScreen.fade_in_finished
	
	if not PACBox.get_flag("seen_night_living_room"):
		PACBox.set_flag("seen_night_living_room", true)
		PACBox.queue_dialog("night_living_room")
