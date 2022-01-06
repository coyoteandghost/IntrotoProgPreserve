/// @description Insert description here
// You can write your code in this editor

hspeed = 0; //makes chara stop when no buttons pressed
vspeed = 0;
depth = -y;

// 9 - 27, WASD controller + walk anims---------------------------------
if(keyboard_check(ord("W"))){
	vspeed = -global.move_speed;	
	hspeed = 0;
	sprite_index = spr_chara_walk_u; //displays walk anim up
}

if(keyboard_check(ord("S"))){
	vspeed = global.move_speed;	
	hspeed = 0;
	sprite_index = spr_chara_walk_d; // walk anim down
}

if(keyboard_check(ord("A"))){
	vspeed = 0;
	hspeed = -global.move_speed;
	sprite_index = spr_chara_walk_l; //walk anim left
}

if(keyboard_check(ord("D"))){
	vspeed = 0;
	hspeed = global.move_speed;
	sprite_index = spr_chara_walk_r; //walk anim right
}

if(keyboard_check_released(ord("D"))){ //if d key released, leaves sprite facing neutral right
	sprite_index = spr_chara_neutral_r;	
}

if(keyboard_check_released(ord("A"))){ //released a, neutral facing left
	sprite_index = spr_chara_neutral_l;	
}

if(keyboard_check_released(ord("S"))){ //released s, neutral facing down
	sprite_index = spr_chara_neutral_d;	
}

if(keyboard_check_released(ord("W"))){ //released w, neutral facing up
	sprite_index = spr_chara_neutral_u;
}

//border collisions, stops at edge---------------------------------------

if(x < 0){
	x = 0;
}

if(y < 0){
	y = 0;	
}

if(y > room_height){
	y = room_height;	
}

//if(x > room_width){  //goes on to next level after reaching right edge 
	//y = room_width;
// }

//CAMERA----------------------------------------------------

cam_width = camera_get_view_width(view_camera[0]); //variables to get width and height of cam window
cam_height = camera_get_view_height(view_camera[0]);

x_follow = x - cam_width/2; //variable for where cam should position itself/ where cam is centered on 
y_follow = y - cam_height/2; //based on top left corner of window box 

if(x < cam_width/2){ //stop cam before it passes the left edge of the room
	x_follow = 0;	
}

if(x > room_width - cam_width/2){ //stop cam before it passes the right edge of room
	x_follow = room_width - cam_width;	
}

if(y < cam_height/2){ // stop cam before it passes top edge of room
	y_follow = 0;
}

if(y > room_height - cam_height/2){ // stop cam before it passes bottom edge of room
	y_follow = room_height - cam_height;	
 }

camera_set_view_pos(view_camera[0], x_follow, y_follow); // sets the cam position based on ^ variables

