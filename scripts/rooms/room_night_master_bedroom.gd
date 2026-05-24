extends Room

func _ready() -> void:
	
	await FadeScreen.fade_in_finished
	PACBox.gui_node.unhide_room_text_display()
