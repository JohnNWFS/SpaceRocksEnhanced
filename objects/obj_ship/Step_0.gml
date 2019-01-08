/// @description Insert description here
// You can write your code in this editor
//Added "WASD"  to existing checks

if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
	image_angle += 5;
}

if (keyboard_check(vk_right) || keyboard_check(ord("D")))  {
	image_angle -= 5;
}


	{

	if (keyboard_check(vk_up) || keyboard_check(ord("W")))  
	{
		draw_thrust = 1;
		my_thrust.draw_thrust = 1;
		motion_add(image_angle, .05);
	}

	if (keyboard_check_released(vk_up) || keyboard_check_released(ord("W")))
	{
		draw_thrust = 0;
		my_thrust.draw_thrust = 0;	
	}
	

	}

if (instance_exists(my_shield))
	{

	if (keyboard_check(vk_down) || keyboard_check(ord("S")))
	{	
		if (my_shield.shields_available == 1)
		{
		my_shield.shields_on = 1;	
		
		}
	}

	if (!keyboard_check(vk_down) && !keyboard_check(ord("S")))
	{	
		my_shield.shields_on = 0;
	}
	
		my_shield.x = x;
		my_shield.y = y;
}	

if (keyboard_check_pressed(vk_space)) {
	var bullet_inst = instance_create_layer(x, y, "Instances", obj_bullet);
	if (exploding == 1) {bullet_inst.exploding = 1;}
	if (doublesize == 1) {bullet_inst.doublesize = 1;}
	
	
	bullet_inst.direction = image_angle;
	audio_play_sound(snd_zap,1,false)
}

move_wrap(true, true, sprite_width/2);


	



