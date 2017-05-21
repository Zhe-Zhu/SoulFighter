/// @description Insert description here
// You can write your code in this editor

if (isAttack)
{
	isAttack = false;
	sprite_index = spr_character_idle;
	attackIndex = 0;
}
else if (sprite_index == spr_character_jump)
{
	sprite_index = spr_character_idle;
}
