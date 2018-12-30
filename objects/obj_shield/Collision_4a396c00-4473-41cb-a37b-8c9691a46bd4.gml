/// @description Insert description here
// You can write your code in this editor
shields_available = 0;
scp_destroy_other("no");

	if (!instance_exists(my_timer))
	{
		with (my_timer)
		{
		image_index = spr_stopwatch;
		}
	}
	
	my_timer.time_to_self_destruct = repawn_shields_timer;
	my_timer.my_ship = my_ship;
	my_timer.trigger_timer = 1;
	alarm[0] = repawn_shields_timer;
