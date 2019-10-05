/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(vk_right))
{
	if (place_free(kittenX + kittenXVelocity, kittenY))
	{
		kittenX += kittenXVelocity;
		kittenXVelocity = min(kittenXVelocity + kittenXAcceleration, maxKittenXVelocity);
	}
}
else if (keyboard_check(vk_left))
{
	if (place_free(kittenX - kittenXVelocity, kittenY))
	{
		kittenX -= kittenXVelocity;
		kittenXVelocity = min(kittenXVelocity + kittenXAcceleration, maxKittenXVelocity);
	}
}
else
{
	kittenXVelocity = 0.0;
}

if (place_free(kittenX, kittenY + kittenYVelocity))
{
	kittenY += kittenYVelocity;
	
	kittenYVelocity = min(kittenYVelocity + kittenYAcceleration, maxKittenYVelocity);
}
else
{
	kittenYVelocity = 0.0;
}

if (keyboard_check(vk_space) && !jumping)
{
	kittenYVelocity = -7.0;
	jumping = true;
}
else if (!keyboard_check(vk_space))
{
	jumping = false;
}

x = floor(kittenX);
y = floor(kittenY);