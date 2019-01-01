/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(vk_enter)) {
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
}


if (destroy_count >= destroy_count_max && !alarm[1])
{
level += 1;
levelup = 1;
with (obj_asteroid) {instance_destroy();}
alarm[1] = room_speed*3;

}