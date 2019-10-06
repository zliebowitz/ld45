if (global._new_char_frame_count == 0 && global.initial_pause_count == global.max_initial_pause_count)
{
	//if (global._char_count == global._max_char_count && global._text_index != global._num_text_indexes - 1)
	//{
		// go to the next message
		//if (global._read_pause_count == global._max_read_pause_count)
		//{
		//	global._text_index = (global._text_index + 1) % global._num_text_indexes;
		//	global._char_count = -1;
		//	global._max_char_count = string_length(global.dialogue_text[global._text_index]);
		//	global._read_pause_count = 0;
		//}
		//else
		//{
		//	global._read_pause_count++;
		//}
	//}
	
	global._char_count = min(global._char_count + 1, global._max_char_count);
}
global._new_char_frame_count = (global._new_char_frame_count + 1) % global._max_new_char_frame_count;

var _text_part = string_copy(global.dialogue_text[global._text_index], 0, global._char_count);

draw_set_font(font_dialogue);
draw_set_color(c_white);
draw_text(x + global._left_padding, y + global._top_padding, _text_part);

global.initial_pause_count = min(global.initial_pause_count + 1, global.max_initial_pause_count);