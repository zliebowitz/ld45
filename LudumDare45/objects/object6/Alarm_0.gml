/// @description Insert description here
// You can write your code in this editor
if(room == room_shop){
	room_goto(room01);
}else if(room == room01){
	room_goto(room011);
}else if(room == room011){
	room_goto(room_shop);
}
