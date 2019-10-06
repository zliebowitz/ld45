/// @description Insert description here
// You can write your code in this editor
audio_stop_sound(global.shop_music)
global.battle_music = audio_play_sound(sound_battle_zone, 10, true);
loop_begin_time = 6.485;
alarm[0] = loop_begin_time * room_speed;
played = false;