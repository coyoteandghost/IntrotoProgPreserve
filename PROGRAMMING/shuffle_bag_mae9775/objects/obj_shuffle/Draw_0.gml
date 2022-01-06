/// @description Insert description here
// You can write your code in this editor

draw_self(); //draw sprite

//init text
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(fnt_cookie);

//draws text in black 
draw_text_color(room_width/2, room_height/2, current_quote, c_black, c_black, c_black, c_black, 1);