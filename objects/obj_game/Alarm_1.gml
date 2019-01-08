/// @description restart
// You can write your code in this editor
//room_restart();
destroy_count = 0;
levelup = 0; //turn off levelling up message

if (room == rm_game) {

	destroy_count = 0;
	destroy_count_max = 7 * level;

	 if (audio_is_playing(msc_song)) {
	    audio_stop_sound(msc_song);
	 }
	 audio_play_sound(msc_song, 2, true);
	
	repeat (level) {
	var xx = choose((-60), (room_width+60));
	var yy = choose((-60), (room_height+60));

	var arock = instance_create_layer(xx, yy, "Instances", obj_asteroid);
	arock.xx = xx; arock.yy = yy;
	}
	if (!instance_exists(obj_ship))
	{
		instance_create_layer(room_width/2,room_height/2,"Instances",obj_ship);
	}
	alarm[0] = 120;
}
