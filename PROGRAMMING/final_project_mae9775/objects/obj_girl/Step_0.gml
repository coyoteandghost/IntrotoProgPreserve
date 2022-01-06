/// @description Insert description here
// You can write your code in this editor

player = instance_nearest(x, y, obj_character); //determines direction of player
direction = point_direction(x, y, player.x - 100, player.y); //points obj in direction of player

if(point_distance(x, y, player.x - 100, player.y) < 5){ //if the distance between the point the obj is moving towards is < the speed, stop @ that point
	x = player.x - 100;
	y = player.y;
	speed *= 0;	
} else{
	speed = 5;	//otherwise keep moving
}

if(keyboard_check_pressed(ord("D"))){ //face right when d is pressed
	sprite_index = spr_girl_r;	
}

if(keyboard_check_pressed(ord("A"))){ //face left when a is pressed
	sprite_index = spr_girl_l;	
}

depth = -y;

if(mouse_check_button_pressed(mb_left) && sprite_index == spr_girl_r){ //right facing shoot sprite + bullet
	sprite_index = spr_girl_shoot_r; //facing right sprite
	var inst = instance_create_depth(x +20, y -30, obj_girl.depth, obj_bullet); //created inst of bullet
	inst.hspeed = 10; //bullet hori. movement right
	audio_play_sound(snd_shoot, 1, false); //play shoot sound
}

if(mouse_check_button_pressed(mb_left) && sprite_index == spr_girl_l){ //left facing shoot sprite + bullet
	sprite_index = spr_girl_shoot_l; //facing left sprite
	var inst = instance_create_depth(x -40, y -30, obj_girl.depth, obj_bullet); //create inst of bullet
	inst.hspeed = -10; //bullet hori. movement left
	audio_play_sound(snd_shoot, 1, false); //play shoot sound
}

//reset sprite after shooting
if(mouse_check_button_released(mb_left) && sprite_index = spr_girl_shoot_r){
	sprite_index = spr_girl_r;	 //when mb is released, return sprite to normal position from before mb was pressed
}

if(mouse_check_button_released(mb_left) && sprite_index = spr_girl_shoot_l){
	sprite_index = spr_girl_l;	
}
