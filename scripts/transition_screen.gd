extends Control
@onready var animation_fly: AnimationPlayer = $AnimationPlayer
@onready var destino: Label = $VBoxContainer/Destino
@onready var proximo_destino: Label = $VBoxContainer/ProximoDestino

func _ready() -> void:
	swichtAnimation()
	pass
	
func swichtAnimation():
	match VariablesGlobales.nivel:
		
		16:
			destino.text="PETRA"
			animation_fly.play("volar")
		32:
			destino.text="CHICHÉN ITZÁ"
			animation_fly.play("volar")
		48:
			destino.text="LA GRAN MURALLA CHINA"
			animation_fly.play("volar")
		64:
			destino.text="EL COLISEO"
			animation_fly.play("volar")
		80:
			destino.text="EL CRISTO REDENTOR"
			animation_fly.play("volar")
		96:
			destino.text="El TAJ MAHAL"
			animation_fly.play("volar")
		
	pass
	



func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	#cambia niveles
	match VariablesGlobales.nivel:
		
		16:
			get_tree().change_scene_to_file("res://escenas/niveles/lvl_2.tscn")
		32:
			get_tree().change_scene_to_file("res://escenas/niveles/lvl_3.tscn")
		48:
			get_tree().change_scene_to_file("res://escenas/niveles/lvl_4.tscn")
			
		64:
			get_tree().change_scene_to_file("res://escenas/niveles/lvl_5.tscn")
			
		80:
			get_tree().change_scene_to_file("res://escenas/niveles/lvl_6.tscn")
			
		96:
			get_tree().change_scene_to_file("res://escenas/niveles/lvl_7.tscn")
			
	pass # Replace with function body.
