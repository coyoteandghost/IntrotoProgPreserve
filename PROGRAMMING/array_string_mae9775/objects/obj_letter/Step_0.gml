/// @description Insert description here
// You can write your code in this editor
randomize();

if(keyboard_check_pressed(vk_space)){
	show_debug_message("BUTTON PRESSED!");
	random_pos = irandom(ds_list_size(letters_list) - 1)
	current_letter = letters_list[|random_pos];
	ds_list_delete(letters_list, random_pos);
}

if(ds_list_empty(letters_list)){
	ds_list_add(letters_list, "As I see\nit, yes.", "Ask again\nlater.", "Better not\ntell you\nnow.", "Concentrate\nand ask\nagain.", "Don't count\non it.", "It is\ncertain.", "No way.");	
}