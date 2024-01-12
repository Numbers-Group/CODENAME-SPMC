var rng = RandomNumberGenerator.new();

func dice(min: int, max: int) -> int:
	return rng.randi_range(min, max);

static func critical_chance(min: int = 1, max: int = 20) -> int:
	var rng = RandomNumberGenerator.new();
	return rng.randi_range(min, max)


func initiative():
	pass
	
func attack() -> int:
	return 0;
	
	
	
