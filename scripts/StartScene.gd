extends Node2D

var pointer = load("res://assets/Tiny Swords (Update 010)/UI/Pointers/pointer32.png");



func _on_button_pressed():
	get_tree().change_scene_to_file("res://scenes/levels/polygon.tscn");

func _on_button_2_pressed():
	get_tree().quit();

# Called when the node enters the scene tree for the first time.
func _ready():
	Input.set_custom_mouse_cursor(pointer);
	


func _on_button_3_pressed():
	get_tree().change_scene_to_file("res://scenes/levels/SimplePolygon.tscn");
	
