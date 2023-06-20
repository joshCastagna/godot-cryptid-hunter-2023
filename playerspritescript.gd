extends Sprite2D

var cameraShaderOn = false;
var cameraShader = preload("res://brightnessShader.gdshader")
var cameraDead = false

func _ready():
	self.material.shader = cameraShader
	
func _process(delta):
	if Input.is_action_just_pressed("KEY_C") and !cameraShaderOn and !cameraDead:
		cameraShaderOn = true
		toggleCamShader(cameraShaderOn)
	elif (Input.is_action_just_pressed("KEY_C") and cameraShaderOn) or cameraDead:
		cameraShaderOn = false
		toggleCamShader(cameraShaderOn)
		
		
func toggleCamShader(cs):
	if cs:
		self.material.set_shader_parameter("contrast",3)
		self.material.set_shader_parameter("brightness",0.197)
		self.material.set_shader_parameter("saturation",1.7)
	else:
		self.material.set_shader_parameter("contrast",1)
		self.material.set_shader_parameter("brightness",0)
		self.material.set_shader_parameter("saturation",1)
	
