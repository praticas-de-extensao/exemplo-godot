extends CharacterBody2D

@export var speed = 100.0

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D


func _physics_process(delta):
	# Get the input direction and handle the movement.
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	if direction:
		velocity.x = direction.x * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)
		
	if Input.is_action_pressed("ui_right"):
		animated_sprite_2d.flip_h = true
	elif Input.is_action_pressed("ui_left"):
		animated_sprite_2d.flip_h = false
	move_and_slide()
