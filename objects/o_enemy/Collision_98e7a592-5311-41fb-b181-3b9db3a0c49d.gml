/// @description Take damage
health_ -= 1;
instance_destroy(other);
state_ = HIT_;
var dir = other.direction;
speed_push_[h] = lengthdir_x(8, dir);
speed_push_[v] = lengthdir_y(8, dir);
