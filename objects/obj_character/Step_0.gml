/// @description Insert description here
// You can write your code in this editor

if (!isAttack)
	scr_character_move();


// Punch attack
if (keyboard_check(ord("J")) and !isAttack)
{	
	isAttack = true;
	sprite_index = spr_character_punch;
	image_index = 0;
}

