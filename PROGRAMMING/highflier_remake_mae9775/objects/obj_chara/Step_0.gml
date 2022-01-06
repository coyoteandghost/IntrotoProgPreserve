/// @description Insert description here
// You can write your code in this editor

vspeed *= 0.85;

if(keyboard_check(key_up)){
	vspeed = -8;
}

if(keyboard_check(key_down)){
	vspeed = 8;	
}
