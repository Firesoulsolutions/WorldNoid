extends CharacterBody2D
@export var velPelota: float
var initialPosition:Vector2


func _ready():
	initialPosition=global_position
	movePelota()
	
func _physics_process(delta):
	
	var colision_info=move_and_collide(velocity * delta)
	if colision_info:
		velocity=velocity.bounce(colision_info.get_normal())
		
func resetPos():
	global_position=initialPosition
	movePelota()
	pass
	

func movePelota():
	velPelota=200
	if randi() % 2==0:
		velocity.x=1
		
	else:
		velocity.x=-1
	
	velocity.y=-1
	velocity*=velPelota
	pass
