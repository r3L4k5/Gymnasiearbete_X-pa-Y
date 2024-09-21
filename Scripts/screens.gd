extends CanvasLayer


func switch_screens(cur_screen, new_screen):
	self.remove_child(cur_screen)
	self.add_child(new_screen)
	
