enum ItemState {Held, floating}
//TODO replace with json item struct
function spawn_item(_state, _item_id,_x,_y){
    _item = instance_create_layer(_x,_y,"Instances", obj_par_item, {item_id: _item_id, item_state: _state})

    
}