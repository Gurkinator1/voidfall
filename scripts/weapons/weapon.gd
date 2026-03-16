class_name Weapon

var _name = ""
var _fire_rate = 0.0
var _proj_count = 0.0
var _proj_spread = 0.0
var _proj_speed = 0.0
var _time_since_last_fire = 0.0

func _init(name: String, fire_rate: float, proj_count: float, proj_spread: float, proj_speed: float):
	_name = name
	_fire_rate = fire_rate
	_proj_count = proj_count
	_proj_spread = proj_spread
	_proj_speed = proj_speed

func fire(delta: float):
	if _time_since_last_fire >= (1 / _fire_rate):
		_time_since_last_fire -= (1 / _fire_rate)
		# Add shoot logic
		print("Shoot!")
		pass
	else:
		_time_since_last_fire += delta
