/// @description Insert description here
// You can write your code in this editor
shieldcount = instance_number(obj_shield);
thrustcount = instance_number(obj_shield);

if (shieldcount > 0) {with (instance_find(obj_shield,0)) {instance_destroy();}	}
if (thrustcount > 0) {with (instance_find(obj_shield,0)) {instance_destroy();}	}


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
