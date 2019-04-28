/// @description 

attack_time--;

dir_v = keyboard_check(ord("S"))-keyboard_check(ord("W"));
dir_h = keyboard_check(ord("D"))-keyboard_check(ord("A"));

if(mouse_check_button_pressed(mb_left) && attack_time <= 0){
	is_attacking = true;
}

if(is_attacking){
	current_state = player_state.attack;
}else if(dir_v != 0 || dir_h != 0){
	current_state = player_state.move;
}else{
	current_state = player_state.idle;
	acc_x = 0;
	acc_y = 0;
}

sprite_index = animation[current_state];
script_execute(state_script[current_state]);

// Inherit the parent event
event_inherited();



