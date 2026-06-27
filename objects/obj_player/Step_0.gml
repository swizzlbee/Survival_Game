player_handle_input(self)
var _dir = point_direction(0,0,movement_vect[0],movement_vect[1])
show_debug_message(_dir)
entity_sprite_controller(_dir,self)
