extends CharacterBody2D

const DEATH_BORDER = 480.0

@export var speed := 300.0
var direction := Vector2(0.3, 1)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func _process(delta):
	if position.y >= DEATH_BORDER:
		queue_free()

func _physics_process(delta):
	velocity = direction * (speed * delta)
	var collision = move_and_collide(velocity)
	if (collision):
		direction = direction.bounce(collision.get_normal())
		
		var collider = collision.get_collider()
		if (collider is Block):
			collider.queue_free()
