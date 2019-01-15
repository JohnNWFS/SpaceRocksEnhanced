/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(vk_enter) || mouse_check_button(mb_left)) {
	switch (room) {
		case rm_start:
			room_goto(rm_game);
			break;
			
		case rm_win:
		case rm_gameover:
			game_restart();
			break;
	}
}

if (room == rm_game) {
	if (score >= 1000.0) {
		room_goto(rm_win);
		audio_play_sound(snd_win, 1, false);
	}

	if (lives <= 0) {
		room_goto(rm_gameover);
		audio_play_sound(snd_lose, 1, false);
	}
	//start power up timer
	if (!alarm[3] && !alarm[1]) 
	{
		alarm[3] = 60;//irandom_range(room_speed*5,room_speed*20);
	}
	//show_debug_message("ALARM 3: " + string(alarm[3]));
}


if (destroy_count >= destroy_count_max && !alarm[1])
{
level += 1;
levelup = 1;
with (obj_asteroid) {instance_destroy();}
alarm[1] = room_speed*3;

}
if (exploding == 0 && instance_exists(my_ship)) {my_ship.exploding = 0;}
if (doublesize == 0 && instance_exists(my_ship)) {my_ship.doublesize = 0;}

if (instance_exists(obj_ship))
{
	my_ship = instance_find(obj_ship,0);	
}
