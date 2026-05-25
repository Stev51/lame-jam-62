extends Node2D

func _ready() -> void:
	
	$CreditsButton.visible = false
	$CreditsScreen.visible = false
	
	await get_tree().create_timer(7.0).timeout
	
	$CreditsButton.visible = true
	$AudioStreamPlayer.play()

func _on_credits_button_pressed() -> void:
	$CreditsScreen.visible = true
	$CreditsButton.visible = false

func _on_back_button_pressed() -> void:
	$CreditsScreen.visible = false
	$CreditsButton.visible = true
