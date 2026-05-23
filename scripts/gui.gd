extends Control

@onready var room_display_node = $RoomDisplay
@onready var room_text_node = $RoomDisplay/RichTextLabel
@onready var photo_place_goal_node = $PhotoPlaceGoalDisplay
@onready var photo_place_goal_text_node = $PhotoPlaceGoalDisplay/RichTextLabel
@onready var photo_check_goal_node = $PhotoCheckGoalDisplay

var location_showing = true
var photo_placing = false

var photo_place_text = "Photos Placed: "
var photo_place_max = 7

func enable_room_text_display() -> void:
	location_showing = true
	room_display_node.visible = true

func disable_room_text_display() -> void:
	location_showing = false
	room_display_node.visible = false

func hide_room_text_display() -> void:
	room_display_node.visible = false

func unhide_room_text_display() -> void:
	if location_showing:
		room_display_node.visible = true

func update_room_text(text: String) -> void:
	room_text_node.text = text

func enable_photo_place_goal_display() -> void:
	photo_placing = true
	photo_place_goal_node.visible = true

func disable_photo_place_goal_display() -> void:
	photo_placing = false
	photo_place_goal_node.visible = false

func hide_photo_place_goal_display() -> void:
	photo_place_goal_node.visible = false

func unhide_photo_place_goal_display() -> void:
	if photo_placing:
		photo_place_goal_node.visible = true

func update_photo_place_goal_display() -> void:
	var num = PACBox.get_flag("photos_placed")
	photo_place_goal_text_node.text = photo_place_text + str(num) + "/" + str(photo_place_max)

func enable_photo_check_goal_display() -> void:
	photo_check_goal_node.visible = true

func disable_photo_check_goal_display() -> void:
	photo_check_goal_node.visible = false
