function player_handle_input(_player) {
    var _move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
	var _move_y = keyboard_check(vk_down) - keyboard_check(vk_up);
	var _action = keyboard_check(ord("X"))
	player_state_move(_player,_move_x,_move_y)
}

function player_state_move(_player,_move_x,_move_y) {
	if(_move_x!=0||_move_y!=0){
		_player.x += _move_x*_player.fastness
		_player.y += _move_y*_player.fastness
		_player.moving = true
		_player.movement_vect = [_move_x,_move_y]
	}else{
		_player.moving = false	
	}
}

function player_state_attack(_player) {
    // Combo timing and hitbox spawning
}
