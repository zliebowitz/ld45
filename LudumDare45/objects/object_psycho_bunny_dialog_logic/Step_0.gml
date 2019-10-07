/// @description Insert description here
// You can write your code in this editor
script_execute(draw_action_dialogue);

if (menu == mainMenu)
{
	if (keyboard_check(vk_down))
	{
		if (!downPressed)
		{
			menuItemIndex = (menuItemIndex + 1) % 3;
	
			if (menuItemIndex == 0)
			{
				object_exit_menu_item.image_index = 0;
				object_buy_menu_item.image_index = 1;
			}
			else if (menuItemIndex == 1)
			{
				object_buy_menu_item.image_index = 0;
				object_sell_menu_item.image_index = 1;
			}
			else if (menuItemIndex == 2)
			{
				object_sell_menu_item.image_index = 0;
				object_exit_menu_item.image_index = 1;
			}
	
			downPressed = true;
		}
	}
	else
	{
		downPressed = false;
	}

	if (keyboard_check(vk_up))
	{
		if (!upPressed)
		{
			menuItemIndex = (menuItemIndex + 2) % 3;
	
			if (menuItemIndex == 2)
			{
				object_exit_menu_item.image_index = 1;
				object_buy_menu_item.image_index = 0;
			}
			else if (menuItemIndex == 0)
			{
				object_buy_menu_item.image_index = 1;
				object_sell_menu_item.image_index = 0;
			}
			else if (menuItemIndex == 1)
			{
				object_sell_menu_item.image_index = 1;
				object_exit_menu_item.image_index = 0;
			}
	
			upPressed = true;
		}
	}
	else
	{
		upPressed = false;
	}

	if (keyboard_check(vk_enter))
	{
		if (!enterPressed)
		{
			if (menuItemIndex == 2)
			{
				room_goto(room01);
			}
			else if (menuItemIndex == 1)
			{
				global._text_index = 2;
				global._char_count = -1;
				global._max_char_count = string_length(global.dialogue_text[global._text_index]);
			}
			else
			{
				global._text_index = 1;
				global._char_count = -1;
				global._max_char_count = string_length(global.dialogue_text[global._text_index]);
				menu = buyMenu;
				menuItemIndex = 0;
				object_gun_menu_item.image_index = 1;
			}
			enterPressed = true;
		}
	}
	else
	{
		enterPressed = false;
	}
}
else if (menu == buyMenu)
{
	if (keyboard_check(vk_down))
	{
		if (!downPressed)
		{
			menuItemIndex = (menuItemIndex + 1) % 4;
	
			if (menuItemIndex == 0)
			{
				object_exit_menu_item.image_index = 0;
				object_gun_menu_item.image_index = 1;
			}
			else if (menuItemIndex == 1)
			{
				object_gun_menu_item.image_index = 0;
				object_armor_menu_item.image_index = 1;
			}
			else if (menuItemIndex == 2)
			{
				object_armor_menu_item.image_index = 0;
				object_helmet_menu_item.image_index = 1;
			}
			else if (menuItemIndex == 3)
			{
				object_helmet_menu_item.image_index = 0;
				object_exit_menu_item.image_index = 1;
			}
	
			downPressed = true;
		}
	}
	else
	{
		downPressed = false;
	}
	
	if (keyboard_check(vk_up))
	{
		if (!upPressed)
		{
			menuItemIndex = (menuItemIndex + 3) % 4;
	
			if (menuItemIndex == 0)
			{
				object_gun_menu_item.image_index = 1;
				object_armor_menu_item.image_index = 0;
			}
			else if (menuItemIndex == 1)
			{
				object_armor_menu_item.image_index = 1;
				object_helmet_menu_item.image_index = 0;
			}
			else if (menuItemIndex == 2)
			{
				object_helmet_menu_item.image_index = 1;
				object_exit_menu_item.image_index = 0;
			}
			else if (menuItemIndex == 3)
			{
				object_exit_menu_item.image_index = 1;
				object_gun_menu_item.image_index = 0;
			}
	
			upPressed = true;
		}
	}
	else
	{
		upPressed = false;
	}

	if (upPressed || downPressed)
	{
		if (menuItemIndex == 0)
		{
			global._text_index = 3;
		}
		else if (menuItemIndex == 1)
		{
			global._text_index = 4;
		}
		else if (menuItemIndex == 2)
		{
			global._text_index = 5;
		}
		else
		{
			global._text_index = 0;
		}
	}
	
	if (keyboard_check(vk_enter))
	{
		if (!enterPressed)
		{
			if (menuItemIndex == 0 && !global.has_gun && global.money >= global.gun_price)
			{
				global.money -= global.gun_price;
				global.has_gun = true;
				global._text_index = 1;
				audio_play_sound(sound_purchase_complete, 10, false);
			}
			else if (menuItemIndex == 1 && !global.has_armor && global.money >= global.armor_price)
			{
				global.money -= global.armor_price;
				global.has_armor = true;
				global._text_index = 1;
				audio_play_sound(sound_purchase_complete, 10, false);
			}
			else if (menuItemIndex == 2 && !global.has_helmet && global.money >= global.helmet_price)
			{
				global.money -= global.helmet_price;
				global.has_helmet = true;
				global._text_index = 1;
				audio_play_sound(sound_purchase_complete, 10, false);
			}
			// not bothering to figure out index of exit
			else if (menuItemIndex > 2 ||menuItemIndex < 0)
			{
				//object_exit_menu_item.image_index = 0;
				//menu = mainMenu;
				//menuItemIndex = 0;
				//global._text_index = 1;
				room_goto(room01);
			}
			else
			{
				global._text_index = 2;
			}
			enterPressed = true;
		}
	}
	else
	{
		enterPressed = false;
	}
}

if (global._text_index == 1 || global._text_index == 2)
{
	object_psycho_bunny.sprite_index = sprite_psycho_bunny_psycho;
}