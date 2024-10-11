extends Node2D

const PORT: int = 25255

@export var score: int 
@export var username: String

var ip_address: String

func _ready() -> void:
	ip_address = IP.get_local_addresses()[5]
	
