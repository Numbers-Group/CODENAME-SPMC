extends CharacterBody2D

const SPEED = 150;
var target = position;
var action

# Input handler.
func _input(event):
	if event.is_action_pressed("mouse_right_click"):
		target = get_global_mouse_position()
		action = "run"
	elif event.is_action_pressed("mouse_left_click"):
		action = "attack"


func _physics_process(delta):
	velocity = position.direction_to(target) * SPEED
	
	if velocity[0] > 0:
		$AnimatedSprite2D.flip_h = false
	else:
		$AnimatedSprite2D.flip_h = true
		
		
	if position.distance_to(target) > 10:
		$AnimatedSprite2D.play(action)
		move_and_slide()
	else:
		$AnimatedSprite2D.play("idle")
		

