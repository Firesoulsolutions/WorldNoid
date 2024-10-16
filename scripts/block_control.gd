extends Node2D
var contadorLadrillos=0




func _on_bloks_ladrillo_roto():
	contadorLadrillos+=1
	print(contadorLadrillos)
	VariablesGlobales.nivel+=1
	print(VariablesGlobales.nivel)
	VariablesGlobales.fxLadrilloBrak()
	swichtvalue()
	
func swichtvalue():
	match VariablesGlobales.nivel:
		16:
			get_tree().change_scene_to_file("res://escenas/Screens/transitionScreen/transition_screen.tscn")
			print(VariablesGlobales.nivel)
		32:
			get_tree().change_scene_to_file("res://escenas/Screens/transitionScreen/transition_screen.tscn")
		48:
			get_tree().change_scene_to_file("res://escenas/Screens/transitionScreen/transition_screen.tscn")
		64:
			get_tree().change_scene_to_file("res://escenas/Screens/transitionScreen/transition_screen.tscn")
		80:
			get_tree().change_scene_to_file("res://escenas/Screens/transitionScreen/transition_screen.tscn")
		96:
			get_tree().change_scene_to_file("res://escenas/Screens/transitionScreen/transition_screen.tscn")
		112:
			get_tree().change_scene_to_file("res://escenas/Screens/transitionScreen/Win_transition_screen.tscn")
		_: print(" pocos bloques derribados")
