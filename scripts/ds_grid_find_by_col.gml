///ds_grid_find_by_col(id, col, val)
//Ritorna la prima riga in cui val è stato trovato (nella colonna col)

for(var i=0; i<ds_grid_height(argument0); i++)
{
    if(ds_grid_get(argument0, argument1, i) == argument2)
        return i;
}

return -1;

