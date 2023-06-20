extends Timer

# REFERENCE THIS FOR FLASHLIGHT AND CAMERA BATTERY
var firstStart = true
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("escape") and self.paused == false:
		self.paused = !self.paused
	if Input.is_action_just_pressed("KEY_F"):
		if firstStart:
			print("First time starting flashlight. Timer starting.")
			self.start()
			firstStart = false
		else:
			self.paused = !self.paused
			if self.paused:
				print("flashlight off")
			print(self.time_left)
			

func _on_button_pressed():
	self.start()
	print("timer start")
	pass # Replace with function body.
