extends Room

@onready var anim_player = $AnimatedSprite2D
@onready var audio_player_node = $AudioStreamPlayer

var state = 0

func _ready() -> void:
	
	BGM.stop_bg_sound()
	BGM.stop_cry()
	
	await get_tree().create_timer(0.5).timeout
	
	anim_player.animation = "part1"
	anim_player.play()

func _on_animated_sprite_2d_animation_finished() -> void:
	
	state += 1
	
	if state == 1:
		
		anim_player.animation = "part2"
		anim_player.play()
		
		audio_player_node.play()
		
	else:
		
		audio_player_node.stop()
		get_tree().change_scene_to_file("res://scenes/end_screen.tscn")
