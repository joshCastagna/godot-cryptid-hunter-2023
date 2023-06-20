extends Control

var isVisible = false
var CAMERADEAD = false

# Called when the node enters the scene tree for the first time.
func _ready():
	self.visible = isVisible
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("KEY_C") and !CAMERADEAD and !self.visible:
		self.visible = true
	elif (Input.is_action_just_pressed("KEY_C") and self.visible) or CAMERADEAD:
		self.visible = false
	pass


func _on_cam_battery_battery_dead(charge_val):
	CAMERADEAD = true #will not allow for filter to become visible even with toggle
	pass # Replace with function body.pass # Replace with function body.
