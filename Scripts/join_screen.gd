extends Control

func _on_connect_pressed():
	if len($Inputs/Name.text) <= 0:
		return
	else:
		main.username = $Inputs/Name.text
	
	var address: String = $Inputs/IPAddress.text
	var peer: ENetMultiplayerPeer = ENetMultiplayerPeer.new()
	
	peer.create_client(address, main.PORT)
	multiplayer.multiplayer_peer = peer

func _on_back_pressed():
	get_parent().switch_screens(self, "start_menu")
