global.dialogue_text[0] = "Hiya!\nWhat can I do ya fer?";
global.dialogue_text[1] = "Ooooooooo... YEA!  CAN DO!!!";
global.dialogue_text[2] = "Ooooooooo... NO!  I CANNOT DO THAT!!!";
global.dialogue_text[3] = "Ooooooooo... Yea! CAN TRADE THAT!!!!";

global._text_index = 0;
//global._num_text_indexes = array_length_1d(global.dialogue_text);
global._char_count = -1;
global._max_char_count = string_length(global.dialogue_text[0]);
global._new_char_frame_count = 0;
global._max_new_char_frame_count = 2;
//global._read_pause_count = 0;
//global._max_read_pause_count = 60;
global._left_padding = 8;
global._top_padding = 8;
global.initial_pause_count = 0;
global.max_initial_pause_count = 15;