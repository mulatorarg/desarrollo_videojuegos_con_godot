extends Area2D

@onready var label: Label = $"../Label"

func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		GameState.reset_level()


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is Player:
		label.visible = true
		await get_tree().create_timer(0.2).timeout
		label.visible = false
		await get_tree().create_timer(0.3).timeout
		label.visible = true
		await get_tree().create_timer(1.0).timeout
		GameState.reset_level()
