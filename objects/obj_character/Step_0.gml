/// @description Insert description here
// You can write your code in this editor

//Shortcuts for keypresses
MOVELEFT = keyboard_check(ord("A"));
MOVERIGHT = keyboard_check(ord("D"));

//Move Player
if (MOVELEFT && x > sprite_width/2)
{
    x -= playerSpeed;
    m_playerDirection = PlayerDirection.LEFT;
	sprite_index = spr_character_move;
	image_xscale = -1;
}
else if (MOVERIGHT && x < room_width - sprite_width/2)
{
    x += playerSpeed;
    m_playerDirection = PlayerDirection.RIGHT;
	sprite_index = spr_character_move;
	image_xscale = 1;
}
else
{
	sprite_index = spr_character_idle;
}