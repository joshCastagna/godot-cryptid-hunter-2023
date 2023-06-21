extends PointLight2D

var showLight = false
var lightPosition

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.

func setPosition():
	var lightPosition = self.get_parent().direction
	
	if lightPosition == "_back":
		self.position.x = -13
		self.position.y = 4
		#self.show_behind_parent = true 
	elif lightPosition == "_forward":
		self.position.x = 11
		self.position.y = 9
		#self.show_behind_parent = false 
	elif lightPosition == "_left":
		self.position.x = -19
		self.position.y = 4
		#self.show_behind_parent = false 
	elif lightPosition == "_right":
		self.position.x = 19
		self.position.y = 4
		#self.show_behind_parent = false 
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	showLight = self.get_parent().flashActive
	if showLight:
		self.visible = true
		setPosition()
	else:
		self.visible = false
	
	
	
	
	pass
