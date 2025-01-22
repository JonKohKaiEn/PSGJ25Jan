extends Area2D


@export var DAMAGE_DELAY: float = 1.0
@export var AURA_RADIUS: float = 50.0
@export var DAMAGE: int = 1

func _ready() -> void:
	$Timer.wait_time = DAMAGE_DELAY
	$CollisionShape2D.shape.radius = AURA_RADIUS


func _on_timer_timeout() -> void:
	$AnimationPlayer.play("aura")
	$Particles.emitting = true


func _on_body_entered(body: Mob) -> void:
	body.take_damage(DAMAGE)
