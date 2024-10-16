extends Node2D
func _ready():
	$AudioPetra.play()
	if VariablesGlobales.nivel!=16:
		VariablesGlobales.nivel=16
	else: print("valor del nivel correcto")
	print("nivel1 nivel= "+str(VariablesGlobales.nivel))


func _on_area_2d_perder_body_entered(body):
	
	VariablesGlobales.perderVida()
	VariablesGlobales.gameOver()
