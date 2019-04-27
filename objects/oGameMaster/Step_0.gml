/// @description 
if(keyboard_check_pressed(vk_space)){
	ds_grid_destroy(level_grid);
	level_grid = scrCreateLevelGrid(level_width, level_height);
	scrFilterLevelGrid(level_grid, 4, 3);
}