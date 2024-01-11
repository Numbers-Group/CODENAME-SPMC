var rng = RandomNumberGenerator.new();

func dice(min: int, max: int) -> int:
	return rng.randi_range(min, max);

func initiative():
	pass
	
func attack() -> int:
	return 0;
	
	
	
