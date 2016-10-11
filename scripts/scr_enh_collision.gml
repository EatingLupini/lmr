///scr_enh_collision(x, y, z, zhigh, hsp, vsp)
//Ritorna true se si verifica una collisione con parenti di obj_wall
//Edit: ritorna l'id dell'oggetto con cui collide altrimenti ritorna noone
var ics = argument0;
var ips = argument1;
var zet = argument2;
var zhi = argument3;
var hsp = argument4;
var vsp = argument5;

for(var i=0; i<instance_number(obj_wall); i++)
{
    var curid = instance_find(obj_wall, i);
    var coll = place_meeting(ics +hsp, ips +vsp, curid);
    var cond1 = curid.z < zet +zhi and curid.z +curid.zhigh > zet +zhi;
    var cond2 = curid.z +curid.zhigh > zet and curid.z < zet +zhi;
    if(coll and (cond1 or cond2))
    {
        //c'è almeno un blocco che mi fa collidere
        return curid; //return true;
        break;
    }
}

return noone; //return false;

