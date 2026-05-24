extends Room

func _ready() -> void:
	
	if PACBox.get_flag("done_reading_article") and not PACBox.get_flag("heard_done_dialog"):
		PACBox.queue_dialog("done_reading_article")
		PACBox.set_flag("heard_done_dialog", true)
