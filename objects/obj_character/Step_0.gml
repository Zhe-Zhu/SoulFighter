/// @description Insert description here
// You can write your code in this editor

//Shortcuts for keypresses
MOVELEFT = keyboard_check(ord("A"));
MOVERIGHT = keyboard_check(ord("D"));

//Move Player
if(!isJumping)
{
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
}

// Punch attack
if (keyboard_check(ord("J")))
{
	sprite_index = spr_character_punch;

}

// Check for ground
if (place_meeting(x, y+1, obj_ground))
{
	vspd = 0;
	isJumping = false;
	// Jumping
	if (keyboard_check(vk_space))
	{
		vspd = -jspd;
		sprite_index = spr_character_jump;
		isJumping = true;
	}
}
else
	// Gravity
{
		if (vspd < 10)
		{
			vspd += grav;
		}
}

y += vspd;