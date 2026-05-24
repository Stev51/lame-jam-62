extends Room

func _ready() -> void:
	
	await FadeScreen.fade_in_finished
	
	if not PACBox.get_flag("seen_hallway_10"):
		
		if not PACBox.get_flag("seen_night_foyer"):
			PACBox.queue_dialog("hallway_10_dead_end")
		
		PACBox.set_flag("seen_hallway_10", true)
		
	elif PACBox.get_flag("seen_night_foyer") and not PACBox.get_flag("seen_hallway_10_door"):
			PACBox.queue_dialog("hallway_10_new_door")
	
	if PACBox.get_flag("seen_night_foyer"):
		PACBox.set_flag("seen_hallway_10_door", true)
