/// @description Insert description here
// You can write your code in this editor
score = 0;
lives = 3;
total_rocks = 0;
max_rocks = 10;
level = 1;
levelup = 0;
destroy_count_max = 7; //set to 7 * level - all parts of a rock
destroy_count = 0; //counter for destroyed rocks

repawn_shields_timer = 120;
draw_set_font(fnt_text);

randomize();

astring = "";
