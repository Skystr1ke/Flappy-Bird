extends Node


func _input(event: InputEvent) -> void:
	if event.is_action_released("quit"):
		get_tree().quit()
