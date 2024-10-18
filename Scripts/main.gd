extends Node2D

const PORT: int = 25255

@export var score: int 
@export var username: String

var ip_address: String

func switch_screens(cur_screen, new_screen):
	remove_child(cur_screen)
	add_child(new_screen)
	

	
