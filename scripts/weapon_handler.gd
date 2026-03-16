extends Node

var _weapons: Array[Weapon] = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# Temp for testing
	var pulse_rifle = preload("res://scripts/weapons/pulse_rifle.gd")
	var weapon = pulse_rifle.new()
	add_weapon(weapon)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	for weapon in _weapons:
		weapon.fire(delta)

func add_weapon(weapon: Weapon):
	_weapons.append(weapon)
