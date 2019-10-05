/// @description Insert description here
// You can write your code in this editor
bounce_force = .7;
bounced = false;

if (!place_free(x, y + dy))
{
	dy *= -bounce_force;
	bounced = true;
}
if (!place_free(x + dx, y))
{
	dx *= -bounce_force;
	bounced = true;
}

if (bounced)
{
	bounce_force *= .5;
}

x += dx;
y += dy;
dy += .3;