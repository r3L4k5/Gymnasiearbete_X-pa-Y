extends Control


func _on_join_pressed():
	var join_screen = load("res://Scenes/join_screen.tscn")
	get_parent().switch_screens(self, join_screen.instantiate()) 

func _on_host_pressed() -> void:
	var host_screen = load("res://Scenes/host_screen.tscn")
	get_parent().switch_screens(self, host_screen.instantiate())

func _on_exit_pressed():
	get_tree().quit()
