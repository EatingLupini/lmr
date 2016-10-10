var xl, yl;
vsp = 0;
hsp = 0;


if keyboard_check(global.in_back)
{
    if (!back_locked)
    {
        hsp += lengthdir_x(spd, MouseHor + 180);
        vsp += lengthdir_y(spd, MouseHor + 180);
    }
    else
    {
        //type_text(T("noback"), c_white);
    }
}
else if keyboard_check(global.in_forward)
{
    hsp += lengthdir_x(spd, MouseHor);
    vsp += lengthdir_y(spd, MouseHor);
}
if keyboard_check(global.in_right)
{
    hsp += lengthdir_x(spd, MouseHor - 90);
    vsp += lengthdir_y(spd, MouseHor - 90);
}
else if keyboard_check(global.in_left)
{
    hsp += lengthdir_x(spd, MouseHor + 90);
    vsp += lengthdir_y(spd, MouseHor + 90);
}

spd = min(point_distance(x, y, x + hsp, y + vsp), spd);
dir = point_direction(x, y, x + hsp, y + vsp);
var xmot, ymot;
x = xprevious;
y = yprevious;
for (i = 0; i < 90; i += 5)
{
    xmot = x + lengthdir_x(spd, dir + i);
    ymot = y + lengthdir_y(spd, dir + i);
    if (!place_meeting(xmot, ymot, obj_parent))
    {
        if (is_down)
        {
            x = xmot;
            y = ymot;
            exit;
        }
        else if (!place_meeting(xmot, ymot, obj_hole_mask_parent))
        {
            x = xmot;
            y = ymot;
            exit;
        }
    }

    xmot = x + lengthdir_x(spd, dir - i);
    ymot = y + lengthdir_y(spd, dir - i);
    if (!place_meeting(xmot, ymot, obj_parent))
    {
        if (is_down)
        {
            x = xmot;
            y = ymot;
            exit;
        }
        else if (!place_meeting(xmot, ymot, obj_hole_mask_parent))
        {
            x = xmot;
            y = ymot;
            exit;
        }
    }
}
