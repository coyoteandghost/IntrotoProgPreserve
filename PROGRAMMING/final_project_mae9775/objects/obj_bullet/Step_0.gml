/// @description Insert description here
// You can write your code in this editor

if(x < 0 || x>room_width){ //if bullet hits edges, destroys itself
	instance_destroy(id);	
}