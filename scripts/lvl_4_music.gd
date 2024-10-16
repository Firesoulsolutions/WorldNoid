extends Node2D
func _ready():
	$AudioChina.play()
	if VariablesGlobales.nivel!=48:
		VariablesGlobales.nivel=48
	else: print("valor del nivel correcto")
	print("nivel1 nivel= "+str(VariablesGlobales.nivel))


func _on_area_2d_perder_body_entered(body):
	VariablesGlobales.perderVida()
	VariablesGlobales.gameOver()
