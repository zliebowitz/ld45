/// @description Insert description here
// You can write your code in this editor
while (place_meeting(x, y, object_mean_yarn_ball))
{
	var closest = instance_nearest(x, y, object_mean_yarn_ball);
	instance_destroy(closest);
}