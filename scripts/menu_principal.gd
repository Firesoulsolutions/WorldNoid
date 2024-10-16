extends Control

func _ready():
	$AudioMenuPrincipal.play()
	
func _on_opciones_boton_pressed():
	$AudioBoton.play()
	get_tree().change_scene_to_file("res://escenas/Screens/menus/menu_de_opciones.tscn")


func _on_salir_boton_pressed():
	$AudioBoton.play()
	get_tree().quit()


func _on_jugar_boton_pressed():
	$AudioBoton.play()
	get_tree().change_scene_to_file("res://escenas/Screens/transitionScreen/how_to_play_screen.tscn")



func _on_Credits_boton_pressed() -> void:
	$AudioBoton.play()
	get_tree().change_scene_to_file("res://escenas/Screens/menus/menu_creditos.tscn")
	pass 
