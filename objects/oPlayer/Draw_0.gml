/// @description 
draw_sprite_ext(sprite_index, image_index, x, y, facing_dir, 1, 0, c_white, 1);

draw_set_color(c_white);
draw_text(x, y, current_state);

draw_sprite(mPlayer, 0, x, y);