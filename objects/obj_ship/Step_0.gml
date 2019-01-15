/// @description Insert description here
// You can write your code in this editor
//Added "WASD"  to existing checks
//let's try to make mobile friendly by:
//TODO: Make portrait only
//TODO: Make left and right edge press same as A and D
//TODO: Make press and hold bottom edge thrust
//TODO: Double tap shield


mouse_left_pressed = mouse_check_button(mb_left);

if (mouse_left_pressed && swipe_check_started == 0) {
	swipe_check_started = 1;
	swipe_check_xstart = mouse_x; 
    swipe_check_ystart = mouse_y;
}

if (swipe_check_started == 1) {swipe_timer += 1;}


if (mouse_left_pressed && aclick_happened == 0)
{
	aclick_happened = 1;
	mousex_press_location = mouse_x;
	mousey_press_location = mouse_y;
	if (mousex_press_location < (room_width / 7))
		{
			rotate_left = 1;
		}
	if (mousex_press_location > room_width - (room_width / 7) )
		{
			rotate_right = 1;
		}	
	if (mousey_press_location > room_height - (room_height / 7))
	{
		shield_trigger = 1;
		//show_debug_message("shield triggered");
	}

}

mouse_left_released = mouse_check_button_released(mb_left);

if (mouse_left_released) {
	thrust_trigger = 0; //stop thrust
	swipe_check_started = 0; //reset thrust trigger 
	swipe_timer = 0; //reset thrust swipe timer
	
	if (rotate_left == 0 && 
	rotate_right == 0 &&
	((mousey_press_location < (room_height - (room_height / 7)))
	&& (mousex_press_location > (room_width / 7)) && 
	(mousex_press_location < (room_width - (room_width / 7)))))
	{
		fire_shot = 1;	
	}
	aclick_happened = 0; 
	rotate_left = 0; 
	rotate_right = 0;
	shield_trigger = 0;
	}	

	if (swipe_check_started)
	{
		if (swipe_timer >= swipe_time_max)
			{
				if ((mouse_x <> swipe_check_xstart || mouse_y <> swipe_check_ystart)
				&&
				((swipe_check_ystart < (room_height - (room_height / 7)))
				&& (swipe_check_xstart > (room_width / 7)) && 
				(swipe_check_xstart < (room_width - (room_width / 7)))))
				{
					thrust_trigger = 1;
				}
			}
	}
	

//if (mouse_check_button_released(mb_left)) { mousepressed = 0; heldsteps = 0; drawmousexy = 0;}

if (keyboard_check(vk_left) || keyboard_check(ord("A")) || rotate_left == 1  ) {
	image_angle += 5;
	rotate_left = 0;
	aclick_happened = 0;
}

if (keyboard_check(vk_right) || keyboard_check(ord("D")) || rotate_right == 1)  {
	image_angle -= 5;
	rotate_right = 0;
	aclick_happened = 0;
}

	if (keyboard_check(vk_up) || keyboard_check(ord("W")) || thrust_trigger == 1)  
	{
		draw_thrust = 1;
		my_thrust.draw_thrust = 1;
		motion_add(image_angle, .05);
	}

	if (keyboard_check_released(vk_up) || keyboard_check_released(ord("W")) || thrust_trigger == 0)
	{
		draw_thrust = 0;
		my_thrust.draw_thrust = 0;	
	}
	

if (instance_exists(my_shield))
	{

	if (keyboard_check(vk_down) || keyboard_check(ord("S")) || shield_trigger == 1)
	{	
		
		if (my_shield.shields_available == 1)
		{
			//show_debug_message("They are on, or should be " + string(shield_trigger) + string(date_get_second(date_current_datetime())));
			my_shield.shields_on = 1;	
		}
	}

	if (!keyboard_check(vk_down) && !keyboard_check(ord("S")) && shield_trigger == 0)
	{	
		my_shield.shields_on = 0;
	}
	
		my_shield.x = x;
		my_shield.y = y;
}	

if (keyboard_check_pressed(vk_space) || fire_shot == 1) {
	var bullet_inst = instance_create_layer(x, y, "Instances", obj_bullet);
	if (exploding == 1) {bullet_inst.exploding = 1;}
	if (doublesize == 1) {bullet_inst.doublesize = 1;}
	
	
	bullet_inst.direction = image_angle;
	audio_play_sound(snd_zap,1,false)
	if (fire_shot == 1) {fire_shot = 0;}
}

move_wrap(true, true, sprite_width/2);
