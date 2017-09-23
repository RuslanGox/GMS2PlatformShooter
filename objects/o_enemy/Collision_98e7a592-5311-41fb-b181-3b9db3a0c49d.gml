/// @description Take damage
health_ -= 1;
instance_destroy(other);
state_ = HIT_;
var dir = other.direction;
hspeed_push_ = lengthdir_x(8, dir);
vspeed_push_ = lengthdir_y(8, dir);
