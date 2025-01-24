class_name Hurtbox
extends Area2D


signal take_damage(damage)


func damage(dmg: int) -> void:
	take_damage.emit(dmg)
