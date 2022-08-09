extends CanvasLayer

onready var _button := $Button as Button


func _on_Button_pressed() -> void:
	get_tree().change_scene("res://world/world.tscn")


func _on_Button_mouse_entered() -> void:
	create_tween().tween_property(_button, "rect_scale", Vector2(2, 2), 0.1) \
			.set_trans(Tween.TRANS_LINEAR) \
			.set_ease(Tween.EASE_IN_OUT)


func _on_Button_mouse_exited() -> void:
	create_tween().tween_property(_button, "rect_scale", Vector2(1.5, 1.5), 0.1) \
			.set_trans(Tween.TRANS_LINEAR) \
			.set_ease(Tween.EASE_IN_OUT)
