extends PathFollow2D
@export var velocidad=100
@onready var propulsor: CPUParticles2D = $Sprite2D/propulsor

func _ready() -> void:
	propulsor.emitting
	pass

func _physics_process(delta: float) -> void:
	progress+=velocidad*delta
	pass
