/// @description Insert description here
// You can write your code in this editor
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
	
	alarm[0] = 60;
}
