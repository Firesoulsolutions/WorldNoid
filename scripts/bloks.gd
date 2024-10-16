extends StaticBody2D
# intancia variables de sprites y colider para usarlar
signal ladrilloRoto

@onready var sprite=$Sprite_bloque
@onready var colider=$Collision_staticBody_bloque
@onready var explosion: CPUParticles2D = $explosion



#borra los bloques cuando los toca la pelota
func _on_area_bloque_body_entered(body):
	explosion.emitting=true
	eliminarBloques()

	
func eliminarBloques():
	print("toca el bloque")
	emit_signal("ladrilloRoto")
	sprite.queue_free()
	colider.queue_free()
	
	
 
