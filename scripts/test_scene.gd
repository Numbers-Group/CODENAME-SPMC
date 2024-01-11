extends Node2D

var pointer = load("res://assets/Tiny Swords (Update 010)/UI/Pointers/pointer32.png");



# Called when the node enters the scene tree for the first time.
func _ready():
	Input.set_custom_mouse_cursor(pointer);


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
