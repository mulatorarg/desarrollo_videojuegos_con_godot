extends Node2D

@export var speed := 100.0

func _process(delta):
	position.x -= speed * delta

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is Player:
		GameState.reset_level()
