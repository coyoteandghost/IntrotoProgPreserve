/// @description Insert description here
// You can write your code in this editor

if(dead_state = false){ //show hp in corner 
	draw_set_halign(fa_left); //text aligned left hori.
	draw_set_valign(fa_center); //centerd vertically
	draw_text(obj_character.x_follow + 10 , obj_character.y_follow + 50, string("HEALTH:")); //displays "HEALTH:" in corner
	draw_text(obj_character.x_follow + 180 , obj_character.y_follow + 50, string(obj_character.health_pt)); //displays value of HP
	}
	
if(dead_state = true){ //show game over text
	draw_set_halign(fa_center); //text is centered vert. and hori. 
	draw_set_valign(fa_center);
	draw_text(obj_character.x_follow +600, obj_character.y_follow +400, "GAME OVER!\nPress SPACE to try again.")
	} //displays "GAMEOVER" text