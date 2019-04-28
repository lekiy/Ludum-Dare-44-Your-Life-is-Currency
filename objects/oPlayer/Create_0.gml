/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


enum player_state {
	idle,
	move,
	attack,
}

hp = 5;

facing_dir = 1;
attack_dir_h = 0;
attack_dir_v = 0;
is_attacking = false;
attack_time = 0;
attack_cooldown = 0.2*room_speed;
damage = 1;
knockback = 8;
projectile_speed = 0.3;

state_script[0] = scrPlayerStateIdle;
state_script[1] = scrPlayerStateMove;
state_script[2] = scrPlayerStateAttack;

animation[0] = sPlayerIdle;
animation[1] = sPlayerRun;
animation[2] = sPlayerAttack;

current_state = player_state.idle;
