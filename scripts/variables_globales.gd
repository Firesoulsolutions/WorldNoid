extends Node
#este es un script autoload
var vida=3
var nivel =0
#game play controler
func gameOver():
	if VariablesGlobales.vida==0:
		VariablesGlobales.vida=3
		get_tree().get_nodes_in_group("FXperderVida")[0].play()
		get_tree().call_group("pelota","hide")
		await get_tree().create_timer(0.32).timeout
		get_tree().change_scene_to_file("res://escenas/Screens/menus/menu_gameover.tscn")
func perderVida():
	print("toco el borde de abajo")
	get_tree().get_nodes_in_group("vida")[0].disminuirVida(1)
	get_tree().get_nodes_in_group("FXperderVida")[0].play()
	get_tree().call_group("pelota","resetPos")
	
func fxLadrilloBrak():
	get_tree().get_nodes_in_group("FXBreak")[0].play()

#option menu controler
func update_vol(bus_index,vol):#min slider 0
	#modifica el volumen dependiendo del slider que uses "bus_index" 
	#AudioServer.set_bus_volume_db(bus_index,vol if vol==0 else AudioServer.set_bus_mute(bus_index,true))
	pass
