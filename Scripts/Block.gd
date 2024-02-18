class_name Block

extends StaticBody2D

const BLOCK_W = 32
const BLOCK_H = 16
const BLOCK_HEIGHT = 20
const BLOCK_MARGIN = 8

func _ready():
	var sprite: Sprite2D = get_node("Sprite2D")
	# set random block region from existing blocks
	var index = randi() % 7
	sprite.region_rect = Rect2(BLOCK_MARGIN, index * BLOCK_HEIGHT + BLOCK_MARGIN, BLOCK_W, BLOCK_H)
	
