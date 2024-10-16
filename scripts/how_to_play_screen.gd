extends Control
@onready var animation: AnimationPlayer = $AnimationPlayer

func _ready() -> void:
	animation.play("MoveExample")
	pass


func _on_Continuar_boton_pressed() -> void:
	$AudioBoton.play()
	get_tree().change_scene_to_file("res://escenas/Screens/transitionScreen/wellCome_screem.tscn")
	pass # Replace with function body.
