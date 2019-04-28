if(dir_h != 0){
		facing_dir = dir_h;
}

var dir = point_direction(0, 0, dir_h, dir_v);

	acc_x = lengthdir_x(move_speed, dir);
	acc_y = lengthdir_y(move_speed, dir);

