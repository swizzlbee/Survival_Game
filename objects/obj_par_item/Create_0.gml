//Default item state floating
if(!variable_instance_exists(id, "item_state"))item_state = ItemState.floating
//Default held by is player    
if(item_state==ItemState.Held&&!variable_instance_exists(id,"held_by"))held_by = obj_player;    
doing_action = false  
float_offset = 10  
timer = 0
floating_y = y
depth = -y
visible = true