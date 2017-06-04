/// @description Insert description here
// You can write your code in this editor
player = instance_find(obj_character_kyo, 0);
draw_text(10, 10, "HP: ");
draw_text(50, 10, player.hp);
draw_set_color(c_red)