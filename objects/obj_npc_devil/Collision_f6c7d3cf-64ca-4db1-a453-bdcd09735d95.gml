/// @description 
// You can write your code in this editor

hp -= other.damage;
if (hp <= 0 and npcStatus != npc_status.dead)
{
	npcStatus = npc_status.dead;
	image_index = 0;
}

if (npcStatus == npc_status.walk or npcStatus == npc_status.stun)
{
	npcStatus = npc_status.stun;
	alarm[0] = stunTime * room_speed;
}