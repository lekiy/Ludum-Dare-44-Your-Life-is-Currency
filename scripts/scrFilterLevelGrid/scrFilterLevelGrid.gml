/// Description cleans up level grid by filtering via neighboring tiles
/// @argument level_grid
/// @argument tolerance
/// @argument passes



var level_grid = argument0;
var tolerance = argument1;
var passes = argument2;

var base = 0; 
var check = 1;

for(var i = 0; i < passes; i++){
	for(var pos_y = 0; pos_y < ds_grid_height(level_grid); pos_y++){
		for(var pos_x = 0; pos_x < ds_grid_width(level_grid); pos_x++){
			if(level_grid[# pos_x, pos_y] == base){
				if(!(pos_x <= 0 || pos_x >= ds_grid_width(level_grid)-1
				||pos_y <= 0 || pos_y >= ds_grid_height(level_grid)-1)){
					var count = 0;
					for(var y1 = -1; y1 <= 1; y1++){
						for(var x1 = -1; x1 <= +1; x1++){
							if(level_grid[# pos_x+x1, pos_y+y1] == check) count++;
						}
					}
					if(count > tolerance){
						level_grid[# pos_x, pos_y] = check;
					}
				}
			}
		}
	}
	
}

return level_grid;