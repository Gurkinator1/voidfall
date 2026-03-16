class_name PulseRifle extends Weapon

# Test Weapon
func _init():
	var name = "Pulse Rifle"
	var fire_rate = 2.0
	var proj_count = 1.0
	var proj_spread = 0.0
	var proj_speed = 20.0
	super(name, fire_rate, proj_count, proj_spread, proj_speed)
