extends CharacterBody2D

const SPEED = 150.0

func _physics_process(delta):
	var dir = Vector2(
		Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),
		Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	)
	if dir != Vector2.ZERO:
		velocity = dir.normalized() * SPEED
	else:
		velocity = Vector2.ZERO
	move_and_slide()
