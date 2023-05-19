class_name Goblin extends Node2D

var max_hp = 60 + (Global.enemy_level * (60 / 3))
const DMG_PARTICLE = preload("res://scenes/particles/DamageIndicatorParticle.tscn")

func _ready():
	$AnimatedSprite.play("Idle")
	
func hurt_effect():
	$AnimatedSprite.self_modulate(Color(255, 110,110, 255))
	yield(get_tree().create_timer(0.4), "timeout")
	$AnimatedSprite.self_modulate(Color(255, 255,255, 255))
	

