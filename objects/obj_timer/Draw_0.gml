/// @description Insert description here
// You can write your code in this editor
if (image_index == spr_stopwatch)
{
	if (instance_exists(my_ship))
	{
		draw_self();
		//use 7 as imagex and y scale halved
		if (image_xscale = .5)
		{
		draw_line(x, y, x + (7) * dcos(start_time), y - 7 * dsin(start_time)); 
		}
		if (image_xscale = 1)
		{
		draw_line(x, y, x + (15) * dcos(start_time), y - 15 * dsin(start_time)); 
		}
	}
}

//draw_text(250,200,alarm[0]);