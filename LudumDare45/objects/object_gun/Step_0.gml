/// @description Insert description here
// You can write your code in this editor
if (global.has_gun == true)
{
	var kitten = object_kitten;
	x = kitten.x;
	y = kitten.y;
	if (kitten.sprite_index == sprite_kitten_walking)
	{
		sprite_index = sprite_gun_walking;
	}
	if (kitten.sprite_index == sprite_kitten_idle)
	{
		sprite_index = sprite_gun_idle;
	}	
	if (kitten.sprite_index == sprite_kitten_falling)
	{
		sprite_index = sprite_gun_falling;
	}	
	if (kitten.sprite_index == sprite_kitten_jumping)
	{
		sprite_index = sprite_gun_jumping;
	}
	if (kitten.sprite_index == sprite_kitten_dying)
	{
		sprite_index = sprite_gun_dying;
	}
	image_index = kitten.image_index;
	image_xscale = kitten.image_xscale;
	image_alpha = 1;
}
else
{
	image_alpha = 0;
}