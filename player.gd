extends CharacterBody2D


# character movement
# character velocity
var speed = 100
var camOn = false
var cameraShader = preload("res://brightnessShader.gdshader")


func movementInput():
	var direction = Input.get_vector("ui_left","ui_right","ui_up","ui_down")
	if Input.get_action_strength("shift_type"):
		speed = 150 # shift used as 'sprint' key
	else:
		speed = 100
	velocity = direction * speed

func updateAnimation():
	
		var direction = "Down"
		if velocity.x < 0: direction = "Left"
		elif velocity.x > 0: direction = "Right"
		elif velocity.y < 0: direction = "Up"
		
		self.animations.play()

func _process(delta):
	if Input.is_action_just_pressed("KEY_C") and !camOn :
		self.material = cameraShader
		print("shader on")
		camOn = true
	elif Input.is_action_just_pressed("KEY_C") and camOn :
		self.material = null
		camOn = false

func _physics_process(delta):
	movementInput()
	move_and_slide()


