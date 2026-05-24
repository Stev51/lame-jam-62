extends Room

func _ready() -> void:
	
	await FadeScreen.fade_in_finished
	
	if not PACBox.get_flag("seen_empty_bedroom"):
		PACBox.set_flag("seen_empty_bedroom", true)
		PACBox.queue_dialog("empty_bedroom")
