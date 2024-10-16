extends Node2D

func _ready():
	$AudioCondor.play()
	if VariablesGlobales.nivel!=0:
		VariablesGlobales.nivel=0
	else: print("valor del nivel correcto")
	print("nivel1 nivel= "+str(VariablesGlobales.nivel))


func _on_area_2d_perder_body_entered(body):
	VariablesGlobales.perderVida()
	VariablesGlobales.gameOver()
	
