extends Area2D

export(int) var speed := 70


func _physics_process(delta: float) -> void:
	position.x -= speed * delta
	
	if (position.x <= 50) and (position.x >= 49):
		var main := get_tree().current_scene
		if main.is_in_group("World"):
			main.score += 1
	
	if position.x <= -20:
		queue_free()
