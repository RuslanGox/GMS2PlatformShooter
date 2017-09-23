/// @description Movement State

// Move force
if instance_exists(o_player){
	var dir = point_direction(x,y, o_player.x, o_player.y);
	hspeed_ = lengthdir_x(speed_, dir);
	vspeed_ = lengthdir_y(speed_, dir);
	move();

	// Push force
	move_push();
	if !place_meeting(x,y,o_enemy) { // friction
		hspeed_push_ = lerp(hspeed_push_, 0, .1);
		vspeed_push_ = lerp(vspeed_push_, 0, .1);
	}

	// Death
	if health_ <= 0 {
		instance_destroy();
	}

	if distance_to_object(o_player) < 48 {
		state_ = ATTACK_;
	}
}

