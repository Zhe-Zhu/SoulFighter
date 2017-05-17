/// @description Insert description here
// You can write your code in this editor

if (!isAttack)
	scr_character_move();


// Punch attack
if (keyboard_check(ord("J")) and !isAttack)
{	
	isAttack = true;
	sprite_index = spr_character_punch;
	image_index = 0;
	
	with instance_create_depth(x, y, -1, obj_punch_hitbox){
		x = other.x;
		y = other.y;
		direction = other.direction;
		speed = other.speed;
	}

}

if (keyboard_check(ord("K")))
{
	isAttack = true;	
	switch(attackIndex)
	{
		case 0:
			sprite_index = spr_character_sword_attack_1;
			attackIndex += 1;
			break;
		case 1:
			sprite_index = spr_character_sword_attack_2;
			attackIndex += 1;
			break;
		case 2:
			sprite_index = spr_character_sword_attack_3;
			attackIndex = 0;
			break;
	}
	image_index = 0;
}

