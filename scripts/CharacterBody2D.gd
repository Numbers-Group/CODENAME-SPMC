extends CharacterBody2D

const SPEED = 150;
var target = position;
var action
@onready var global_scripts = preload("res://scripts/Dice.gd");

# Input handler.
func _input(event):
	if event.is_action_pressed("mouse_left_click"):
		target = get_global_mouse_position()
		action = "run"
	elif event.is_action_pressed("mouse_right_click"):
		if global_scripts.critical_chance() == true:
			action = "attack2"
		else:
			action = "attack"


func _physics_process(delta):
	velocity = position.direction_to(target) * SPEED
	
	if velocity[0] > 0:
		$AnimatedSprite2D.flip_h = false
	else:
		$AnimatedSprite2D.flip_h = true
		
		
	if position.distance_to(target) > 10:
		$AnimatedSprite2D.play("run")
		move_and_slide()
	elif action == "attack":
		$AnimatedSprite2D.play("attack")
	elif action == "attack2":
		$AnimatedSprite2D.play("attack2")
	else:
		$AnimatedSprite2D.play("idle")
	
	if action == "attack" and $AnimatedSprite2D.frame == 5:
		print("Changed")
		$AnimatedSprite2D.stop()
		$AnimatedSprite2D.play("idle")
		action = "idle"
	elif action == "attack2" and $AnimatedSprite2D.frame == 5:
		print("Changed")
		$AnimatedSprite2D.stop()
		$AnimatedSprite2D.play("idle")
		action = "idle"
	
		
	
		
