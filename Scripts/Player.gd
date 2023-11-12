extends Node2D

var tile_size = 16
var inputs = {"right": Vector2.RIGHT,"left": Vector2.LEFT,"up": Vector2.UP,"down": Vector2.DOWN}
@onready var ray = $PlayerLookRaycast

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
#	position = position.snapped(Vector2.ONE * tile_size)
#	position += Vector2.ONE * tile_size/2

func _unhandled_input(event):
	for direction in inputs.keys():
		if event.is_action_pressed(direction):
			move(direction)

func move(dir):
	ray.target_position = inputs[dir] * tile_size
	ray.force_raycast_update();
	if(!ray.is_colliding()):
		position += inputs[dir] * tile_size

func _process(delta):
	pass
