extends Control

func _on_continue_pressed():
	if len($Name.text) < 1:
		return
	main.nickname = $Name.text
	#print("Hello" + main.nickname)

func _on_back_pressed():
	var start_menu = load("res://Scenes/start_menu.tscn")
	get_parent().switch_screens(self, start_menu.instantiate())
