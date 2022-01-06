/// @description Insert description here
// You can write your code in this editor
text_list = ds_list_create(); //init list

//fill list
ds_list_add(text_list,
	"As you scramble to regain your bearings, \nyou hear a young girl's voice calling out to you.",
	"Your phone buzzes to alarm you that your out \nof battery. No way to call for help anymore.",
	"You wake up in the middle of a dark \nforest, confused and dazed.");

//gets length of list
text_list_size = ds_list_size(text_list) - 1;

//sets var current_pos as # length of list
current_pos = text_list_size;

//current list section
current_text = text_list[|current_pos];

//deletes current_pos from list 
ds_list_delete(text_list, current_pos);

