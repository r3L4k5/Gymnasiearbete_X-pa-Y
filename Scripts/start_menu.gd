extends Control


func _on_join_pressed():
	get_parent().switch_screens(self, "join_screen") 

func _on_host_pressed() -> void:
	get_parent().switch_screens(self, "host_screen")

func _on_exit_pressed():
	get_tree().quit()
