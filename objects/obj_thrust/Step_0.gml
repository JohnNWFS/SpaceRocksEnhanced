/// @description Insert description here
// You can write your code in this editor
if (instance_exists(my_ship))
{
	image_index = spr_thrust;
	image_angle = my_ship.image_angle;
	x = my_ship.x;
	y = my_ship.y;
}

if (!instance_exists(my_ship))
{
	image_index = spr_empty;
}

