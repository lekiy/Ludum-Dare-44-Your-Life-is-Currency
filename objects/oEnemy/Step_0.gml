/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event


if(instance_exists(oPlayer)){
	var player = oPlayer;
	/*if(point_distance(x, y, player.x, player.y) < chase_dist && attack_time <= 0){
		//current_state = enemy_state.chase;
	}else*/ if(resting <= 0){
		current_state = enemy_state.move;
	}else{
		current_state = enemy_state.idle	
	}
}

script_execute(state_script[current_state]);

event_inherited();

