extends CharacterBody2D

const SPEED = 150;
var target = position;
var action
@onready var global_scripts = preload("res://scripts/Dice.gd");
@onready var dice_label = get_node("../../Camera/Camera2D/Dice");
var dice: int;

# Input handler.
func _input(event):
	# Set action for animation.
	if event.is_action_pressed("mouse_left_click"):
		target = get_global_mouse_position()
		action = "run"
	elif event.is_action_pressed("mouse_right_click"):
		dice = global_scripts.critical_chance();
		dice_label.set_text(str(dice));
		if dice > 10:
			action = "attack2"
		else:
			action = "attack"


func _physics_process(delta):
	velocity = position.direction_to(target) * SPEED
	
	
	if velocity[0] > 0:
		$AnimatedSprite2D.flip_h = false
	else:
		$AnimatedSprite2D.flip_h = true
		
	# Select animation using action.
	if position.distance_to(target) > 10:
		$AnimatedSprite2D.play("run")
		move_and_slide()
	elif action == "attack":
		$AnimatedSprite2D.play("attack")
	elif action == "attack2":
		$AnimatedSprite2D.play("attack2")
	else:
		$AnimatedSprite2D.play("idle")
		
	stop_attack_animations()
	
	

func stop_attack_animations() -> void:
	if action == "attack" and $AnimatedSprite2D.frame == 5:
		$AnimatedSprite2D.stop()
		$AnimatedSprite2D.play("idle")
		action = "idle"
	elif action == "attack2" and $AnimatedSprite2D.frame == 5:
		$AnimatedSprite2D.stop()
		$AnimatedSprite2D.play("idle")
		action = "idle"
	
		
	
		
