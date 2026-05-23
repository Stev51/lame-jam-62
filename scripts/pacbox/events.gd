class_name Events extends Node

func call_event(id: String) -> void:
	match id:
		"day_front_door":
			
			PACBox.queue_dialog("day_front_door")
			
		"day_foyer_back":
			
			PACBox.fade_to_room("room_day_downstairs_hallway_1")
			
		"day_downstairs_hallway_1_back":
			
			PACBox.fade_to_room("room_day_living_room_1")
			
		"day_downstairs_hallway_1_to_stairs":
			
			PACBox.fade_to_room("room_day_downstairs_stairs")
			
		"day_downstairs_hallway_1_to_study":
			
			PACBox.fade_to_room("room_day_study")
			
		"day_downstairs_hallway_1_to_foyer":
			
			PACBox.fade_to_room("room_day_foyer")
			
		"day_downstairs_hallway_1_to_hallway_2":
			
			PACBox.fade_to_room("room_day_downstairs_hallway_2")
			
		"day_study_back":
			
			PACBox.fade_to_room("room_day_downstairs_hallway_1")
			
		"day_living_room_1_back":
			
			PACBox.fade_to_room("room_day_living_room_2")
			
		"day_living_room_1_to_hallway_1":
			
			PACBox.fade_to_room("room_day_downstairs_hallway_1")
			
		"day_living_room_2_back":
			
			PACBox.fade_to_room("room_day_living_room_1")
			
		"day_living_room_2_to_hallway_3":
			
			PACBox.fade_to_room("room_day_downstairs_hallway_3")
			
		"go_to_photo_box":
			
			PACBox.fade_to_room("room_photo_box")
			
		"get_photos":
			
			PACBox.set_flag("got_photos")
			
		"photo_box_back":
			
			PACBox.fade_to_room("room_day_living_room_2")
			
		"day_downstairs_hallway_2_back":
			
			PACBox.fade_to_room("room_day_downstairs_hallway_1")
			
		"day_downstairs_hallway_2_to_dining":
			
			PACBox.fade_to_room("room_day_dining")
			
		"day_downstairs_hallway_2_to_kitchen":
			
			PACBox.fade_to_room("room_day_kitchen")
			
		"day_downstairs_hallway_2_to_hallway_3":
			
			PACBox.fade_to_room("room_day_downstairs_hallway_3")
			
		"day_dining_back":
			
			PACBox.fade_to_room("room_day_downstairs_hallway_2")
			
		"day_kitchen_back":
			
			PACBox.fade_to_room("room_day_downstairs_hallway_2")
			
		"day_downstairs_hallway_3_back":
			
			PACBox.fade_to_room("room_day_living_room_2")
			
		"day_downstairs_hallway_3_to_laundry":
			
			PACBox.fade_to_room("room_day_laundry")
			
		"day_downstairs_hallway_3_to_bathroom":
			
			PACBox.queue_dialog("day_downstairs_bathroom")
			
		"day_downstairs_hallway_3_to_hallway_2":
			
			PACBox.fade_to_room("room_day_downstairs_hallway_2")
			
		"day_laundry_back":
			
			PACBox.fade_to_room("room_day_downstairs_hallway_3")
			
		"day_downstairs_stairs_back":
			
			PACBox.fade_to_room("room_day_downstairs_hallway_1")
			
		"day_downstairs_stairs_to_upstairs_stairs":
			
			PACBox.fade_to_room("room_day_upstairs_stairs")
			
		"day_upstairs_stairs_back":
			
			PACBox.fade_to_room("room_day_downstairs_stairs")
			
		"day_upstairs_stairs_to_hallway_1":
			
			PACBox.fade_to_room("room_day_upstairs_hallway_1")
			
		"day_upstairs_hallway_1_back":
			
			PACBox.fade_to_room("room_day_upstairs_stairs")
			
		"day_upstairs_hallway_1_to_hallway_2":
			
			PACBox.fade_to_room("room_day_upstairs_hallway_2")
			
		"day_upstairs_hallway_1_to_bathroom":
			
			PACBox.queue_dialog("day_upstairs_bathroom")
			
		"day_upstairs_hallway_1_to_bedroom":
			
			PACBox.fade_to_room("room_day_bedroom_1")
			
		"day_upstairs_hallway_1_to_loft":
			
			PACBox.fade_to_room("room_day_loft")
			
		"day_upstairs_hallway_2_back":
			
			PACBox.fade_to_room("room_day_upstairs_hallway_1")
			
		"day_upstairs_hallway_2_to_hallway_3":
			
			PACBox.fade_to_room("room_day_upstairs_hallway_3")
			
		"day_upstairs_hallway_2_to_hallway_4":
			
			PACBox.fade_to_room("room_day_upstairs_hallway_4")
			
		"day_upstairs_hallway_3_back":
			
			PACBox.fade_to_room("room_day_upstairs_hallway_2")
			
		"day_upstairs_hallway_3_to_bedroom":
			
			PACBox.fade_to_room("room_day_bedroom_2")
			
		"day_upstairs_hallway_4_back":
			
			PACBox.fade_to_room("room_day_upstairs_hallway_2")
			
		"day_upstairs_hallway_4_to_master_bedroom":
			
			PACBox.fade_to_room("room_day_master_bedroom")
			
		"day_bedroom_1_back":
			
			PACBox.fade_to_room("room_day_upstairs_hallway_1")
			
		"day_bedroom_2_back":
			
			PACBox.fade_to_room("room_day_upstairs_hallway_3")
			
		"inspect_kid_boxes":
			
			PACBox.queue_dialog("inspect_kid_boxes")
			
		"day_master_bedroom_back":
			
			PACBox.fade_to_room("room_day_upstairs_hallway_4")
			
		"day_master_bedroom_to_bathroom":
			
			PACBox.queue_dialog("day_master_bathroom")
			
		"day_loft_back":
			
			PACBox.fade_to_room("room_day_upstairs_hallway_1")
			
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
			
