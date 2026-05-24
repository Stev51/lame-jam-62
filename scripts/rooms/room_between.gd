extends Room

func _ready() -> void:
	
	await FadeScreen.fade_in_finished
	
	PACBox.queue_dialog("between")
	await Dialogic.timeline_ended
	
	PACBox.slow_fade_to_room("room_night_master_bedroom")
