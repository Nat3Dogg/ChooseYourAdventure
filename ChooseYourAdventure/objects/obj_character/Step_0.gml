// Get player input

if (hascontrol)
{
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space) || keyboard_check(ord("W"));

	if (key_left) || (key_right) || (key_jump)
	{
		 controller = 0;
	}

	if (abs(gamepad_axis_value(0, gp_axislh)) > 0.2)
	{
		key_left = abs(min(gamepad_axis_value(0, gp_axislh),0));
		key_right = max(gamepad_axis_value(0, gp_axislh),0);
		controller = 1;
	}

	if (gamepad_button_check_pressed(0, gp_face1))
	{
		key_jump = 1;
		controller = 1;	
	}
}
else 
{
	key_left = 0;
	key_right = 0;
	key_jump = 0;
}
// Super nice way to move player
// Calculate Movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

// If on the floor
// This controls the jump height
if (place_meeting(x, y+1, obj_wall)) && (key_jump)
{
	vsp = -8;
}

// Horizontal Collision
if (place_meeting(x+hsp, y, obj_wall))
{
	while (!place_meeting(x+sign(hsp), y, obj_wall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp;

// Vertical Collision
if (place_meeting(x, y+vsp, obj_wall))
{
	while (!place_meeting(x, y+sign(vsp), obj_wall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;