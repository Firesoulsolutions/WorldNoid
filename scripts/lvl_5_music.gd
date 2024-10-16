extends Node2D
func _ready():
	$AudioItalia.play()
	if VariablesGlobales.nivel!=64:
		VariablesGlobales.nivel=64
	else: print("valor del nivel correcto")
	print("nivel1 nivel= "+str(VariablesGlobales.nivel))


func _on_area_2d_perder_body_entered(body):
	VariablesGlobales.perderVida()
	VariablesGlobales.gameOver()
