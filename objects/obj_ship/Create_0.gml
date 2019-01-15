/// @description Insert description here
// You can write your code in this editor
shieldcount = instance_number(obj_shield);
thrustcount = instance_number(obj_thrust);

if (shieldcount > 0) {with (instance_find(obj_shield,0)) {instance_destroy();}	}
if (thrustcount > 0) {with (instance_find(obj_thrust,0)) {instance_destroy();}	}

shieldcount = instance_number(obj_shield);
thrustcount = instance_number(obj_thrust);

if (shieldcount < 1) {
my_shield = instance_create_layer(x,y,"Instances",obj_shield);}

if (thrustcount < 1) {
my_thrust = instance_create_layer(x,y,"Instances",obj_thrust);
}
my_shield_timer = 0;

my_shield.my_ship = id;
my_thrust.my_ship = id;

draw_thrust = 0;
shields_on = 0;
shields_power = 100;

exploding = 0; //are bullets exploding type
doublesize = 0; //are bullets doubled in size?

mousex_press_location = 0;
mousey_press_location = 0;
mouse_left_pressed = 0;
mouse_left_released = 0;
mousepressed = 0;
heldsteps = 0;
drawmousexy = 0; //draw mouse x y for testing, not that the mouse is sexy
aclick_happened = 0;

rotate_left = 0; //test for whether spin left is activated
rotate_right = 0; //test for whether spin right is activated
fire_shot = 0; //trigger that tells us a shot has been fired
shield_trigger = 0; //trigger that shield has been enabled (or attempted to be)
thrust_trigger = 0; //trigger for thrust enabled through swipe

swipe_check_started = 0; //check if a swipe might have started
swipe_timer = 0; //special timer counting steps before swipe may be triggered
swipe_time_max = 10; //time when, if release happens after this amount of time, a swipe is triggered
swipe_check_xstart = 0; 
swipe_check_ystart = 0;

