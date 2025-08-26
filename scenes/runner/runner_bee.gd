extends Node2D

func _on_area_2d_body_entered(_body: Node2D) -> void:
	print("Me Chocaste papu")
	GameState.lost = true
