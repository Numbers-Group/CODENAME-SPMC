var rng = RandomNumberGenerator.new();

func dice(min: int, max: int) -> int:
	return rng.randi_range(min, max);

static func critical_chance(min: int = 1, max: int = 3) -> bool:
	var rng = RandomNumberGenerator.new();
	return true if rng.randi_range(min, max) == 2 else false


func initiative():
	pass
	
func attack() -> int:
	return 0;
	
	
	
