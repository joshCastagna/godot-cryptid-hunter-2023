extends Node2D

var camerafx = false

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	camerafx = self.get_node("GUI/CAM_EFFECTS").get("CAMERADEAD")
	self.get_node("Player/Sprite2D").set("cameraDead",camerafx)	
	
	pass
