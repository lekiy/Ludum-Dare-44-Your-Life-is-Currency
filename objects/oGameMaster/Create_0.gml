/// @description 
randomize();

#macro TILE_SIZE 20

level_width = 50;
level_height = 50;
level_grid = scrGenerateLevel(level_width, level_height);

scrBuildMapFromGrid(level_grid);

spawn_points = scrCreateSpawnPointList(level_grid);


var player_spawn = ds_list_pop(spawn_points);
player = instance_create_layer(player_spawn[0], player_spawn[1], "Instances", oPlayer);

camera = instance_create_layer(0, 0, "Instances", oCamera);
camera.target = player;

var enemy_spawn = ds_list_pop(spawn_points);
enemy = instance_create_layer(enemy_spawn[0], enemy_spawn[1], "Instances", oSlime);