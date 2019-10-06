/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, object_mean_yarn_ball))
{
	var closest = instance_nearest(x, y, object_mean_yarn_ball);
	closest.sprite_index = sprite_mean_yarn_ball_dying;
	closest.solid = false;
}