extends Control


var categories: Array

#Server creation and connection
func peer_connected(id):
	print("Connected")

func peer_disconnected(id):
	print("Disconnected")

func connected_to_sever():
	print("Server Connected")

func connection_failed():
	print("Server Failed")

func _on_create_pressed():
	
	multiplayer.peer_connected.connect(peer_connected)
	multiplayer.peer_disconnected.connect(peer_disconnected)
	multiplayer.connected_to_server.connect(connected_to_sever)
	multiplayer.connection_failed.connect(connection_failed)
	
	if ready_categories() == false:
		print("Atleast three different categories")
		return
	
	var player_amount: int =  $Settings/PlayerSlider.value
	var peer: ENetMultiplayerPeer = ENetMultiplayerPeer.new()
	
	peer.create_server(main.PORT, player_amount)
	multiplayer.multiplayer_peer = peer
	
	get_parent().switch_screens(self, "lobby_screen")


#Settings
func ready_categories():
	for category in $Settings/Categories.get_children():
		if len(category.text) <= 0 or category.text.capitalize() in categories:
			continue
		else:
			categories.append(category.text.capitalize())
			
	if categories.size() < 3:
		return false

func _on_player_amount_value_changed(value):
	$Settings/PlayerAmount.text = "Players: " + str(value)


#Backbutton
func _on_back_pressed():
	var start_menu = load("res://Scenes/start_menu.tscn")
	get_parent().switch_screens(self, "start_menu")
