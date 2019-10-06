/// @description Insert description here
// You can write your code in this editor

// there is a healthbar option tpp
var hs = sprite_health;
var hs_height = sprite_get_height(hs);
var hs_width = sprite_get_width(hs);
for (i = 0; i < health; i++)
{
	draw_sprite(hs, 0, camera_get_view_x(view_camera[view_current]) + i * (hs_width * 1.2), camera_get_view_y(view_camera[view_current]));
}

var ms = sprite_money;
var ms_height = hs_width;
var ms_width = hs_width;
draw_sprite_stretched(ms, 0,  camera_get_view_x(view_camera[view_current]), camera_get_view_y(view_camera[view_current]) + ms_height * 1.25, ms_width, ms_height);
draw_set_font(font_money);
draw_text_ext(camera_get_view_x(view_camera[view_current]) + 1.2 * ms_width, camera_get_view_y(view_camera[view_current]) + ms_height * 1.25, health, 0.1 * ms_width, 1.9 * ms_width);