/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(vk_right))
{
	if (place_free(kittenX + kittenXVelocity, kittenY))
	{
		image_xscale = 1;
		kittenX += kittenXVelocity;
		kittenXVelocity = min(kittenXVelocity + kittenXAcceleration, maxKittenXVelocity);
	}
}
else if (keyboard_check(vk_left))
{
	if (place_free(kittenX - kittenXVelocity, kittenY))
	{
		image_xscale = -1;
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
	jumping = false
}

if (keyboard_check(vk_space) && !jumping)
{
	kittenYVelocity = -7.0;
	jumping = true;
}

while (place_meeting(kittenX, kittenY, object_money))
{
	var money = instance_nearest(kittenX, kittenY, object_money);
	instance_destroy(money);
	money++;
}


x = floor(kittenX);
y = floor(kittenY);