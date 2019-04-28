if(instance_exists(oPlayer)){
	var player = oPlayer;
	
	move_target_x = player.x;
	move_target_y = player.y;
	
	var dir = point_direction(x, y, move_target_x, move_target_y);
	
	acc_x = lengthdir_x(move_speed, dir);
	acc_y = lengthdir_y(move_speed, dir);
	
	
}