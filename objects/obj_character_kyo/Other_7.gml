/// @description Insert description here
// You can write your code in this editor

if (isAttack)
{
	isAttack = false;
	sprite_index = sprIdle;
	attackIndex = 0;
}
else if (sprite_index == sprJump)
{
	sprite_index = sprIdle;
}
