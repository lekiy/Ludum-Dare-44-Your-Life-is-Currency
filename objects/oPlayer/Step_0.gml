/// @description 

dir_v = keyboard_check(ord("S"))-keyboard_check(ord("W"));
dir_h =  keyboard_check(ord("D"))-keyboard_check(ord("A"));

acc_x = dir_h*acc_rate;
acc_y = dir_v*acc_rate;

// Inherit the parent event
event_inherited();

