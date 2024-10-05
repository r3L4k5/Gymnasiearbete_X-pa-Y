extends Control

func _on_connect_pressed():
	if len($Inputs/Name.text) == 0:
		return
	else:
		main.username = $Inputs/Name.text
	
	var peer: ENetMultiplayerPeer = ENetMultiplayerPeer.new()
	peer.create_client("192.168.50.185", main.PORT)
	
	multiplayer.set_multiplayer_peer(peer)

func _on_back_pressed():
	var start_menu = load("res://Scenes/start_menu.tscn")
	get_parent().switch_screens(self, start_menu.instantiate())
