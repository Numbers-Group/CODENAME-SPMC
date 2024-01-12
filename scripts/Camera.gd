extends Camera2D

var _target_zoom: float = 1.0;
const ZOOM_RATE: float = 8.0;

func _physics_process(delta: float) -> void:
	zoom = lerp(
		zoom,
		_target_zoom * Vector2.ONE,
		ZOOM_RATE * delta
	)
	
	set_physics_process(
		not is_equal_approx(zoom.x, _target_zoom)
	)

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		if event.button_mask == MOUSE_BUTTON_MASK_MIDDLE:
			position -= event.relative * zoom;
