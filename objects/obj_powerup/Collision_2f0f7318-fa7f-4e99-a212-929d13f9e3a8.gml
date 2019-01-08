/// @description Insert description here
// You can write your code in this editor
switch poweruptype 
{
case ("doublebullet"):
{
	obj_ship.doublesize = 1;
	obj_game.doublesize = 1;
	obj_game.alarm[2] = obj_game.poweruptimer;
	break;
}

case ("explodingbullet"):
{
	obj_ship.exploding = 1;
	obj_game.exploding = 1;
	obj_game.alarm[2] = obj_game.poweruptimer;
	break;
}

break;
}

instance_destroy();