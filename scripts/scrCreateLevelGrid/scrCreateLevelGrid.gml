/// Description creates a grid for the level
/// @argument level_width
/// @argument level_height

var level_width = argument0;
var level_height = argument1;

level_grid = ds_grid_create(level_width, level_height);

var start_tile_x = floor(level_width/2);
var start_tile_y = floor(level_height/2);
var current_tile_x = start_tile_x;
var current_tile_y = start_tile_y;

var steps = floor(level_width*level_height*0.25);
for(var i = 0; i < steps; i++){
	if(level_grid[# current_tile_x, current_tile_y] == 0){
		level_grid[# current_tile_x, current_tile_y] = 1;
	}else{
		steps++;
	}
	switch(irandom(4)){
		case 0: current_tile_y--; break; //NORTH
		case 1: current_tile_y++; break; //SOUTH
		case 2: current_tile_x++; break; //EAST
		case 3: current_tile_x--; break; //WEST
	}
	
	if(current_tile_x > level_width-1 || current_tile_x < 0 
	|| current_tile_y > level_height-1 || current_tile_y < 0){
		current_tile_x = start_tile_x;
		current_tile_y = start_tile_y;
	}
}

return level_grid;