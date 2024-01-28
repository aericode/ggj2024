extends Area2D

@export var chicken : RigidBody2D

var fallen = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_body_entered(body):
	if body.is_in_group("Player"):
		if(!fallen):
			chicken.gravity_scale = 1
			fallen = true
		
