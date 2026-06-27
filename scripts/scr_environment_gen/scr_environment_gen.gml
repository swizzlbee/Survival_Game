function spawnEnviro(_amount,_x1,_y1,_x2,_y2,_layer,_object,_sprite){
	for(var i=0;i<_amount;i++){
		var _x = irandom_range(_x1,_x2)
		var _y = irandom_range(_y1,_y2)
		var _sprite_index = irandom(sprite_get_number(_sprite)-1) 
		instance_create_layer(_x,_y,_layer,_object,{image_index: _sprite_index})
	}
}