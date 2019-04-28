if(attack_time <= 0){
	attack_time = attack_cooldown;
	is_attacking = true;
	image_index = 0;
	if(instance_exists(oPlayer)){
		 var player = oPlayer;

			move_target_x = player.x;
			move_target_y = player.y;
			var dir = point_direction(x, y, move_target_x, move_target_y);
			var hurtbox = instance_create_layer(x, y, "Instances", oEnemyHurtBox);
			with(hurtbox){
				damage = other.damage;
				knockback = other.knockback;
				attached_to = other;
				mask_index = other.mask_index;
				life = 10;
			}
			acc_x = lengthdir_x(attack_move_speed, dir);
			acc_y = lengthdir_y(attack_move_speed, dir);
			move_target_x = -1;
			move_target_y = -1;	
	}
}


if(image_index > image_number-1){
	is_attacking = false;
	resting = round(random_range(0.2, 2)*room_speed);
}