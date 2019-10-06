if (!argument0.vulnerable)
{
	return;
}
// TODO: Armor mod
health -= 4;
if (health <= 0)
{
        argument0.sprite_index = sprite_kitten_dying;
		// Destroys all instances
		instance_destroy(object_scratch);
		instance_destroy(object_money);
		instance_destroy(object_dropped_heart);
}
else
{
	argument0.alarm[0] = 30;
	argument0.vulnerable = false;
}