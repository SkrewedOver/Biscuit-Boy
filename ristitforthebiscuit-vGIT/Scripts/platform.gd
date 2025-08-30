extends AnimatableBody2D

const Speed = 125

var direction = 1

@onready var raycast_right: RayCast2D = $raycastRight
@onready var raycast_left: RayCast2D = $raycastLeft

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if raycast_right.is_colliding():
		direction = -1
	if raycast_left.is_colliding():
		direction = 1

	
	position.x += direction * Speed * delta
