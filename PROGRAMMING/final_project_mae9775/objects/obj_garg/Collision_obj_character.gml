/// @description Insert description here
// You can write your code in this editor

//if collision active and key is pressed, push garg
if(keyboard_check_pressed(ord("W"))){
	vspeed = -global.move_speed;	//if W is pressed while in collision with player, moves garg. at same speed as player UP
	hspeed = 0; //no hori movement
	audio_play_sound(snd_push, 1, false);  //plasy push sound
}


if(keyboard_check_pressed(ord("A"))){
	vspeed = 0;	//no vert movement
	hspeed = -global.move_speed; //if A is pressed while in collision with player, moves garg. at same speed as player LEFT
	audio_play_sound(snd_push, 1, false); //[ush sound
}


if(keyboard_check_pressed(ord("S"))){
	hspeed = 0;	//no hori movement
	vspeed = global.move_speed; //if S is pressed while in collision with player, moves garg. at same speed as player DOWN
	audio_play_sound(snd_push, 1, false); //push sound
}


if(keyboard_check_pressed(ord("D"))){
	vspeed = 0;	//no vert movement
	hspeed = global.move_speed; //if D is pressed while in collision with player, moves garg. at same speed as player RIGHT
	audio_play_sound(snd_push, 1, false); //push sound
} 


// if key is released, stop movement
if(keyboard_check_released(ord("W"))){ //stops UP movement when released
	vspeed = 0;	
	hspeed = 0;
	audio_stop_sound(snd_push); //stops push sound
}


if(keyboard_check_released(ord("A"))){ //stops LEFT movement when released
	vspeed = 0;	
	hspeed = 0;
	audio_stop_sound(snd_push); //stops sound 
}


if(keyboard_check_released(ord("S"))){ //stops DOWN movement when released 
	vspeed = 0;	
	hspeed = 0;
	audio_stop_sound(snd_push); //stops sound
}


if(keyboard_check_released(ord("D"))){ //stops RIGHT movement when released
	vspeed = 0;	
	hspeed = 0;
	audio_stop_sound(snd_push); //stops sound 
} 