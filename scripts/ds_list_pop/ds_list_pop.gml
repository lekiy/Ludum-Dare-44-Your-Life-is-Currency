///@Description Pops the top of the list and returns it removing it from the list
///@argument list;

var list = argument0;
var value = list[| 0];

ds_list_delete(list, 0);

return value;