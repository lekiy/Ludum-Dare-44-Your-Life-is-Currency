
if(attack_time <= 0){
	image_index = 0;

}


if(image_index > image_number-1){
	
	var dir = scrGetMouseDir(x, y);
	var attack = instance_create_layer(x, y, "Instances", oSpellAttack);
	with(attack){
		damage = other.damage;
		knockback = other.knockback;
		acc_x = lengthdir_x(other.projectile_speed, dir);
		acc_y = lengthdir_y(other.projectile_speed, dir);
		image_angle = dir;
	}

	is_attacking = false;	
}

attack_time = attack_cooldown;