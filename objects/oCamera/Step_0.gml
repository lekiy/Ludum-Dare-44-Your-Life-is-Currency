/// @description Insert description here
// You can write your code in this editor

if(instance_exists(target)){
	if(point_distance(x+width/2, y+height/2, target.x, target.y) > 1){	
		x += (target.x-(x+width/2))*0.2;
		y += (target.y-(y+height/2))*0.2;
	}else{
		x = (target.x-width/2);
		y = (target.y-height/2);
	}
}


camera_set_view_pos(camera, round(x), round(y));