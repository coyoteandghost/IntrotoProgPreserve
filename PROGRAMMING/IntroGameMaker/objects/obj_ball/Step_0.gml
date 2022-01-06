/// @description draw in processing
// You can write your code in this editor

/*
if(x < 0 || x > room_width){
	hspeed *= -1;	
}

if(y < 0 || y > room_height){
	vspeed *= -1;	
}
*/

if(keyboard_check(ord("A"))){
	//show_debug_message("You Pressed A");
	hspeed = -5;
	} 
else if(keyboard_check(ord("D"))){
	hspeed = 5;
	}
else if(keyboard_check(ord("W"))){
	vspeed = -5;
	}
else if(keyboard_check(ord("S"))){
	vspeed = 5;
	}
else {
	hspeed = 0;
	vspeed = 0;
	}