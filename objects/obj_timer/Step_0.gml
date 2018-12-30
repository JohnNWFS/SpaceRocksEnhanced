/// @description Insert description here
// You can write your code in this editor
start_time += 3;
if (start_time > 360) {
	start_time = 0;
}

if ((trigger_timer == 1 && !alarm[0]) )
{
	alarm[0] = time_to_self_destruct;	
}

if (!instance_exists(my_ship))
{
	image_index = spr_empty;
}

if (alarm[0] > 0)
{
	image_index = spr_stopwatch;
}

if (!alarm[0])
{ 
	image_index = spr_empty;
}

if (instance_exists(my_ship))
{ x = my_ship.x; y = my_ship.y + 34;}
