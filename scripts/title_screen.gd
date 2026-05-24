extends Node2D

func _ready() -> void:
	$MainScreen.visible = true
	$CreditsScreen.visible = false

func _on_start_button_pressed() -> void:
	
	FadeScreen.fade_out_slow()
	await FadeScreen.fade_out_finished
	
	BGM.stop_bg_sound()
	get_tree().change_scene_to_file("res://scenes/main.tscn")

func _on_credits_button_pressed() -> void:
	$MainScreen.visible = false
	$CreditsScreen.visible = true

func _on_back_button_pressed() -> void:
	$MainScreen.visible = true
	$CreditsScreen.visible = false
