/// @description Insert description here
// You can write your code in this editor

hspeed = 0;
vspeed = 0;


// 9 - 27, WASD controller
if(keyboard_check(ord("W"))){
	vspeed = -move_speed;	
	hspeed = 0;
	image_index = 0; //sets image to frame 1 of sprite
}

if(keyboard_check(ord("S"))){
	vspeed = move_speed;	
	hspeed = 0;
	image_index = 1;
}

if(keyboard_check(ord("A"))){
	vspeed = 0;
	hspeed = -move_speed;
	image_index = 3;
}

if(keyboard_check(ord("D"))){
	vspeed = 0;
	hspeed = move_speed;
	image_index = 2;
}

//border collisions
if(x < 0){
	x = 0;
}

if(x > room_width){
	x = room_width;	
}

if(y < 0){
	y = 0;	
}

if(y > room_height){
	y = room_height;	
}


//CAMERA
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
