/// @description Insert description here
// You can write your code in this editor
global.helmet_price = 2;
global.armor_price = 5;
global.gun_price = 8;
script_execute(init_action_dialogue);
script_execute(init_dialogue);
object_buy_menu_item.image_index = 1;
menuItemIndex = 0;
upPressed = true;
downPressed = true;
enterPressed = true;
mainMenu = 0;
buyMenu = 1;
menu = mainMenu;
if (!variable_global_exists("has_gun"))
{
	global.has_gun = false;
}
if (!variable_global_exists("has_armor"))
{
	global.has_armor = false;
}
if (!variable_global_exists("has_helmet"))
{
	global.has_helmet = false;
}
if (!variable_global_exists("money"))
{
	global.money = 0;
}