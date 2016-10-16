///ds_grid_set_row_pl(id, row, socket, netid, x, y, z, dir, zdir)

var dsid = argument[0];
var row = argument[1];

if(row < 0 or row >= ds_grid_height(dsid))
{
    show_debug_message("ds_grid_set_row_pl - err: riga non esistente");
}

for(var j=0; j<ds_grid_width(dsid); j++)
{
    if(argument[j+2] != noone)
        ds_grid_set(dsid, j, row, argument[j+2]);
}


