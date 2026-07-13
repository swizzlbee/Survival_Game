enum ItemState {Held, floating}
//TODO replace with json item struct
function spawn_item(_state, _sprite,_x,_y){
    _item = instance_create_layer(_x,_y,"Instances", obj_par_item, {sprite_index: _sprite, item_state: _state})

    
}