extends Node

const Block = preload("res://Block.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	const TOTAL_ROWS = 4
	const PER_ROW = 16
	const X_OFFSET = 50
	const Y_OFFSET = 50
	const MARGIN = 4

	for row in range(TOTAL_ROWS):
		for x in range(PER_ROW):
			var block = Block.instantiate()
			
			block.position.x = x * (block.BLOCK_W + MARGIN) + X_OFFSET
			block.position.y = row * (block.BLOCK_H + MARGIN) + Y_OFFSET
			
			add_child(block)
