extends Room

@onready var player_node = $AudioStreamPlayer

var text_done = false
var audio_done = false

func _ready() -> void:
	
	await get_tree().create_timer(0.5).timeout
	
	player_node.play()
	PACBox.queue_dialog("911_call")
	
	await Dialogic.timeline_ended
	text_done = true
	
	if audio_done:
		PACBox.call_event("done_using_laptop")

func _on_audio_stream_player_finished() -> void:
	audio_done = true
	if text_done:
		PACBox.call_event("done_using_laptop")
