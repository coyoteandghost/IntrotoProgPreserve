/// @description Insert description here
// You can write your code in this editor
speed = 2;

player = instance_nearest(x, y, obj_character); //determines direction of player
direction = point_direction(x, y, player.x, player.y); //points obj in direction of player

depth = -y;