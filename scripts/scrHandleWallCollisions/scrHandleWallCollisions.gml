///@Description


if(place_meeting(x+vel_x, y, oWall)){
	while(!place_meeting(x+sign(vel_x), y, oWall)){
		x+=sign(vel_x);	
		
	}
	vel_x = 0;
}


if(place_meeting(x, y+vel_y, oWall)){
	while(!place_meeting(x, y+sign(vel_y), oWall)){
		y+=sign(vel_y);	
		
	}
	vel_y = 0;
}