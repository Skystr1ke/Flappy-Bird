extends Node2D

func get_spawn_position() -> Vector2:
	randomize()
	var points := ($SpawnPoints as Node2D).get_children()
	points.shuffle()
	return points[0].global_position

func spawn_pipe() -> void:
	var spawn_position := get_spawn_position()
	var pipe := preload("res://pipe/pipe.tscn").instance() as Area2D
	var main := get_tree().current_scene
	main.add_child(pipe)
	pipe.global_position = spawn_position
	pipe.pause_mode = Node.PAUSE_MODE_STOP


func _on_Timer_timeout() -> void:
	spawn_pipe()
