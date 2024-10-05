extends Control

@onready var server_name = $ServerName

func _ready():
	multiplayer.peer_connected.connect(peer_connected)
	multiplayer.peer_disconnected.connect(peer_disconnected)
	multiplayer.connected_to_server.connect(connected_to_sever)
	multiplayer.connection_failed.connect(connection_failed)

func peer_connected():
	print("Connected")

func peer_disconnected():
	print("Disconnected")

func connected_to_sever():
	print("Server Connected")

func connection_failed():
	print("Server Failed")

func _on_create_pressed():
	var peer: ENetMultiplayerPeer = ENetMultiplayerPeer.new()
	peer.create_server(main.PORT)
	
	multiplayer.multiplayer_peer = peer
	multiplayer.set_multiplayer_peer(peer)

func _on_back_pressed():
	var start_menu = load("res://Scenes/start_menu.tscn")
	get_parent().switch_screens(self, start_menu.instantiate())
