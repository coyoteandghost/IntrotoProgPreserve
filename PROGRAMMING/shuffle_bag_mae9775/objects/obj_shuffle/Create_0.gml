/// @description Insert description here
// You can write your code in this editor
randomize(); //random on every run 

quotes_list = ds_list_create(); //init list

//fill list
ds_list_add(quotes_list,
	"A beautiful, smart, and loving person\nwill be coming into your life.",
	"A dubious friend may be\nan enemy in camouflage.",
	"A faithful friend is a strong defense.",
	"A feather in the hand is\nbetter than a bird in the air.",
	"A fresh start will put\nyou on your way.",
	"A friend asks only for\nyour time not your money.",
	"A friend is a present\nyou give yourself.",
	"A golden egg of opportunity\nfalls into your lap this month.",
	"A good time to finish up old tasks.",
	"A hunch is creativity\ntrying to tell you something.",
	"A lifetime friend shall soon be made.",
	"A lifetime of happiness\nlies ahead of you.",
	"A light heart carries you\nthrough all the hard times.",
	"A new perspective will come\nwith the new year.");

//create random_pos to select a number between 0 and list length
random_pos = irandom(ds_list_size(quotes_list) - 1);

//selects a line from list based on random_pos
current_quote = quotes_list[|random_pos];

//deletes current random_pos from list 
ds_list_delete(quotes_list, random_pos);