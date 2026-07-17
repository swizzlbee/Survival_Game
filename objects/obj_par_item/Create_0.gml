//Default item state floating
if(!variable_instance_exists(id, "item_state"))item_state = ItemState.floating 
if(!variable_instance_exists(id, "item_id"))item_id = 0
//Default held by is player    
if(item_state==ItemState.Held&&!variable_instance_exists(id,"held_by"))held_by = obj_player;
curr_item = global.items[item_id]
show_debug_message(global.items[item_id])
sprite_index = asset_get_index(curr_item.sprite);     
doing_action = false  
float_offset = 10  
timer = 0
floating_y = y
depth = -y
visible = true