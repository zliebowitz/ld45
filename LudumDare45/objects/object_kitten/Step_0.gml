/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(vk_right))
{
	image_xscale = 1;
	phy_linear_velocity_x = kittenXVelocity
	kittenXVelocity = min(kittenXVelocity + kittenXAcceleration,maxKittenXVelocity);
}
else if (keyboard_check(vk_left))
{
	image_xscale = -1;
	phy_linear_velocity_x = -kittenXVelocity
	kittenXVelocity = min(kittenXVelocity + kittenXAcceleration, maxKittenXVelocity);
}


if (keyboard_check(vk_space) && !jumping)
{
	phy_linear_velocity_y = -120.0;
	jumping = true;
}

phy_angular_velocity = 0