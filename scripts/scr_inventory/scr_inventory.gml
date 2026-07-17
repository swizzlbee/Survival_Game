
/// @desc inventory(size) Generic inventory object
/// @param {real} _size How many items the inventory can hold
function inventory(_size) constructor{
    inv = array_create(_size,-1);
    inv_count = array_create(_size, 0);
    max_size = _size;
    //TODO Figure out stacking in the inventory - use the inv_count array
    /// @description add_to_inventory(item)
    /// @param {item} _item item to be added
    /// @return {bool} True if added False if not
    static add_to_inventory = function(_item){
        if(_item.stacks != 1){
           // var _available_slot = 
        }
        var _empty_slot = array_get_index(inv, -1)
        if(_empty_slot!=-1){
            inv[_empty_slot] = _item;
            return true;
        }
        return false; 
    }
    
}

