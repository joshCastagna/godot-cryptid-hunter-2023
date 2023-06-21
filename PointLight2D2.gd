extends PointLight2D

var showLight = false
var lightPosition

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	showLight = self.get_parent().camActive
	if showLight:
		self.visible = true
	else:
		self.visible = false
	
	
	
	
	pass
