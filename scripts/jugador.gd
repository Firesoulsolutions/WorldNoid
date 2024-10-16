extends CharacterBody2D
# esto hace que la variable se pueda tocar desde el editor
@export var velocidad : float
@onready var chispas: CPUParticles2D = $chispas

func _ready():
	velocidad=450

func _physics_process(delta):
	
	movimientoJugador()
	


#para mover el personaje
func movimientoJugador():
	var direccion=Input.get_axis("movIzq","movDer")
	velocity.x=direccion*velocidad
	move_and_collide(velocity*get_process_delta_time())

func _on_spark_detector_area_entered(area: Area2D) -> void:
	chispas.emitting=true
	print("tirando chispas")
	pass # Replace with function body.
