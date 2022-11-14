extends Node2D


onready var player = $Player
onready var label = $MarginContainer/VBoxContainer/MarginContainer/Label


func _ready():
	label.update_experience_label(player.level, player.experience, player.experience_needed, player.experience_total)


func _on_Button_pressed():
	player.gain_experience(5)
	label.update_experience_label(player.level, player.experience, player.experience_needed, player.experience_total)


func _on_Button2_pressed():
	player.gain_experience(100)
	label.update_experience_label(player.level, player.experience, player.experience_needed, player.experience_total)
