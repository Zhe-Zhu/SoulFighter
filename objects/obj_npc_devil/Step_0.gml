/// @description Insert description here
// You can write your code in this editor

var player = instance_find(obj_character_kyo, 0);
var moveSpeed = 5;

var deltaX = player.x - x;

// Gravity
// Check for ground

var vspd = 0;
var grav = 1;
if (place_meeting(x, y+1, obj_ground))
{
	vspd = 0;
}
else
	// Add Gravity
{
	if (vspd < 10)
	{
		vspd += grav;
	}
}

y += vspd;

// Alert circle - follow player if it enters into circle
if (abs(deltaX) <= radius)
{
	// Move to player
	if (deltaX >= moveSpeed)
	{
		x += moveSpeed;
	}
	else if (deltaX <= -moveSpeed)
	{
		x += -moveSpeed;
	}
	else
	{
		x += deltaX;
	}
}

// Update sprite
if (x == xprevious)
{
	sprite_index = spr_npc_devil_idle;
}
else if (x > xprevious)
{
	sprite_index = spr_npc_devil_walk;
	image_xscale = -1;
}
else if (x < xprevious)
{
	sprite_index = spr_npc_devil_walk;
	image_xscale = 1;
}