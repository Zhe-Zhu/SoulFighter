// Move setting
movSpeed = 5;
jumpMovSpeed = 2;

grav = 1;
jspd = 12;
hspd = 0;
vspd = 0;

isJumping = false;
isAttack = false;

// Sprite setting
sprIdle = spr_kyo_idle;
sprMove = spr_kyo_move;
sprPunch = spr_kyo_punch_light;
sprDoge = spr_kyo_dodge;
sprJump = spr_kyo_jump;

// Dodge
isDodge = false;
dodgeSpeed = 30;
dodgeTime = 5;
enum PlayerDirection{
    LEFT,
    RIGHT
}
m_playerDirection = PlayerDirection.RIGHT;