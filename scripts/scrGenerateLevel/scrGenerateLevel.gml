///Description
///@argument level_width
///@argument level_height

var level_width = argument0;
var level_height = argument1;

var level_grid = scrCreateLevelGrid(level_width, level_height);
scrFilterLevelGrid(level_grid, 4, 3);
scrFilterLevelGrid(level_grid, 7, 2);

return level_grid;