extends Node2D

func _ready() -> void:
	
	'''
	FadeScreen.fade_in_slow()
	await FadeScreen.fade_in_finished
	
	PACBox.queue_dialog("intro")
	await Dialogic.timeline_ended
	
	FadeScreen.fade_out_slow()
	await FadeScreen.fade_out_finished
	'''
	
	PACBox.start("room_day_living_room_2")
	
	FadeScreen.fade_in_slow()
