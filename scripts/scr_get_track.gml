///scr_get_track()
//Ritorna la room del percorso corretto

//Modalità Run
if(global.server_mode == 0)
{
    switch(global.server_track)
    {
        case 0: return rm_run_map1; break;
        //case 1: return rm_run_map2; break;
    }
}
//Modalità LMR
else if(global.server_mode == 1)
{
    
}
