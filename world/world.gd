extends Node2D

onready var _score_label = $Score/Label

var score = 0 setget set_score


func _input(event: InputEvent) -> void:
	if event.is_action_released("quit"):
		get_tree().quit()


func _on_Bird_area_entered(_area: Area2D) -> void:
	var _death_popup := preload("res://death_popup/death_popup.tscn").instance() as CanvasLayer
	add_child(_death_popup)


func set_score(value):
	score = value
	_score_label.text = str(score)
