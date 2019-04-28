/// @description 
other.hp-=damage;
var dir = point_direction(x, y, other.x, other.y);
other.vel_x = lengthdir_x(knockback, dir);
other.vel_y = lengthdir_y(knockback, dir);

instance_destroy();