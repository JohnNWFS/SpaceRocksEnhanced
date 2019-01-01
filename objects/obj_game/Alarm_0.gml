/// @description Insert description here
// You can write your code in this editor
// only do if we are in the game room
if (room != rm_game) {
	exit;
}

	var xx = choose((-60), (room_width+60));
	var yy = choose((-60), (room_height+60));
	
total_rocks = instance_number(obj_asteroid);

if (total_rocks <= max_rocks)
{
instance_create_layer(xx, yy, "Instances", obj_asteroid);
total_rocks += 1;
}

alarm[0] = 4 * room_speed;
