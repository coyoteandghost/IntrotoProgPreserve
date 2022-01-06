/// @description Insert description here
// You can write your code in this editor

if(obj_character.health_pt <= 0){ //if hp is less than or = 0, 
	dead_state = true; 
	obj_character.sprite_index = spr_NOcollision; //make characters + collision invisible 
	obj_girl.image_alpha = 0;
		if(keyboard_check_pressed(vk_space)){ //press space to restart room
		room_restart();	
		}
}

