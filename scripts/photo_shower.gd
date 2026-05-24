extends Control

@onready var photo_sprite_node = $Photo

var photo1_sprite = preload("res://assets/img/photos/photo1.png")
var photo2_sprite = preload("res://assets/img/photos/photo2.png")
var photo3_sprite = preload("res://assets/img/photos/photo3.png")
var photo4_sprite = preload("res://assets/img/photos/photo4.png")
var photo5_sprite = preload("res://assets/img/photos/photo5.png")
var photo6_sprite = preload("res://assets/img/photos/photo6.png")
var photo7_sprite = preload("res://assets/img/photos/photo7.png")

var photo11_sprite = preload("res://assets/img/photos/photo11.png")
var photo12_sprite = preload("res://assets/img/photos/photo12.png")
var photo13_sprite = preload("res://assets/img/photos/photo13.png")
var photo14_sprite = preload("res://assets/img/photos/photo14.png")
var photo15_sprite = preload("res://assets/img/photos/photo15.png")
var photo16_sprite = preload("res://assets/img/photos/photo16.png")
var photo17_sprite = preload("res://assets/img/photos/photo17.png")

var sprite_reference = {
	
	1: photo1_sprite,
	2: photo2_sprite,
	3: photo3_sprite,
	4: photo4_sprite,
	5: photo5_sprite,
	6: photo6_sprite,
	7: photo7_sprite,
	
	11: photo11_sprite,
	12: photo12_sprite,
	13: photo13_sprite,
	14: photo14_sprite,
	15: photo15_sprite,
	16: photo16_sprite,
	17: photo17_sprite
	
}

func _ready() -> void:
	visible = false

func show_photo(id: int) -> void:
	if id in sprite_reference:
		photo_sprite_node.texture = sprite_reference[id]
		visible = true

func hide_photo() -> void:
	visible = false
