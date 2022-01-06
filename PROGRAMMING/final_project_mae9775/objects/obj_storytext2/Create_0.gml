/// @description Insert description here
// You can write your code in this editor
text_list = ds_list_create(); //init list

//fill list
ds_list_add(text_list,
	"'If you want me to shoot, press LEFT MOUSE BUTTON.\nPush the gargoyles onto the circles to keep moving!'", 
	"You don't see any other options, and you've always \nwanted a little adventure anyways, so you go along with her.",
	"'As long as you promise to help me find my grave!'",
	"'I think we can help each other. It can get pretty \ndangerous here, but I'll protect you.'",
	"'You look pretty lost. Don't worry, I am too.'",
	"As the girl approaches you, you realize that she is... \na ghost!?!",
	"'HEY! YOU!'");

//gets length of list
text_list_size = ds_list_size(text_list) - 1;

//sets var current_pos as # length of list
current_pos = text_list_size;

//current list section
current_text = text_list[|current_pos];

//deletes current_pos from list 
ds_list_delete(text_list, current_pos);

