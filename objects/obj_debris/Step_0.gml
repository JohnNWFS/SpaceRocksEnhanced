/// @description Insert description here
// You can write your code in this editor
// slowly fade
image_alpha -= 0.01;

// when the image is no longer visible, destroy the object 
if (image_alpha <= 0.0) {
	instance_destroy();
}