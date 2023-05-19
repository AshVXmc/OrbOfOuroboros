class_name Battle extends Node2D

var enemies
signal hurt_enemy(damage, elemental_type)


func _ready():
	Global.your_turn = true
	for e in get_tree().get_nodes_in_group("Enemy"):
		enemies += 1
