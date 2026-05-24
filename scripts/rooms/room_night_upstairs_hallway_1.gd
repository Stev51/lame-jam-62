extends Room

func _ready() -> void:
	
	await FadeScreen.fade_in_finished
	
	if PACBox.get_flag("seen_night_living_room"):
		PACBox.queue_dialog("night_upstairs_hallway")
