/// @desc Stores and normalizes entity sprites.
function entity_sprites() constructor{
	does_flip = false
	walk_up = pointer_null
	walk_down = pointer_null
	walk_left = pointer_null
	walk_right = pointer_null
	attack_up = pointer_null
	attack_down = pointer_null
	attack_left = pointer_null
	attack_right = pointer_null
	
}

function entity_sprite_controller(_dir, _entity){
	var _dir_index = round(_dir / 90) mod 4;
	_entity.image_xscale = 1
	if(_dir_index==1){
	_entity.sprite_index = _entity.sprites.walk_up;
	}else if(_dir_index == 0){
	_entity.sprite_index = _entity.sprites.walk_right;	
	}else if(_dir_index==3){
	_entity.sprite_index = _entity.sprites.walk_down;	
	}else if(_dir_index==2){
		if(_entity.sprites.does_flip){
			_entity.image_xscale = -1
		}
		sprite_index = _entity.sprites.walk_left;
	}
	if(_entity.moving){
		_entity.image_speed = 4	
	}else{
		_entity.image_speed = 0
		_entity.image_index = 0
	}
}