extends CharacterBody2D

@export var SPEED: float = 300.0
@export var MAX_DISTANCE: float = 300.0
@export var character: CharacterBody2D


func _ready() -> void:
	pass # Replace with function body.


func _process(delta: float) -> void:
	
	# player movement
	var direction: Vector2 = Input.get_vector("move_left", "move_right", "move_up", 'move_down')
	velocity = direction * SPEED
	move_and_slide()
	
	# restrict to circle around character
	if position.distance_to(character.position) > MAX_DISTANCE:
		position = character.position - position.direction_to(character.position) * MAX_DISTANCE
