extends Node2D
@onready var luncher: AudioStreamPlayer = $luncher
@onready var explosion: AudioStreamPlayer = $Explosion
@onready var rocket: Sprite2D = $rocket
@onready var explosion_Particles: CPUParticles2D = $rocket/explosion2
var angulo=randf_range(-45.0,45.0)


func _on_lanzamiento_fuegos_timeout() -> void:
	
	RocketLaunch()
	luncher.play()
	pass # Replace with function body.


func _on_explosion_timeout() -> void:
	explosion_Particles.colorAleatorio()
	explosion_Particles.emitting=true
	
	explosion.play()
	pass # Replace with function body.

func RocketLaunch():
	
	if randi() % 2==0:
		rocket.position.x+=10
		
	else:
		rocket.position.x+=-10
		
	rocket.position.y=-250
	
	pass
