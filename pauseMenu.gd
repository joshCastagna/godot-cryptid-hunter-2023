extends Control


func _ready():
	self.process_mode = Node.PROCESS_MODE_ALWAYS

func _process(delta):
	if Input.is_action_just_pressed("ESC"):
		self.visible = !self.visible
		get_tree().paused = !get_tree().paused 


func _on_mm_pressed():
	self.get_tree().change_scene_to_file("res://start menu.tscn")
	get_tree().paused = false
	pass # Replace with function body.


func _on_quit_bttn_pressed():
	self.get_tree().quit()
	get_tree().paused = false
	pass # Replace with function body.
