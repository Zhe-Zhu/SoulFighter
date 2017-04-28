/// @description Insert description here
// You can write your code in this editor

if (sprite_index == spr_character_punch)
{
	isAttack = false;
	sprite_index = spr_character_idle;
}
else if (sprite_index == spr_character_jump)
{
	sprite_index = spr_character_idle;
}
