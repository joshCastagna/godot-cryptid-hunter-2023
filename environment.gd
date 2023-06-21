extends Node2D

var camerafx = false
var flashlight = false
# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	camerafx = self.get_node("CanvasLayer/GUI/CAM_EFFECTS").get("CAMERADEAD")
	self.get_node("World/Player/player_sprites").set("cameraDead",camerafx)	
	flashlight = self.get_node("CanvasLayer/GUI/FLASHLIGHT BATTERY/flash battery").get("flashBatteryDead")
	self.get_node("World/Player/player_sprites").set("flashDead",camerafx)	
	
	pass
