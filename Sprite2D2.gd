extends AnimatedSprite2D
@onready var velocity = self.get_parent().velocity


var cameraShaderOn = false;
var cameraShader = preload("res://brightnessShader.gdshader")
var cameraDead = false
var camActive = false
var flashDead = false
var flashActive = false
var condition = "base_"
var direction = "_right"
var movement = "idle"

func _ready():
	self.material.shader = cameraShader

	
func updateAnimation():
		
		if camActive:
			condition = "camera_"
		elif flashActive:
			condition = "flashlight_"
		else:
			condition = "base_"
		
		if velocity.x < 0: direction = "_left"
		elif velocity.x > 0: direction = "_right"
		
		if velocity.y < 0: direction = "_back"
		elif velocity.y > 0: direction = "_forward"
		
		if velocity.y == 0 and velocity.x == 0:
			movement = "idle"
		else:
			movement = "walk"
		
		self.play(condition+movement+direction)
	

func _process(delta):
	velocity = self.get_parent().velocity
	if Input.is_action_just_pressed("KEY_C") and !cameraShaderOn and !cameraDead:
		cameraShaderOn = true
		toggleCamShader(cameraShaderOn)
		camActive = true
		flashActive = false
	elif (Input.is_action_just_pressed("KEY_C") and cameraShaderOn) or cameraDead:
		cameraShaderOn = false
		camActive = false
		toggleCamShader(cameraShaderOn)
	elif Input.is_action_just_pressed("KEY_F") and !flashActive and !flashDead:
		#turning on flashlight	
		flashActive = true
	elif Input.is_action_just_pressed("KEY_F") or flashDead:
		flashActive = false
		
	updateAnimation()	
		
func toggleCamShader(cs):
	if cs:
		self.material.set_shader_parameter("contrast",3)
		self.material.set_shader_parameter("brightness",0.197)
		self.material.set_shader_parameter("saturation",1.7)
	else:
		self.material.set_shader_parameter("contrast",1)
		self.material.set_shader_parameter("brightness",0)
		self.material.set_shader_parameter("saturation",1)
	
