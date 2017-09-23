 /// @description soft collide
var dir = point_direction(other.x,other.y, x, y);
speed_push_[h] += lengthdir_x(.5, dir);
speed_push_[v] += lengthdir_y(.5, dir);

