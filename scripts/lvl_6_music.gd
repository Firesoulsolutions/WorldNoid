extends Node2D
func _ready():
	$AudioBrasil.play()
	if VariablesGlobales.nivel!=80:
		VariablesGlobales.nivel=80
	else: print("valor del nivel correcto")
	print("nivel1 nivel= "+str(VariablesGlobales.nivel))


func _on_area_2d_perder_body_entered(body):
	VariablesGlobales.perderVida()
	VariablesGlobales.gameOver()
