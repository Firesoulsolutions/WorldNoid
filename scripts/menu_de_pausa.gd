extends Control
#pausa el juego
func _physics_process(delta):
	if Input.is_action_just_pressed("pausa"):
		get_tree().paused=not get_tree().paused
		$Fondo/AudioSPausa.play()
		$Fondo.visible=not$Fondo.visible
	
