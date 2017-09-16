/// @description Player Movement
var hinput = keyboard_check(vk_right) - keyboard_check(vk_left);

if hinput != 0 {
	hspeed_ += hinput * acceleration_;
	hspeed_ = clamp(hspeed_, -max_hspeed_, max_hspeed_);
} else {
	hspeed_ = lerp(hspeed_, 0, friction_);
}

if !place_meeting(x, y+1, o_solid){
	vspeed_ += gravity_;
} else {
	if keyboard_check(vk_up){
		vspeed_ = jump_height_;
	}
}

if place_meeting(x + hspeed_, y, o_solid){
	while !place_meeting(x+sign(hspeed_),y,o_solid) {
		x += sign(hspeed_);
	}
	hspeed_ = 0;
}

x += hspeed_;

if place_meeting(x, y + vspeed_, o_solid){
	while !place_meeting(x, y+sign(vspeed_),o_solid) {
		y += sign(vspeed_);
	}
	vspeed_ = 0;
}

y += vspeed_;