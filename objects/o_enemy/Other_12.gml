/// @description Hit State

// Death
if health_ <= 0 {
	instance_destroy();
}
	
move(speed_push_);
speed_push_[h] = lerp(speed_push_[h], 0, .1);
speed_push_[v] = lerp(speed_push_[v], 0, .1);



if point_distance(0, 0, speed_push_[h], speed_push_[v]) < 1 {
	state_ = MOVEMENT_;
}
