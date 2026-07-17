enum ItemState {Held, floating}
function tool_config(_damage, _work, _resource) constructor {
    durability = 1
    damage = _damage
    work = _work
    resource = _resource
    static subtract_durability = function(_dur){
        durability -= _dur
    }
    
}
function item(_name, _sprite, _stacks) constructor {
    name = _name
    sprite = _sprite
    item_tool_config = undefined
    static set_tool_config = function(_damage, _work, _resource){
        item_tool_config = new tool_config(_damage, _work, _resource)
    }
}

//TODO replace with json item struct
function spawn_item(_state, _item_id,_x,_y){
    _item = instance_create_layer(_x,_y,"Instances", obj_par_item, {item_id: _item_id, item_state: _state})

    
}