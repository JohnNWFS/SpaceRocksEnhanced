/// @description Insert description here
// You can write your code in this editor
lives -= 1;

my_thrust.draw_thrust = 0;

with (obj_game) {
	alarm[1] = room_speed;
}

audio_play_sound(snd_die,1,0);



repeat (10) {
	instance_create_layer(x, y, "Instances", obj_debris);
}

instance_destroy();
