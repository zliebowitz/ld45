/// @description Insert description here
// You can write your code in this editor

if (sprite_index == sprite_kitten_dying)
{
	return;
}

// handle walking
if (keyboard_check(vk_right))
{
	if (place_meeting(kittenX + kittenXVelocity, kittenY, object_mean_yarn_ball))
	{
		decrement_health(self);
	}
	if (place_free(kittenX + kittenXVelocity, kittenY))
	{
		image_xscale = 1;
		kittenX += kittenXVelocity;
		kittenXVelocity = min(kittenXVelocity + kittenXAcceleration, maxKittenXVelocity);
	}
	sprite_index = sprite_kitten_walking;
}
else if (keyboard_check(vk_left))
{
	if (place_meeting(kittenX - kittenXVelocity, kittenY, object_mean_yarn_ball))
	{
		decrement_health(self);
	}
	if (place_free(kittenX - kittenXVelocity, kittenY))
	{
		image_xscale = -1;
		kittenX -= kittenXVelocity;
		kittenXVelocity = min(kittenXVelocity + kittenXAcceleration, maxKittenXVelocity);
	}
	sprite_index = sprite_kitten_walking;
}
else
{
	kittenXVelocity = 0.0;
	sprite_index = sprite_kitten_idle;
}

// handle gravity
if (place_free(kittenX, kittenY + kittenYVelocity))
{
	kittenY += kittenYVelocity;
	kittenYVelocity = min(kittenYVelocity + kittenYAcceleration, maxKittenYVelocity);
	
	if (kittenYVelocity < 0.0)
	{
		sprite_index = sprite_kitten_jumping;
	}
	else if (place_free(kittenX, kittenY + kittenYVelocity))
	{
		sprite_index = sprite_kitten_falling;
	}
	
}
else
{
	if (place_meeting(kittenX, kittenY + kittenYVelocity, object_mean_yarn_ball))
	{
		decrement_health(self);
	}
	kittenYVelocity = 0.0;
	
	if (!keyboard_check(vk_space))
	{
		jumping = false
	}
}

// handle jumping
if (keyboard_check(vk_space) && !jumping)
{
	kittenYVelocity = -7.0;
	jumping = true;
}

// handle money
while (place_meeting(kittenX, kittenY, object_money))
{
	var money_inst = instance_nearest(kittenX, kittenY, object_money);
	instance_destroy(money_inst);
	global.money++;
}

// handle attacking
if (keyboard_check_pressed(vk_shift) && canAttack)
{
	canAttack = false;
	alarm[1] = global.attack_time;
	// width becomes negative if facing left ... (Hoskins discovery)
	if (!global.has_gun)
	{
		var s = instance_create_layer(x + sprite_width, y - 12, layer, object_scratch);
		s.image_xscale = image_xscale;
	}
	else
	{
		var b = instance_create_layer(x + object_gun.sprite_width / 2, y, layer, object_bullet);
		b.dx = 5 * image_xscale;
	}
}

x = floor(kittenX);
y = floor(kittenY);