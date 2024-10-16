extends Control
#variables control de audio
@onready var masterVol=get_node("GridVolumen/Slider_Master_Vol")
@onready var musicVol=get_node("GridVolumen/Slider_Music_Vol")
@onready var sfxVol=get_node("GridVolumen/Slider_SFX_vol")

func _ready():
	#inicia la musica de fondo
	$AudioBackGround.play()

func _on_salir_boton_pressed():
	#hace sonar el boton y sale del juego
	$AudioBoton.play()
	get_tree().quit()


func _on_volver_boton_pressed():
	#hace sonar el boton y vuelve al menu de inicio
	$AudioBoton.play()
	get_tree().change_scene_to_file("res://escenas/Screens/menus/menu_principal.tscn")





func _on_slider_master_vol_value_changed(value):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"),value)
	pass # Replace with function body.


func _on_slider_music_vol_value_changed(value):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Music"),value)
	pass # Replace with function body.


func _on_slider_sfx_vol_value_changed(value):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("SFX"),value)
	$AudioBoton.play()
	pass # Replace with function body.
