/// @description Insert description here
// You can write your code in this editor
if (shields_available == 1 && shields_on ==1)
{
shields_available = 0;
scp_destroy_other("no");
obj_game.destroy_count += 1; //adding to destroyed rocks to complete level at max met

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
}
