//Shortcuts for keypresses
MOVELEFT = keyboard_check(ord("A"));
MOVERIGHT = keyboard_check(ord("D"));

//Move Player
if (MOVELEFT && x > sprite_width/2)
{
	if (isJumping) 
	{
		hspd = -jumpMovSpeed;	
	}
	else 
	{
		hspd = -movSpeed;
		sprite_index = sprMove;
	}
	m_playerDirection = PlayerDirection.LEFT;
	image_xscale = -1;
}
else if (MOVERIGHT && x < room_width - sprite_width/2)
{
	if (isJumping) 
	{
		hspd = jumpMovSpeed;
	}
	else 
	{
		hspd = movSpeed;
		sprite_index = sprMove;	
	}
	m_playerDirection = PlayerDirection.RIGHT;
	image_xscale = 1;
}
else
{
	if (!isAttack and !isJumping) sprite_index = sprIdle;
	hspd = 0;
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
		image_index = 0;
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

x += hspd;
y += vspd;