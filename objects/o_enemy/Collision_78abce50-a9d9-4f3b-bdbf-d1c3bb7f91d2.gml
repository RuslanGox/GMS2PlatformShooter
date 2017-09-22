 /// @description soft collide
var dir = point_direction(other.x,other.y, x, y);
hspeed_push_ += lengthdir_x(.5, dir);
vspeed_push_ += lengthdir_y(.5, dir);

