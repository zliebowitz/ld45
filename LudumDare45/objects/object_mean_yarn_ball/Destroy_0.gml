/// @description Insert description here
// You can write your code in this editor
var coins = irandom_range(1, 5)
for (i = 0; i < coins; i++)
{
	instance_create_layer(x + random_range(-10, 10), y + random_range(-10, 10), layer, object_money);
}
if (random(1) <= .4)
{
	instance_create_layer(x, y, layer, object_dropped_heart);
}