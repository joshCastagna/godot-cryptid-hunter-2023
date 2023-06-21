extends Timer

# REFERENCE THIS FOR FLASHLIGHT AND CAMERA BATTERY
var firstStart = true
signal flashActive()
signal flashInactive()
var camOn = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("escape"):
		self.paused = true
	if Input.is_action_just_pressed("KEY_F"):
		if firstStart:
			print("First time starting flashlight. Timer starting.")
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


