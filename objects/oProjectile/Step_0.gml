/// @description 

// Inherit the parent event
event_inherited();

if(place_meeting(x+vel_x, y+vel_y, oWall)){
	instance_destroy();	
}
