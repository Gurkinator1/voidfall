extends CharacterBody2D

@onready var _animated_sprite = $AnimatedSprite2D


const SPEED = 350.0

func update_animation(input_direction: Vector2):
	if input_direction.length()>0 :
		_animated_sprite.play("walking")
	else:
		_animated_sprite.stop()
	if input_direction.x != 0:
		_animated_sprite.flip_h = input_direction.x > 0;

func _physics_process(_delta: float) -> void:
	var input_direction = Input.get_vector("left", "right", "up", "down")
	
	velocity = input_direction * SPEED
	move_and_slide()
	
	update_animation(input_direction)
