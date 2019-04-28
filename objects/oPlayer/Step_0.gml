/// @description 

dir_v = keyboard_check(ord("S"))-keyboard_check(ord("W"));
dir_h =  keyboard_check(ord("D"))-keyboard_check(ord("A"));

if(dir_v != 0 || dir_h != 0){
	var dir = point_direction(0, 0, dir_h, dir_v)

	acc_x = lengthdir_x(move_speed, dir);
	acc_y = lengthdir_y(move_speed, dir);

}else{
	acc_x = 0;
	acc_y = 0;
}
// Inherit the parent event
event_inherited();



