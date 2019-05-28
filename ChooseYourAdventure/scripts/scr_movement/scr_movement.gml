// VARIABLES
hsp = 0
vsp = 0
grv = 1.5  // 0.3
walksp = 4
controller = 0
hascontrol = true
// GET PLAYER INPUT

if (hascontrol){
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A"))
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D"))
	key_jump = keyboard_check(vk_space) || keyboard_check(ord("W"))
	
	if(key_left) || (key_right) || (key_jump){
		controller = 0
	}
	if (abs(gamepad_axis_value(0, gp_axislh)) > 0.2){
		key_left = abs(min(gamepad_axis_value(0,gp_axislh),0))
		key_right = max(gamepad_axis_value(0,gp_axislh),0)
		controller = 1
	}
	if(gamepad_button_check_pressed(0,gp_face1)){
		key_jump = 1
		controller = 1
	}
}
else{
	key_left = 0
	key_right = 0
	key_jump = 0
}
// SUPER NICE WAY TO MOVE PLAYER
// CALCULATE MOVEMENT
var move = key_right - key_left
hsp = move * walksp
vsp = vsp + grv
// IF ON THE FLOOR
// THIS CONTROLS THE JUMP HEIGHT
if (place_meeting(x,y+1,oWall)) && (key_jump){
	vsp = -130
}
// HORIZONTAL COLLISION
if (place_meeting(x+hsp,y,oWall)){
	while (!place_meeting(x+sign(hsp),y,oWall)){
		x = x+sign(hsp)
	}
	hsp = 0
}
x = x+hsp
// VERTICAL COLLISION
if (place_meeting(x,y+vsp,oWall)){
	while(!place_meeting(x,y+sign(vsp),oWall)){
		y = y + sign(vsp)
	}
	vsp = 0
}
y = y+vsp

/*
// VARIABLES

left = keyboard_check(vk_left)
right = keyboard_check(vk_right)
up = keyboard_check(vk_up)
down = keyboard_check(vk_down)

left_stop = keyboard_check_released(vk_left)
right_stop = keyboard_check_released(vk_right)
up_stop = keyboard_check_released(vk_up)
down_stop = keyboard_check_released(vk_down)



// MOVEMENT
// MOVE RIGHT
if right{
	direction = 360
	speed = 4
}
// STOP MOVING RIGHT
if right_stop{
	speed = 0
}
// MOVE DIAGNOL @ 135 DEGREES
if up and left{
	direction = 135
	speed = 4
}
// STOP MOVING DIAGNOL @ 135 DEGREES
if up_stop and left_stop{
	speed = 0
}
// MOVE DIAGNOL @ 45 DEGREES
if right and up{
	direction = 45
	speed = 4
}
// STOP MOVING DIAGNOL @ 45 DEGREES
if right_stop and up_stop{
	speed = 0
}
// MOVE DIAGNOL @ 315 DEGREES
if right and down{
	direction = 315
	speed = 4
}
// STOP MOVING DIAGNOL @ 315 DEGREES
if right_stop and down_stop{
	speed = 0
}
// MOVE DIAGNOL @ 225 DEGREES
if down and left{
	direction = 225
	speed = 4
}
// STOP MOVING DIAGNOL @ 225 DEGREES
if down_stop and left_stop{
	speed = 0
}
// MOVE LEFT
if left{
	direction = 180
	speed = 4
}
// STOP MOVING LEFT
if left_stop{
	speed = 0
}
// MOVE UP
if up{
	direction = 90
	speed = 4
}
// STOP MOVING UP
if up_stop{
	speed = 0
}
// MOVE DOWN
if down{
	direction = 270
	speed = 4
}
// STOP MOVING DOWN
if down_stop{
	speed = 0
}
*/

