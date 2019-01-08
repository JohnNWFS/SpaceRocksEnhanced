/// @description Insert description here
// You can write your code in this editor
score += 10;
obj_game.destroy_count += 1; //adding to destroyed rocks to complete level at max met
scp_destroy_other("yes");

if (exploding == 1 && spawned_as_exploding == 0) //prevent cascade by making spawned bullets not exploders
{
repeat (4) {
	var bulletduplicate = instance_create_layer(x, y, "Instances", obj_bullet);
	bulletduplicate.spawned_as_exploding = 1;
	bulletduplicate.direction = irandom_range(0,359);
	}	
}

instance_destroy(); //get rid of spent bullet
