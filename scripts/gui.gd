extends Control

@onready var room_text_node = $RoomDisplay/RichTextLabel

func update_room_text(text: String) -> void:
	room_text_node.text = text
