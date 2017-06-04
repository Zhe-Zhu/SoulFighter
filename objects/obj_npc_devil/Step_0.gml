/// @description 
// You can write your code in this editor

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

// Attack range - attend to attack player
if (abs(deltaX) <= attRange and current_time - preAttTime >= attCD and npcStatus == npc_status.walk)
{
	npcStatus = npc_status.attack;
	image_index = 0;
}


// Attack status
if (npcStatus == npc_status.attack)
{
	sprite_index = spr_npc_devil_attack;
	if (deltaX < 0 )
	{
		image_xscale = 1;
	}
	else
	{
		image_xscale = -1;
	}
	
	// Create hithox
	if (image_index == 1)
	{
		with instance_create_depth(x, y, -1, obj_npc_devil_hitbox)
		{
			x = other.x;
			y = other.y;
			direction = other.direction;
			speed = other.speed;
			image_xscale = other.image_xscale;
			damage = other.atk;
		}
	
	} 
	
	
	if (image_index == image_number - 1)
	{
		npcStatus = npc_status.walk;
		preAttTime = current_time;
	}
}

// Alert circle - follow player if it enters into circle
if (abs(deltaX) <= radius and npcStatus == npc_status.walk)
{
	// Move to player
	if (deltaX >= attRange)
	{
		x += moveSpeed;
	}
	else if (deltaX <= -attRange)
	{
		x += -moveSpeed;
	}
}

// Update sprite
if (npcStatus == npc_status.walk)
{
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
}

if (npcStatus == npc_status.dead)
{
	sprite_index = spr_npc_devil_dead;
	if (image_index == image_number - 1)
	{
		instance_destroy();
	}
}

if (npcStatus == npc_status.stun)
{
	sprite_index = spr_npc_devil_stun;
	image_speed = 0;
}