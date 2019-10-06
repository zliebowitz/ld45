/// @description Insert description here
// You can write your code in this editor
script_execute(draw_action_dialogue);

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
	if (menuItemIndex == 2)
	{
		room_goto(room_first);
	}
	else if (!enterPressed)
	{
		global._text_index = 1;
		global._char_count = -1;
		global._max_char_count = string_length(global.dialogue_text[global._text_index]);
		enterPressed = true;
	}
}
else
{
	enterPressed = false;
}

if (global._text_index == 1)
{
	object_psycho_bunny.sprite_index = sprite_psycho_bunny_psycho;
}