extends Camera2D

@export var target: Node2D;
@export var speed = 4;

func _ready() -> void:
	self.position = target.position;

func _physics_process(delta: float) -> void:
	self.position = lerp(self.position, target.position, delta*speed);
