if (!argument0.vulnerable)
{
	return;
}
health--;
if (health <= 0)
{
        instance_destroy(argument0.id);
}
else
{
	argument0.alarm[0] = 30;
	argument0.vulnerable = false;
}