extends Control

@onready var server_name = $ServerName
const PORT: int = 255255

func _on_create_pressed():
	var peer: ENetMultiplayerPeer = ENetMultiplayerPeer.new()
	peer.create_server(PORT)
	
	multiplayer.multiplayer_peer = peer
