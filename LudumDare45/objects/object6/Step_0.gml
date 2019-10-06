/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(vk_up) &&place_meeting(x, y, object_kitten))
{
	image_index = 1;
	instance_deactivate_all(true);
	alarm[0] = 60;
}