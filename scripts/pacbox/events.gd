class_name Events extends Node

func call_event(id: String) -> void:
	match id:
		"day_front_door":
			
			PACBox.queue_dialog("day_front_door")
			
		"day_foyer_back":
			
			PACBox.fade_to_room("room_day_downstairs_hallway_1")
			
		"day_hallway_1_back":
			
			PACBox.fade_to_room("room_day_living_room")
			
		"day_hallway_1_to_stairs":
			
			PACBox.fade_to_room("room_day_downstairs_stairs")
			
		"day_hallway_1_to_study":
			
			PACBox.fade_to_room("room_day_study")
			
		"day_hallway_1_to_foyer":
			
			PACBox.fade_to_room("room_day_foyer")
			
		"day_hallway_1_to_hallway_2":
			
			PACBox.fade_to_room("room_day_downstairs_hallway_2")
			
		"demo_event_go_room1":
			
			PACBox.fade_to_room("demo_room_1")
			
		"demo_event_go_room2":
			
			PACBox.fade_to_room("demo_room_2")
			
		"demo_event_dialog_1":
			
			PACBox.queue_dialog("demo_timeline_1")
			
		"demo_event_dialog_2":
			
			PACBox.set_flag("demo_flag")
			PACBox.queue_dialog("demo_timeline_2")
			
		"demo_event_dialog_3":
			
			PACBox.queue_dialog("demo_timeline_3")
			
		"DEFAULT":
			
			print("Default event invoked! Please define a custom event ID!")
			
		_:
			
			print("ERROR! Invalid event ID called! Please define a valid event ID!")
			
