extends Control
@onready var win=$win

func _ready() -> void:
	win.play()
pass
	


func _on_continuar_boton_pressed() -> void:
	get_tree().change_scene_to_file("res://escenas/Screens/menus/menu_creditos.tscn")
	pass # Replace with function body.
