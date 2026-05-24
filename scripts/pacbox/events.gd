class_name Events extends Node

func show_photo(id: int) -> void:
	
	PhotoShower.show_photo(id)
	
	PACBox.gui_node.hide_room_text_display()
	PACBox.gui_node.hide_photo_place_goal_display()
	PACBox.gui_node.hide_quest_goal_display()

func hide_photo() -> void:
	
	PhotoShower.hide_photo()
	
	PACBox.gui_node.unhide_room_text_display()
	PACBox.gui_node.unhide_photo_place_goal_display()
	PACBox.gui_node.unhide_quest_goal_display()
	
	if not PACBox.get_flag("ready_to_read_article"):
		photo_placement_check()

var max_photo_count = 7
func photo_placement_check() -> void:
	if PACBox.get_flag("photos_placed") >= max_photo_count:
		PACBox.gui_node.disable_photo_place_goal_display()
		call_event("placed_all_photos")

func incr_photo_count() -> void:
	PACBox.set_flag("photos_placed", PACBox.get_flag("photos_placed") + 1)
	PACBox.gui_node.update_photo_place_goal_display()

func call_event(id: String) -> void:
	match id:
		"photo_shower_click":
			
			hide_photo()
			
		"photo1_place":
			
			incr_photo_count()
			show_photo(1)
			PACBox.set_flag("photo1", true)
			
		"photo1_inspect":
			
			show_photo(1)
			
		"photo2_place":
			
			incr_photo_count()
			show_photo(2)
			PACBox.set_flag("photo2", true)
			
		"photo2_inspect":
			
			show_photo(2)
			
		"photo3_place":
			
			incr_photo_count()
			show_photo(3)
			PACBox.set_flag("photo3", true)
			
		"photo3_inspect":
			
			show_photo(3)
			
		"photo4_place":
			
			incr_photo_count()
			show_photo(4)
			PACBox.set_flag("photo4", true)
			
		"photo4_inspect":
			
			show_photo(4)
			
		"photo5_place":
			
			incr_photo_count()
			show_photo(5)
			PACBox.set_flag("photo5", true)
			
		"photo5_inspect":
			
			show_photo(5)
			
		"photo6_place":
			
			incr_photo_count()
			show_photo(6)
			PACBox.set_flag("photo6", true)
			
		"photo6_inspect":
			
			show_photo(6)
			
		"photo7_place":
			
			incr_photo_count()
			show_photo(7)
			PACBox.set_flag("photo7", true)
			
		"photo7_inspect":
			
			show_photo(7)
			
		"photo11_inspect":
			
			show_photo(11)
			
		"photo12_inspect":
			
			show_photo(12)
			
		"photo13_inspect":
			
			show_photo(13)
			
		"photo14_inspect":
			
			show_photo(14)
			
		"photo15_inspect":
			
			show_photo(15)
			
		"photo16_inspect":
			
			show_photo(16)
			
		"photo17_inspect":
			
			if not PACBox.get_flag("checked_censored_photo"):
				PACBox.queue_dialog("check_censored_photo")
			
			PACBox.set_flag("checked_censored_photo", true)
			show_photo(17)
			
		"placed_all_photos":
			
			PACBox.queue_dialog("placed_all_photos")
			await Dialogic.timeline_ended
			
			PACBox.set_flag("ready_to_read_article", true)
			
			PACBox.gui_node.update_quest_text("Go to the Office")
			PACBox.gui_node.enable_quest_goal_display()
			
		"use_laptop":
			
			PACBox.gui_node.hide_room_text_display()
			PACBox.gui_node.hide_photo_place_goal_display()
			PACBox.gui_node.hide_quest_goal_display()
			
			PACBox.fade_to_room("room_laptop_0")
			
		"laptop_0_to_laptop_1":
			
			PACBox.fade_to_room("room_laptop_1")
			
		"laptop_1_to_laptop_2":
			
			PACBox.switch_room("room_laptop_2")
			
		"laptop_2_to_laptop_1":
			
			PACBox.switch_room("room_laptop_1")
			
		"laptop_2_to_laptop_3":
			
			PACBox.switch_room("room_laptop_3")
			
		"laptop_3_to_laptop_2":
			
			PACBox.switch_room("room_laptop_2")
			
		"laptop_3_to_laptop_4":
			
			PACBox.switch_room("room_laptop_4")
			
		"done_using_laptop":
			
			PACBox.set_flag("done_reading_article", true)
			PACBox.gui_node.update_quest_text("Go to Bed")
			
			PACBox.fade_to_room("room_day_study")
			
		"go_to_bed":
			
			PACBox.gui_node.disable_quest_goal_display()
			PACBox.gui_node.hide_room_text_display()
			
			PACBox.slow_fade_to_room("room_between")
			
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
			
			PACBox.gui_node.update_photo_place_goal_display()
			PACBox.gui_node.enable_photo_place_goal_display()
			
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
			
		"night_downstairs_hallway_1_back":
			
			PACBox.fade_to_room("room_night_living_room_1")
			
		"night_downstairs_hallway_1_to_stairs":
			
			PACBox.fade_to_room("room_night_downstairs_stairs")
			
		"night_downstairs_hallway_1_to_study":
			
			PACBox.fade_to_room("room_night_study")
			
		"night_downstairs_hallway_1_to_foyer":
			
			PACBox.fade_to_room("room_night_foyer")
			
		"night_downstairs_hallway_1_to_hallway_2":
			
			PACBox.fade_to_room("room_night_downstairs_hallway_2")
			
		"night_living_room_1_back":
			
			PACBox.fade_to_room("room_night_living_room_2")
			
		"night_living_room_1_to_hallway_1":
			
			PACBox.fade_to_room("room_night_downstairs_hallway_1")
			
		"night_living_room_2_back":
			
			PACBox.fade_to_room("room_night_living_room_1")
			
		"night_living_room_2_to_hallway_3":
			
			PACBox.fade_to_room("room_night_downstairs_hallway_3")
			
		"night_downstairs_hallway_2_back":
			
			PACBox.fade_to_room("room_night_downstairs_hallway_1")
			
		"night_downstairs_hallway_2_to_dining":
			
			PACBox.fade_to_room("room_night_dining")
			
		"night_downstairs_hallway_2_to_kitchen":
			
			PACBox.fade_to_room("room_night_kitchen")
			
		"night_downstairs_hallway_2_to_hallway_3":
			
			PACBox.fade_to_room("room_night_downstairs_hallway_3")
			
		"night_kitchen_back":
			
			PACBox.fade_to_room("room_night_downstairs_hallway_2")
			
		"night_downstairs_hallway_3_back":
			
			PACBox.fade_to_room("room_night_living_room_2")
			
		"night_downstairs_hallway_3_to_laundry":
			
			PACBox.fade_to_room("room_night_laundry")
			
		"night_downstairs_hallway_3_to_hallway_2":
			
			PACBox.fade_to_room("room_night_downstairs_hallway_2")
			
		"night_downstairs_stairs_to_upstairs_stairs":
			
			PACBox.fade_to_room("room_night_upstairs_stairs")
			
		"night_upstairs_stairs_back":
			
			PACBox.fade_to_room("room_night_downstairs_stairs")
			
		"night_upstairs_stairs_to_hallway_1":
			
			PACBox.fade_to_room("room_night_upstairs_hallway_1")
			
		"night_upstairs_hallway_1_back":
			
			PACBox.fade_to_room("room_night_upstairs_stairs")
			
		"night_upstairs_hallway_1_to_hallway_2":
			
			PACBox.fade_to_room("room_night_upstairs_hallway_2")
			
		"night_upstairs_hallway_1_to_bedroom":
			
			PACBox.fade_to_room("room_night_bedroom_1")
			
		"night_upstairs_hallway_1_to_loft":
			
			if not PACBox.get_flag("seen_night_living_room"):
				
				PACBox.fade_to_room("room_night_loft")
				
			else:
				
				PACBox.gui_node.disable_room_text_display()
				
				PACBox.fade_to_room("room_night_loft_alt")
			
		"night_upstairs_hallway_2_back":
			
			PACBox.fade_to_room("room_night_upstairs_hallway_1")
			
		"night_upstairs_hallway_2_to_hallway_3":
			
			PACBox.fade_to_room("room_night_upstairs_hallway_3")
			
		"night_upstairs_hallway_2_to_hallway_4":
			
			PACBox.fade_to_room("room_night_upstairs_hallway_4")
			
		"night_upstairs_hallway_3_back":
			
			PACBox.fade_to_room("room_night_upstairs_hallway_2")
			
		"night_upstairs_hallway_3_to_bedroom":
			
			PACBox.fade_to_room("room_night_bedroom_2")
			
		"night_upstairs_hallway_4_back":
			
			PACBox.fade_to_room("room_night_upstairs_hallway_2")
			
		"night_upstairs_hallway_4_to_master_bedroom":
			
			PACBox.fade_to_room("room_night_master_bedroom")
			
		"night_bedroom_1_back":
			
			PACBox.fade_to_room("room_night_upstairs_hallway_1")
			
		"night_bedroom_2_back":
			
			PACBox.fade_to_room("room_night_upstairs_hallway_3")
			
		"night_master_bedroom_back":
			
			PACBox.fade_to_room("room_night_upstairs_hallway_4")
			
		"night_loft_back":
			
			PACBox.fade_to_room("room_night_upstairs_hallway_1")
			
		"night_downstairs_stairs_back":
			
			PACBox.fade_to_room("room_night_upstairs_stairs_2")
			
		"night_upstairs_stairs_2_to_downstairs_stairs":
			
			PACBox.fade_to_room("room_night_downstairs_stairs")
			
		"night_upstairs_stairs_2_back":
			
			PACBox.fade_to_room("room_night_downstairs_stairs_2")
			
		"night_downstairs_stairs_2_to_upstairs_stairs_2":
			
			PACBox.fade_to_room("room_night_upstairs_stairs_2")
			
		"night_downstairs_stairs_2_back":
			
			PACBox.fade_to_room("room_night_hallway_1")
			
		"night_hallway_1_back":
			
			PACBox.fade_to_room("room_night_downstairs_stairs_2")
			
		"night_hallway_1_forward":
			
			PACBox.fade_to_room("room_night_hallway_2")
			
		"night_hallway_2_back":
			
			PACBox.fade_to_room("room_night_hallway_1")
			
		"night_hallway_2_forward":
			
			PACBox.fade_to_room("room_night_hallway_3")
			
		"night_hallway_2_to_study":
			
			PACBox.fade_to_room("room_night_study")
			
		"night_hallway_3_back":
			
			PACBox.fade_to_room("room_night_hallway_2")
			
		"night_hallway_3_forward":
			
			PACBox.fade_to_room("room_night_hallway_4")
			
		"night_hallway_4_back":
			
			PACBox.fade_to_room("room_night_hallway_3")
			
		"night_hallway_4_forward":
			
			if not PACBox.get_flag("seen_night_living_room"):
				PACBox.fade_to_room("room_night_hallway_5")
			else:
				PACBox.fade_to_room("room_night_hallway_alt")
			
		"night_hallway_5_back":
			
			PACBox.fade_to_room("room_night_hallway_4")
			
		"night_hallway_5_left":
			
			PACBox.fade_to_room("room_night_hallway_6")
			
		"night_hallway_5_right":
			
			PACBox.fade_to_room("room_night_hallway_9")
			
		"night_hallway_6_back":
			
			PACBox.fade_to_room("room_night_hallway_5")
			
		"night_hallway_6_forward":
			
			PACBox.fade_to_room("room_night_hallway_7")
			
		"night_hallway_6_to_dining":
			
			PACBox.fade_to_room("room_night_dining")
			
		"night_hallway_7_back":
			
			PACBox.fade_to_room("room_night_hallway_6")
			
		"night_hallway_7_left":
			
			PACBox.fade_to_room("room_night_hallway_8")
			
		"night_hallway_8_back":
			
			PACBox.fade_to_room("room_night_hallway_7")
			
		"night_hallway_8_to_foyer":
			
			PACBox.fade_to_room("room_night_foyer")
			
		"night_hallway_9_back":
			
			if not PACBox.get_flag("seen_night_living_room"):
				PACBox.fade_to_room("room_night_hallway_5")
			else:
				PACBox.fade_to_room("room_night_hallway_alt")
			
		"night_hallway_9_forward":
			
			PACBox.fade_to_room("room_night_hallway_10")
			
		"night_hallway_9_to_laundry":
			
			PACBox.fade_to_room("room_night_laundry")
			
		"night_hallway_10_back":
			
			PACBox.fade_to_room("room_night_hallway_9")
			
		"night_hallway_10_to_hallway_11":
			
			PACBox.fade_to_room("room_night_hallway_11")
			
		"night_hallway_11_back":
			
			PACBox.fade_to_room("room_night_hallway_10")
			
		"night_hallway_11_to_living_room":
			
			PACBox.fade_to_room("room_night_living_room")
			
		"night_hallway_alt_back":
			
			PACBox.fade_to_room("room_night_hallway_9")
			
		"night_hallway_alt_right":
			
			PACBox.fade_to_room("room_night_hallway_4")
			
		"night_living_room_back":
			
			PACBox.fade_to_room("room_night_hallway_11")
			
		"night_laundry_back":
			
			PACBox.fade_to_room("room_night_hallway_9")
			
		"night_foyer_back":
			
			PACBox.fade_to_room("room_night_hallway_8")
			
		"night_dining_back":
			
			PACBox.fade_to_room("room_night_hallway_6")
			
		"night_study_back":
			
			PACBox.fade_to_room("room_night_hallway_2")
			
		"DEFAULT":
			
			print("Default event invoked! Please define a custom event ID!")
			
		_:
			
			print("ERROR! Invalid event ID called! Please define a valid event ID!")
			
