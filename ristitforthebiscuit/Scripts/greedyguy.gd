extends Node2D

const Speed = 60

var Direction = 1
@onready var raycastright: RayCast2D = $raycastright
@onready var raycastleft: RayCast2D = $raycastleft
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if raycastright.is_colliding():
		Direction = -1
		animated_sprite.flip_h = true
	if raycastleft.is_colliding():
		Direction = 1
		animated_sprite.flip_h = false
	
	position.x += Direction * Speed * delta
