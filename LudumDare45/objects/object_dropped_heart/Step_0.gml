/// @description Insert description here
// You can write your code in this editor
if ( health < 10 && place_meeting(x, y,object_kitten))
{
	health++;
	instance_destroy();
}