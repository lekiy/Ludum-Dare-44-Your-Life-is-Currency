	
if(move_target_x < 0 && move_target_y < 0){
	var tiles = scrGetTilesInRegion(oGameMaster.level_grid, x-wander_dist, y-wander_dist, x+wander_dist, y+wander_dist);
	ds_list_shuffle(tiles);
	var tile = ds_list_pop(tiles);
	ds_list_destroy(tiles);
		
	move_target_x = tile.x;
	move_target_y = tile.y;
}else{
	if(point_distance(x, y, move_target_x, move_target_y) <= move_speed){
		acc_x = 0;
		acc_y = 0;
		x = move_target_x;
		y = move_target_y;
			
		move_target_x = -1;
		move_target_y = -1;
		resting = round(random_range(0.2, 2)*room_speed);
	}
		
	var dir = point_direction(x, y, move_target_x, move_target_y);
	acc_x = lengthdir_x(move_speed, dir);
	acc_y = lengthdir_y(move_speed, dir);	
		
}
	