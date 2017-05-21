
movSpeed = 5;
jumpMovSpeed = 2;

grav = 1;
jspd = 12;
hspd = 0;
vspd = 0;

// Store player direction
enum PlayerDirection{
    LEFT,
    RIGHT
}
m_playerDirection = PlayerDirection.RIGHT;

isJumping = false;
isAttack = false;

// Sprite setting
sprIdle = spr_character_idle;
sprMove = spr_character_move;
sprPunch = spr_character_punch;

// Combo
combo = 0;
comboMax = 3;
comboPunch[0] = spr_character_punch_1;
comboPunch[1] = spr_character_punch_2;
comboPunch[2] = spr_character_punch_3;