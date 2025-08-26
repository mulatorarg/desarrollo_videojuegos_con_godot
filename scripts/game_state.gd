extends Node

var lost: bool = false
var won: bool = false

func _process(_delta: float) -> void:
	if lost:
		reset_level()

func reset_level():
	await get_tree().physics_frame
	lost = false
	get_tree().reload_current_scene()
