extends Node

class CharacterBase:
	var name: String
	var player_class: Classes
	var player_level: int
	var player_race: Race
	var skills: CharacterSkills

class CharacterSkills:
	var wisdom: int
	var charisma: int
	var intelligence: int
	var endurance: int
	var dexternity: int
	var strength: int

enum Race {
	GITH,
	DWARF,
	GOBLIN,
	HUMAN,
	GNOME,
	TIEFLING,
	ELF,
}

enum Classes {
	BARD,
	BARBARIAN,
	FIGHTER,
	WIZARD,
	DRUID,
	CLERIC,
	ARTIFICER,
	WARLOCK,
	MONK,
	PALADIN,
	ROGUE,
	RANGER,
	SORCERER,
}
	


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
