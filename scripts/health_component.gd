class_name HealthComponent
extends Node2D


signal health_depleted


@export var MAX_HEALTH: int
var health: int


func _ready() -> void:
	health = MAX_HEALTH
	$Healthbar.max_value = MAX_HEALTH
	$Healthbar.value = health

func take_damage(damage: int) -> void:
	health -= damage
	$Healthbar.value = health
	
	# emit signal if health is depleted
	if health <= 0:
		health_depleted.emit()
