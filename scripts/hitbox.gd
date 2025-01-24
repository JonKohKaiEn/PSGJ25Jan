class_name Hitbox
extends Area2D


func _on_area_entered(area: Hurtbox) -> void:
	area.damage(get_parent().damage)
