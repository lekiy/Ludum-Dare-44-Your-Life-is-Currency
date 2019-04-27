/// Discription draws the level grid for testing
/// @argument level_grid
/// @arguemnt draw_scale


var level_grid = argument0;
var draw_scale = argument1;

for(var pos_y = 0; pos_y < ds_grid_height(level_grid); pos_y++){
	for(var pos_x = 0; pos_x < ds_grid_width(level_grid); pos_x++){
		if(level_grid[# pos_x, pos_y] == 1){
			draw_set_color(c_green);	
		} else draw_set_color(c_blue);
		draw_rectangle(pos_x*draw_scale, pos_y*draw_scale, pos_x*draw_scale+draw_scale, pos_y*draw_scale+draw_scale, false);
	}
}