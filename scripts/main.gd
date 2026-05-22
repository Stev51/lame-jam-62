extends Node2D

func _ready() -> void:
	
	'''
	PACBox.queue_dialog("intro")
	await Dialogic.timeline_ended
	'''
	
	PACBox.start("demo_room_1")
