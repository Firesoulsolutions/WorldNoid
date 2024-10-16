extends ProgressBar
func _ready():
	value=VariablesGlobales.vida
	
func disminuirVida(damage):
	VariablesGlobales.vida-=1
	value-=damage
	
	print("vida restante: "+str(VariablesGlobales.vida))
	print("el value es: "+str(value))
	
