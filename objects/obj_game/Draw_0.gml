/// @description Insert description here
// You can write your code in this editor
switch (room) {
	
	case rm_game:
		draw_text(20, 20, "Score: " + string(score));
		draw_text(20, 40, "Lives: " + string(lives));
		draw_text(140, 20, "Level: " + string(level));
		draw_text(140, 40, "Rocks to next level: " + string(destroy_count_max - destroy_count));
				
		
		break;
		
	case rm_start:
		draw_set_halign(fa_center);
		var c = c_yellow;
		draw_text_transformed_color(
			room_width/2, 75, "SPACE ROCKS", 3, 3, 0, c, c, c, c, 1
		);
		draw_text_transformed_color(
			room_width/2, 128, "ENHANCED", 3, 3, 0, c, c, c, c, 1
		);
		draw_text(
			room_width/2, 200,
			@"Score 1,000 points to win!

UP or W: move
LEFT/RIGHT or A/S: change direction
SPACE: shoot
DOWN or S: shield

POWER UPS:
:Double Sized Bullet

:Exploding Bullets

>> PRESS ENTER TO START <<"
		);

		
		draw_set_halign(fa_left);
		break;
		
	case rm_win:
		draw_set_halign(fa_center);
		var c = c_lime;
		draw_text_transformed_color(
			room_width/2, 200, "YOU WON!", 3, 3, 0, c, c, c, c, 1
		);
		draw_text(
			room_width/2, 300,
			"PRESS ENTER TO RESTART"
		);
		draw_set_halign(fa_left);
		break;
		
	case rm_gameover:
		draw_set_halign(fa_center);
		var c = c_red;
		draw_text_transformed_color(
			room_width/2, 150, "GAME OVER", 3, 3, 0, c, c, c, c, 1
		);
		draw_text(room_width/2, 250, "FINAL SCORE: " + string(score));
		draw_text(room_width/2, 300, "PRESS ENTER TO RESTART");
		draw_set_halign(fa_left);
		break;
	
}
if (levelup = 1)
{
		draw_set_halign(fa_center);
		var c = c_yellow;
		draw_text_transformed_color(
			room_width/2, 150, "Levelling up!", 3, 3, 0, c, c, c, c, 1
		);
		draw_text(room_width/2, 250, "CURRENT LEVEL: " + string(level));
		draw_set_halign(fa_left);
}
//{draw_text(200,200,alarm[2]);}

	