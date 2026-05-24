extends Node2D

func _on_start_button_pressed() -> void:
	
	FadeScreen.fade_out_slow()
	await FadeScreen.fade_out_finished
	
	BGM.stop_bg_sound()
	get_tree().change_scene_to_file("res://scenes/main.tscn")

func _on_credits_button_pressed() -> void:
	pass # Replace with function body.
