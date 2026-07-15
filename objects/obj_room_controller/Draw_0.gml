var _shadow_surf = surface_create(room_width,room_height) 
surface_set_target(_shadow_surf);
    with(obj_par_has_shadow){
        var spr_w = sprite_get_width(sprite_index);
        var spr_h = sprite_get_height(sprite_index)/2;
        var _x = x-(spr_w/2)
        var _y = y-(spr_h)
        var skew_amount = 10; 
        var x1 = _x + skew_amount;
        var y1 = _y;
        var x2 = _x + spr_w + skew_amount;
        var y2 = _y;
        var x3 = _x + spr_w; 
        var y3 = _y + spr_h;
        var x4 = _x;
        var y4 = _y + spr_h;
        draw_sprite_pos(sprite_index, image_index, x1, y1, x2, y2, x3, y3, x4, y4, image_alpha);
        
    }
    surface_reset_target();
    draw_surface_ext(_shadow_surf, 0, 0, 1, 1, 0, c_black, 0.2)
surface_free(_shadow_surf)
