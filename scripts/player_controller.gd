extends CharacterBody2D

@onready var _animated_sprite = $AnimatedSprite2D


const SPEED = 350.0

func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * SPEED

func walking_animation():
	if Input.is_action_pressed("left"):
		_animated_sprite.flip_h = false
		_animated_sprite.play("walking")
	elif Input.is_action_pressed("right"):
		_animated_sprite.flip_h = true
		_animated_sprite.play("walking")
	elif Input.is_action_pressed("up") or Input.is_action_pressed("down"):
		_animated_sprite.play("walking")
	else:
		_animated_sprite.stop()

func _physics_process(_delta: float) -> void:
	get_input()
	move_and_slide()

func _process(_delta: float) -> void:
	walking_animation()
