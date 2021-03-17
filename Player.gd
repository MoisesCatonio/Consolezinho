extends KinematicBody2D

export(float) var gravity = 9.8
export(float) var speed = 200
export(float) var jump_force = 400

var velocity = Vector2()
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if(Input.is_action_pressed("ui_left")):
		velocity.x = -speed
		$AnimatedSprite.flip_h = true
		$AnimatedSprite.play("walk")
	elif(Input.is_action_pressed("ui_right")):
		velocity.x = speed
		$AnimatedSprite.flip_h = false
		$AnimatedSprite.play("walk")
	else:
		$AnimatedSprite.play("idle")
		velocity.x = 0
		
	if(is_on_floor() && Input.is_action_just_pressed("ui_select")):
		velocity.y -= jump_force
	
	if not is_on_floor():
		$AnimatedSprite.play("jump")
	velocity.y += gravity
	velocity = move_and_slide(velocity, Vector2.UP)
