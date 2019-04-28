///@Description gets the tiles in the given region
///@argument level_grid
///@argument start_x
///@argument start_y
///@argument end_x
///@argument end_y

var level_grid = argument0;
var start_x = argument1;
var start_y = argument2;
var end_x = argument3;
var end_y = argument4;

var start_x_grid = to_grid(start_x);
var start_y_grid = to_grid(start_y);
var end_x_grid = to_grid(end_x);
var end_y_grid = to_grid(end_y);


var region = ds_grid_create(end_x_grid-start_x_grid, end_y_grid-start_y_grid);
ds_grid_add_grid_region(region, level_grid, start_x_grid, start_y_grid, end_x_grid, end_y_grid, 0, 0);

var tiles = ds_list_create();
for(var yy = 0; yy < ds_grid_height(region); yy++){
	for(var xx = 0; xx < ds_grid_width(region); xx++){
		if(region[# xx, yy] == 1){
			ds_list_add(tiles, scrGetTileAt(to_map(start_x_grid+xx), to_map(start_y_grid+yy)));
		}
	}
}

return tiles;

