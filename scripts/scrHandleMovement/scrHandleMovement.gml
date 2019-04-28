

vel_x += acc_x;
if(on_ground){
	vel_x *= frict_ground;
}else{
	vel_x *= frict_air;
}


vel_y += acc_y;
if(on_ground){
	vel_y *= frict_ground;
}else{
	vel_y *= frict_air;
}

scrHandleWallCollisions();

x+=vel_x;
y+=vel_y;
