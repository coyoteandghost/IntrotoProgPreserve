/// @description Insert description here
// You can write your code in this editor
text_list = ds_list_create(); //init list

//fill list
ds_list_add(text_list,
	"THANKS FOR PLAYING :)\nPress SPACE to play again.",
	"Everything grows hazy, like it was all a dream...",
	"'Don't think I forgot your help! I'll help you\nget back to your part of the world now.'",
	"'This is it, finally!'",
	"After journeying through the woods you and the\ngirl stumble upon an old graveyard.");

//gets length of list
text_list_size = ds_list_size(text_list) - 1;

//sets var current_pos as # length of list
current_pos = text_list_size;

//current list section
current_text = text_list[|current_pos];

//deletes current_pos from list 
ds_list_delete(text_list, current_pos);

