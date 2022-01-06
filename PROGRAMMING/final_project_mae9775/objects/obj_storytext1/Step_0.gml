/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(ord("E"))){ // deletes current line of text and goes to next one
	ds_list_delete(text_list, current_pos); //deletes current spot in list
	text_list_size = ds_list_size(text_list) - 1; //determines position in list again
	current_pos = text_list_size; //define current position
	current_text = text_list[|current_pos]; //set displayed portion of list
}


if(ds_list_empty(text_list)){ //if list is emptied, go to next room
	room_goto(story2);
}