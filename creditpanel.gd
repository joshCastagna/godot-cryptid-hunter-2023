extends CenterContainer


# Called when the node enters the scene tree for the first time.
func _ready():
	self.visible = false 
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_texture_button_pressed():
	self.visible = !self.visible
