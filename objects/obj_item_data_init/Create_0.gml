var _items = load_json_file("tools.json")
var _resources = load_json_file("resources.json")
global.items = []
global.resources = []
var _item_index  = struct_get_names(_items)
var _resource_index = struct_get_names(_resources)
for(var i=0;i<array_length(_resource_index);i++){
    var _curr = struct_get(_resources, _resource_index[i])
    var _item = new item(_curr.name, _curr.sprite, _curr.stacks)
    array_push(global.resources, _item)
}
for(var i=0;i<array_length(_item_index);i++){
    var _curr = struct_get(_items, _item_index[i])
    var _item = new item(_curr.name, _curr.sprite, _curr.stacks)
    _item.set_tool_config(_curr.damage,_curr.work,_curr.resource)
    array_push(global.items, _item)
}
show_debug_message({items: global.items, resources: global.resources})