extends Room

func _ready() -> void:
	
	await FadeScreen.fade_in_finished
	
	if PACBox.get_flag("ready_to_read_article") and not PACBox.get_flag("done_reading_article"):
		$Clickers/Laptop.visible = true
	
	if PACBox.get_flag("done_reading_article") and not PACBox.get_flag("heard_done_dialog"):
		
		PACBox.queue_dialog("done_reading_article")
		PACBox.set_flag("heard_done_dialog", true)
		
		PACBox.gui_node.unhide_room_text_display()
		PACBox.gui_node.unhide_photo_place_goal_display()
		PACBox.gui_node.unhide_quest_goal_display()
