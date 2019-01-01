/// @description Insert description here
// You can write your code in this editor
score += 10;
obj_game.destroy_count += 1; //adding to destroyed rocks to complete level at max met
scp_destroy_other("yes");
instance_destroy(); //get rid of spent bullet
