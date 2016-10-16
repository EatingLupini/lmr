///ds_grid_delete_row(id, n)

var old_grid = argument0;
var row = argument1;
var temp_grid = ds_grid_create(ds_grid_width(old_grid), ds_grid_height(old_grid));

ds_grid_resize(old_grid, ds_grid_width(temp_grid), ds_grid_height(temp_grid) -1);

var off=0;
for(var i=0; i<ds_grid_height(temp_grid); i++)
{
    if(i == row)
    {
        off--;
        continue;
    }
    
    for(j=0; j<ds_grid_width(old_grid); j++)
        old_grid[# j,i+off] = temp_grid[# j,i+off];
}

