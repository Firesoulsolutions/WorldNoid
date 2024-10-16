extends Control


func _on_rejugar_boton_pressed():
	VariablesGlobales.nivel=0
	VariablesGlobales.vida=3
	get_tree().change_scene_to_file("res://escenas/niveles/lvl_1.tscn")


func _on_salir_boton_pressed():
	get_tree().quit()
