	
	
	if(move_target_x == x && move_target_y == y){
		var tile = getRandomTileInDist(100);
	}
	
	var dir = point_direction(x, y, move_target_x, move_target_y);
	
	acc_x = lengthdir_x(move_speed, dir);
	acc_y = lengthdir_y(move_speed, dir);
	
	if(point_distance(x, y, move_target_x, move_target_y) <= move_speed){
		x = move_target_x;
		y = move_target_y;
		resting = random_range(0.2, 1.5)*room_speed;
	}