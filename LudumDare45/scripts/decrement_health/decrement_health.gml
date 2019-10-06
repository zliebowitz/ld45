if (!argument0.vulnerable)
{
	return;
}
health--;
if (health <= 0)
{
        instance_destroy(argument0.id);
		// Destroys all instances
		instance_destroy(object_scratch);
		instance_destroy(object_money);
}
else
{
	argument0.alarm[0] = 30;
	argument0.vulnerable = false;
}