extends CPUParticles2D
@onready var explosion: CPUParticles2D = $"."
@onready var colorFuegos: Array=[ "blue","red","coral","green","purple","yellow","white" ]
func _ready() -> void:
	
	
	pass
	
#selecciona aleatoriamente un color del array de colores
func colorAleatorio():
	explosion.set_color(colorFuegos.pick_random())
	pass
