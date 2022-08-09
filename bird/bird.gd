extends Area2D

export(int) var jump_height := 150
export(int) var gravity_force := 450

var motion := Vector2.ZERO


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("jump"):
		motion.y = -jump_height
		rotation = -PI/9


func _physics_process(delta: float) -> void:
	motion.y += gravity_force * delta
	motion.y = min(motion.y, jump_height)
	if motion.y >= 80 and rotation < PI/2:
		rotation += PI/45
	
	position += motion * delta
