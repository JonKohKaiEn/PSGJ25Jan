extends Node2D


@export var damage_delay: float = 1.0
@export var aura_radius: float = 50.0
@export var damage: int = 1

func _ready() -> void:
	$Timer.wait_time = damage_delay
	$Hurtbox/CollisionShape2D.shape.radius = aura_radius
	


func _on_timer_timeout() -> void:
	$AnimationPlayer.play("aura")
	$Particles.emitting = true


func _on_body_entered(body: Mob) -> void:
	body.take_damage(damage)
