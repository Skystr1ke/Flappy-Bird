extends Node2D


func _on_AnimationPlayer_animation_started(anim_name: String) -> void:
	get_tree().paused = true


func _on_AnimationPlayer_animation_finished(anim_name: String) -> void:
	get_tree().paused = false
