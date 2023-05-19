extends Node


var can_act : bool = true
var your_turn : bool 
var selected_character : String
var enemy_level = 1

var player_stats : Dictionary = {
	max_hp = 100,
	max_mp = 100,
	attack = 20,
	defense = 10,
	basic_attack_multiplier = 100,
	skill_1_multiplier = 250,
	skill_2_multiplier = 75,
	skill_2_burn_multiplier = 35,
	skill_2_burn_duration = 2
	
}
