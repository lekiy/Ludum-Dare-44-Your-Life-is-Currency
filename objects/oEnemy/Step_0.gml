/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
attack_time--;

if(instance_exists(oPlayer)){
	var player = oPlayer;
	if(point_distance(x,y, player.x, player.y) < attack_range && attack_time <= 0){
		is_attacking = true;	
	}
	if(is_attacking){
		current_state = enemy_state.attack;
	}else if(point_distance(x, y, player.x, player.y) < chase_dist && attack_time <= 0){
		current_state = enemy_state.chase;
	}else if(resting <= 0){
		current_state = enemy_state.move;
	}else{
		current_state = enemy_state.idle	
	}
}else{
	current_state = enemy_state.idle;
}

sprite_index = animation[current_state];
script_execute(state_script[current_state]);

event_inherited();

