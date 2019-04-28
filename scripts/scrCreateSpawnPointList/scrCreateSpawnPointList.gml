///@Description Gets a list of valid spawn points
///@argument level_grid

var level_grid = argument0;
var spawn_points = ds_list_create();

for(var yy = 0; yy < ds_grid_height(level_grid); yy++){
	for(var xx = 0; xx < ds_grid_width(level_grid); xx++){
		if(level_grid[# xx, yy] == 1){
			ds_list_add(spawn_points, [to_map(xx), to_map(yy)]);
		}
	}
}

ds_list_shuffle(spawn_points);
//var shuffled = ds_list_to_stack(spawn_points);

return spawn_points;