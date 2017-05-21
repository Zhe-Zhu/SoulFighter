/// @description Insert description here
// You can write your code in this editor

if (!isAttack)
	scr_character_move();


// Punch attack
if (keyboard_check(ord("J")) and !isAttack)
{	
	isAttack = true;
	sprite_index = sprPunch;
	image_index = 0;
	
	with instance_create_depth(x, y, -1, obj_punch_hitbox){
		x = other.x;
		y = other.y;
		direction = other.direction;
		speed = other.speed;
	}

}

if (keyboard_check(ord("K")) and !isAttack)
{
	isAttack = true;	
	sprite_index = comboPunch[combo];
	image_index = 0;
	
	combo = (combo+1)%comboMax;
	
	alarm[1] = 60; // And this to init the combo
}

