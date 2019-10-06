/// @description Insert description here
// You can write your code in this editor
maxKittenXVelocity = 2.0;
maxKittenYVelocity = 10.0;
kittenXAcceleration = 0.25;
kittenXVelocity = 0.0;
kittenX = x;
kittenYAcceleration = 0.25;
kittenYVelocity = 0.0;
kittenY = y;
jumping = false;
if (!variable_global_exists("money"))
{
	global.money = 0;
}
global.max_health  = 80;
if (health > global.max_health || health <= 0)
{
	health = global.max_health / 2;
}
spawnX = x;
spawnY = y;
vulnerable = true;
canScratch = true;
global.scratch_time = 8;