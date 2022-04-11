extends KinematicBody2D

export var gravity = 0.5
export var bounce_scalar_y = 0.8
export var bounce_scalar_x = 0.8

var velocity = Vector2(0, 0)

func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	velocity.y += gravity * delta
	var current_collision = move_and_collide(velocity * delta * 1000, true)

	if current_collision:
		# hit!
		print("something happened!")
		velocity = velocity.bounce(current_collision.normal)
		velocity.y *= bounce_scalar_y
		
		
