/// @description 

// Inherit the parent event
event_inherited();

animation[enemy_state.idle] = sSlimeIdle;
animation[enemy_state.chase] = sSlimeWalk;
animation[enemy_state.move] = sSlimeWalk;
animation[enemy_state.attack] = sSlimeAttack;