/// @description Initialize the enemy
hspeed_ = 0;
vspeed_ = 0;
speed_ = 1;
hspeed_push_ = 0;
vspeed_push_ = 0;
health_ = 4;


// Bullet cooldwon
bullet_cooldown_ =  room_speed/2;
alarm[0] = bullet_cooldown_;

// States
MOVEMENT_ = 0;
ATTACK_ = 1;
HIT_ = 2;

state_ = MOVEMENT_;
