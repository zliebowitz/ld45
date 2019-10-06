/// @description Insert description here
// You can write your code in this editor
global.battle_sound = audio_play_sound(sound_battle_zone, 10, true);
loop_begin_time = 6.485;
alarm[0] = loop_begin_time * room_speed;
played = false;