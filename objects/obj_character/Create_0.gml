/// @description Insert description here
// You can write your code in this editor

playerSpeed = 5;

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