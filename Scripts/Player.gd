extends CharacterBody2D

const PADDLE_W = 64.0
@export var speed = 400.0
var screen_width;

func _ready():
	screen_width = get_viewport().size.x
	
func _physics_process(delta):
	# ofscreen teleportation
	if (position.x < -PADDLE_W):
		position.x = screen_width
	if (position.x > screen_width + PADDLE_W):
		position.x = -(PADDLE_W / 2)
		return

	# movement
	var direction = Vector2(Input.get_axis("move_left", "move_right"), 0)
	velocity = direction * speed
	move_and_slide()
