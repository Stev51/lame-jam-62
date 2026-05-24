extends Room

func _ready() -> void:
	
	await FadeScreen.fade_in_finished
	
	if not PACBox.get_flag("seen_kitchen"):
		PACBox.set_flag("seen_kitchen", true)
		PACBox.queue_dialog("kitchen")
