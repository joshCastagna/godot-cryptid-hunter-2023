extends Control


func _on_forest_level_button_pressed():
	self.get_tree().change_scene_to_file("res://environment.tscn")
	pass # Replace with function body.


func _on_desert_level_button_pressed():
	self.get_tree().change_scene_to_file("res://DesertScene.tscn")
	pass # Replace with function body.
