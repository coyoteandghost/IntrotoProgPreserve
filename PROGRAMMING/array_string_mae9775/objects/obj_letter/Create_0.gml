/// @description Insert description here
// You can write your code in this editor

x = room_width/2; //position obj
y = 430;

randomize(); //true randomiization each start of prog.
//random_set_seed(1);

/*

letters[0] = "As I see\nit, yes.";   //letters array
letters[1] = "Ask again\nlater.";
letters[2] = "Better not\ntell you\nnow.";
letters[3] = "Concentrate\nand ask\nagain.";
letters[4] = "Don't count\non it.";
letters[5] = "It is\ncertain.";
letters[6] = "It is\nuncertain.";
letters[7] = "No way.";
letters[8] = "Absolutely.";

random_pos = irandom(array_length(letters) - 1); //picks a random integer value from the length of letters array

current_letter = letters[random_pos]; //uses random integer from ^ in array
*/

letters_list = ds_list_create(); //init list

//fill list
ds_list_add(letters_list, "As I see\nit, yes.", "Ask again\nlater.", "Better not\ntell you\nnow.", "Concentrate\nand ask\nagain.", "Don't count\non it.", "It is\ncertain.", "No way.");

//pick a random # between 0 and length of list
random_pos = irandom(ds_list_size(letters_list) - 1); 

current_letter = letters_list[|random_pos];  // use random # to pick a value in list to display

ds_list_delete(letters_list, random_pos); //deletes current random_pos from list 




