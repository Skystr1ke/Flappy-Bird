extends Popup

onready var _button := $Button as Button
onready var _button_scale_animator := create_tween() \
		.set_trans(Tween.TRANS_LINEAR) \
		.set_ease(Tween.EASE_IN_OUT)


func _ready() -> void:
	get_tree().paused = true
	show()


func _on_Button_pressed() -> void:
	get_tree().change_scene("res://start_menu/start_menu.tscn")
	get_tree().paused = false


func _on_Button_mouse_entered() -> void:
	_button_scale_animator.tween_property(_button, "rect_scale", Vector2(2, 2), 0.1)


func _on_Button_mouse_exited() -> void:
	_button_scale_animator.tween_property(_button, "rect_scale", Vector2(1.5, 1.5), 0.1)
