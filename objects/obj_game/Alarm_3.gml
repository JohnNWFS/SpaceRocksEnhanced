/// @description spawn powerups
// You can write your code in this editor
if (room != rm_game) {
	exit;
}

	var xx = choose((-60), (room_width+60));
	var yy = choose((-60), (room_height+60));
	

instance_create_layer(xx, yy, "Instances", obj_powerup);


alarm[3] = irandom_range(room_speed*5,room_speed*20);