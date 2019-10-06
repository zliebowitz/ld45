/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, object_mean_yarn_ball))
{
	instance_destroy(object_mean_yarn_ball);
}
x += dx;
if (place_meeting(x, y, object_mean_yarn_ball))
{
	instance_destroy(object_mean_yarn_ball);
}
if (place_free(x, y))
{
	instance_destroy();
}