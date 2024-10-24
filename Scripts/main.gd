extends Node2D

const PORT: int = 25255

@export var score: int 
@export var username: String

@onready var screens: Dictionary = {
	"start_menu": $StartMenu, "join_screen": $JoinScreen, 
	"host_screen": $HostScreen, "lobby_screen": $LobbyScreen, "game_screen": $GameScreen}


func switch_screens(cur_screen, new_screen):
	cur_screen.hide()
	screens[new_screen].show()
