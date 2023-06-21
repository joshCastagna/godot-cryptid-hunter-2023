extends Timer
signal camActive()
signal camInactive()
var flashOn = false
# REFERENCE THIS FOR FLASHLIGHT AND CAMERA BATTERY
var firstStart = true
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("escape"):
		self.paused = true
	if Input.is_action_just_pressed("KEY_C"):
		if firstStart:
			print("First time starting camera. Timer starting.")
			self.start()
			firstStart = false
		else:
			if self.paused:
				self.paused = false
			else:
				self.paused = true
				

func _on_button_pressed():
	self.start()
	print("timer start")
	pass # Replace with function body.

