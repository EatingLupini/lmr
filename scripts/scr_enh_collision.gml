///scr_enh_collision(x, y, z, zhigh, hsp, vsp, [obj_coll])
//Ritorna true se si verifica una collisione con parenti di obj_wall
//Edit: ritorna l'id dell'oggetto con cui collide altrimenti ritorna noone
var ics = argument[0];
var ips = argument[1];
var zet = argument[2];
var zhi = argument[3];
var hsp = argument[4];
var vsp = argument[5];
var ocl = obj_wall;
if(argument_count == 7)
    ocl = argument[6];

for(var i=0; i<instance_number(ocl); i++)
{
    var curid = instance_find(ocl, i);
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

