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

hp = 3;
damage = 1;
knockback = 10;

move_target_x = -1;
move_target_y = -1;
has_target = false;

move_speed = 0.2;

chase_dist = 100;
wander_dist = 40;

is_attacking = false;
attack_range = 40;
attack_time = 0;
attack_move_speed = 1;
attack_cooldown = 6*room_speed;

resting = 0;