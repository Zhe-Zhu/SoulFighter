/// @description 
// You can write your code in this editor

player = instance_find(obj_character_kyo, 0);
moveSpeed = 5;

// Alert cirlce
radius = 1000;

// Attack range
attRange = 70;
attCD = 1000; // millisecond
preAttTime = 0;

// Character status
enum npc_status
{
	walk,
	attack,
	dead,
	stun,
}

npcStatus = npc_status.walk;

// Attributes
hp = 100;
stunTime = 0.5; // second
atk = 20;