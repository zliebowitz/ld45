/// @description Insert description here
// You can write your code in this editor
if ( health < global.max_health && place_meeting(x, y,object_kitten))
{
	health += 8;
	instance_destroy();
}