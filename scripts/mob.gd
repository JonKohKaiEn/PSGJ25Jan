class_name Mob
extends CharacterBody2D

@export var SPEED: float = 200.0
@export var MAX_HEALTH: int = 5

var health: int

@onready var character: CharacterBody2D = get_node("/root/Main/Character")


func _ready() -> void:
	health = MAX_HEALTH


func _physics_process(delta: float) -> void:
	var direction = position.direction_to(character.position)
	velocity = direction * SPEED
	move_and_slide()
	

func take_damage(damage: int) -> void:
	health -= damage
	print("Damage taken")
	
	if health <= 0:
		queue_free()
