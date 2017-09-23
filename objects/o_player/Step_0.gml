/// @description Player Movement
// Check for death
if health_ <= 0 {
	instance_destroy();
}

var hinput = keyboard_check(vk_right) - keyboard_check(vk_left);

if hinput != 0 {
	speed_[h] += hinput * acceleration_;
	speed_[h] = clamp(speed_[h], -max_speed_, max_speed_);
} else {
	speed_[h] = lerp(speed_[h], 0, friction_);
}

if !place_meeting(x, y+1, o_solid){
	speed_[v] += gravity_;
} else {
	if keyboard_check(vk_up){
		speed_[v] = jump_height_;
		x_scale_ = image_xscale * .8;
		y_scale_ = image_yscale * 1.4;
	}
}

move(speed_);

// Check for landing
if place_meeting(x, y+1, o_solid) && !place_meeting(x, yprevious+1, o_solid){
	x_scale_ = image_xscale * 1.4;
	y_scale_ = image_yscale * .8;
}

// Move back to normal scale
x_scale_ = lerp(x_scale_, image_xscale, .1);
y_scale_ = lerp(y_scale_, image_yscale, .1);