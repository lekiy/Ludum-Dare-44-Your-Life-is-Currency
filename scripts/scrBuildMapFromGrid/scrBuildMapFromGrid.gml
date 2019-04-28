///Description
///@argument level_grid

var level_grid = argument0;

for(var yy = 0; yy < ds_grid_height(level_grid); yy++){
	for(var xx = 0; xx < ds_grid_width(level_grid); xx++){
		switch(level_grid[# xx, yy]){
			case 0: instance_create_layer(to_map(xx), to_map(yy), "Instances", oWall); break;
			case 1: instance_create_layer(to_map(xx), to_map(yy), "Instances", oFloor); break;
		}
	}
}