var cell_width = 32;
var cell_height = 32;

var hcell = room_width / cell_width;
var vcell = room_height / cell_height;

global.grid = mp_grid_create(0, 0, hcell, vcell, cell_width, cell_height);

mp_grid_add_instances(global.grid, oCollWall, false);



