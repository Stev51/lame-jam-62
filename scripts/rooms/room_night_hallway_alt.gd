extends Room

var times_loaded = 0

func _ready() -> void:
	
	await FadeScreen.fade_in_finished
	
	if not PACBox.get_flag("seen_alt_hallway"):
		
		PACBox.set_flag("seen_alt_hallway", true)
		PACBox.queue_dialog("alt_hallway")
	
	else:
		
		Global.times_alt_hallway_loaded += 1
		
		if Global.times_alt_hallway_loaded == 3:
			PACBox.queue_dialog("alt_hallway_confusion")
