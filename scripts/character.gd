extends CharacterBody2D


@export var SPEED: float = 600.0
@export var MAX_HEALTH: int = 10

var health: int


func _ready() -> void:
	health = MAX_HEALTH
	$HealthBar.max_value = MAX_HEALTH
	$HealthBar.value = health

func _process(delta: float) -> void:
	
	# player movement
	var direction: Vector2 = Input.get_vector("move_left_debug", "move_right_debug", "move_up_debug", 'move_down_debug')
	velocity = direction * SPEED
	move_and_slide()
