/// @description Insert description here
// You can write your code in this editor
//draw_text(x,y-20,"value is: " + string(shields_on));
if (shields_on == 1 && shields_available == 1)
{
	mask_index = spr_shield;
	draw_self();	
}

//draw_text (200,200,mask_index);