/// @description Insert description here
// You can write your code in this editor
poweruptype = choose("doublebullet", "explodingbullet");

image_speed = irandom_range(2,4); //change up speed
if (instance_exists(obj_ship))
{
	direction = point_direction(x,y,obj_ship.x,obj_ship.y);
}
else
{
	direction = irandom_range(0, 359);
}
image_angle = irandom_range(0, 359);
speed = 1 + obj_game.level * .05;
alarm[0] = room_speed * 10;

switch poweruptype 
{
case ("doublebullet"):
{
	sprite_index = spr_coin_double;
	break;
}

case ("explodingbullet"):
{
	sprite_index = spr_coin_xplode;
	break;
}

break;
}

dontdie = 0;