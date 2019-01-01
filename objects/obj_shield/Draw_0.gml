/// @description Insert description here
// You can write your code in this editor
//draw_text(x,y-20,"value is: " + string(shields_on));
if (shields_on == 1 && shields_available == 1)
{
	sprite_index = spr_shield;
	draw_self();	
}

if (shields_on == 0 || shields_available == 0)
{
	sprite_index = spr_empty;
	draw_self();	
}

//draw_text (x-32,y+32,string(shields_on) + " " + string(mask_index));