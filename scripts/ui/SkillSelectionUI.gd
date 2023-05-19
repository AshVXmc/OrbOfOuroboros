extends Control

var is_selecting : bool = false
onready var basic_attack : String
onready var skill_1 : String
onready var skill_2 : String
onready var elemental_type : String
# Single, AoE
onready var basic_attack_type : String
onready var skill_1_type : String
onready var skill_2_type : String

func _ready():
	get_parent().get_node("SelectTarget").visible = false
	$BasicAttack/Label.text = basic_attack
	$Skill1/Label.text = skill_1
	$Skill2/Label.text = skill_2
	$BasicAttack.add_to_group(basic_attack_type)
	$Skill1.add_to_group(skill_1_type)
	$Skill2.add_to_group(skill_2_type)


func _on_BasicAttack_pressed():
	if basic_attack_type == "Single":
		get_parent().get_node("SelectTarget").visible = true
		self.visible = false
		is_selecting = true
