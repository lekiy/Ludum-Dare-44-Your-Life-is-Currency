/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

enum enemy_state {
	idle,
	move,
	chase,
	attack,
	flee,
}

current_state = enemy_state.idle;

state_script[enemy_state.idle] = scrStateIdle;
state_script[enemy_state.move] = scrStateMove;
state_script[enemy_state.chase] = scrStateChase;
state_script[enemy_state.attack] = scrStateAttack;
state_script[enemy_state.flee] = scrStateFlee;

move_target_x = x;
move_target_y = y;
has_target = false;

chase_dist = 100;

attack_range = 50;
attack_time = 0;
attack_cooldown = 2*room_speed;

resting = 0;