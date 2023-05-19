class_name PlayerCharacter extends Node2D

const SKILL_UI = preload("res://scenes/SkillSelectionUI.tscn")
var state
var is_selected : bool = false
enum {
	IDLE, SELECTING_ATTACK, ATTACKING, HURT, DEAD
}

func _ready():
	state = IDLE
	$HealthBar.max_value = Global.player_stats["max_hp"]
	$HealthBar.value = $HealthBar.max_value

func _process(delta):
	if state == IDLE:
		$AnimatedSprite.play("Idle")
	
func receive_damage():
	pass
func hurt_effect():
	$AnimatedSprite.self_modulate(Color(255, 110,110, 255))
	yield(get_tree().create_timer(0.4), "timeout")
	$AnimatedSprite.self_modulate(Color(255, 255,255, 255))
	






func _on_StartActionButton_pressed():
	if Global.can_act and Global.your_turn:
		Global.selected_character = "Player"
		var skill_ui = SKILL_UI.instance()
		
		skill_ui.get_node("Control").basic_attack = "Basic: Katana Slash"
		skill_ui.get_node("Control").skill_1 = "Fiery Turmoil"
		skill_ui.get_node("Control").skill_2 = "Magma Blast"
		skill_ui.get_node("Control").basic_attack_type = "Single"
		skill_ui.get_node("Control").skill_1_type = "Single"
		skill_ui.get_node("Control").skill_2_type = "AoE"
		
		
		get_parent().add_child(skill_ui)
