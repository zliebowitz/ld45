/// @description Insert description here
// You can write your code in this editor

// there is a healthbar option tpp
var hs = sprite_health;
var hs_height = sprite_get_height(hs) * 2;
var hs_width = sprite_get_width(hs) * 2;
for (i = 0; i < floor(health / 8); i++)
{
	draw_sprite_stretched(hs, 0,  10 + camera_get_view_x(view_camera[view_current]) + i * (hs_width * 1.2), 10 + camera_get_view_y(view_camera[view_current]), hs_width, hs_height);
}
if (health % 8 >= 4)
{
	draw_sprite_stretched(hs, 1,  10 + camera_get_view_x(view_camera[view_current]) + int64(health / 8) * (hs_width * 1.2), 10 + camera_get_view_y(view_camera[view_current]), hs_width, hs_height);
}

var ms = sprite_money;
var ms_height = hs_width;
var ms_width = hs_width;
draw_sprite_stretched(ms, 0,  10 + camera_get_view_x(view_camera[view_current]), 10 + camera_get_view_y(view_camera[view_current]) + hs_height * 1.25, ms_width, ms_height);
draw_set_font(font_money);
draw_text_ext( 10 + camera_get_view_x(view_camera[view_current]) + 1.2 * ms_width, 10 + camera_get_view_y(view_camera[view_current]) + hs_height * 1.25, global.money, 0.1 * ms_width, 1.9 * ms_width);