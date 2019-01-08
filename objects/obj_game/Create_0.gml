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

poweruptimer = room_speed * 6; //how long a power up lasts
exploding = 0;
doublesize = 0;

my_ship = instance_find(obj_ship,0);

		var tempsprite1 = instance_create_layer(100,380,"Instances",obj_powerup)
		tempsprite1.speed = 0;
		tempsprite1.image_angle = 0;
		tempsprite1.image_speed = 2;
		tempsprite1.poweruptype = "doublebullet";
		tempsprite1.sprite_index = spr_coin_double;
		tempsprite1.dontdie = 1;
		
		var tempsprite2 = instance_create_layer(100,430,"Instances",obj_powerup)
		tempsprite2.speed = 0;
		tempsprite2.image_angle = 0;
		tempsprite2.poweruptype = "explodingbullet";
		tempsprite2.image_speed = 2;
		tempsprite2.sprite_index = spr_coin_xplode;
		tempsprite2.dontdie = 1;