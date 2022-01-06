/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(ord("E"))){
	ds_list_delete(text_list, current_pos);
	text_list_size = ds_list_size(text_list) - 1;
	current_pos = text_list_size;
	current_text = text_list[|current_pos];
	
}


if(ds_list_empty(text_list)){ //if list is emptied, go to next room
	room_goto(lvl_1);
}