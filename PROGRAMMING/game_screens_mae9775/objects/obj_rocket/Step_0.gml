/// @description Insert description here
// You can write your code in this editor

vspeed *= 0.75; // glide to stop when key is not pressed

if(keyboard_check(key_up)){
	vspeed = -8;	// press either w or up key to move up
}

if(keyboard_check(key_down)){
	vspeed = 8;	 //press either s or down key to move down
}

if(y < 50){ //if collision with top of screen
	y = 740; //send back to bottom of screen
	score_count += 1; // add 1 to score
	show_debug_message(player_number); //identify which player's score is being shown
	show_debug_message(score_count); // show score in debug
}

if(y > 750){ //if hits bottom of screen, dont let rocket to pass
	y = 750; 
} 

