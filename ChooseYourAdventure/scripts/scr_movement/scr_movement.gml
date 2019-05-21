// VARIABLES

left = keyboard_check_pressed(vk_left)
right = keyboard_check_pressed(vk_right)
up = keyboard_check_pressed(vk_up)
down = keyboard_check_pressed(vk_down)
left_stop = keyboard_check_released(vk_left)
right_stop = keyboard_check_released(vk_right)
up_stop = keyboard_check_released(vk_up)
down_stop = keyboard_check_released(vk_down)


// MOVEMENT
// MOVE RIGHT
if right{
	direction = 360
	speed = 8
}
// STOP MOVING RIGHT
if right_stop{
	speed = 0
}
// MOVE LEFT
if left{
	direction = 180
	speed = 8
}
// STOP MOVING LEFT
if left_stop{
	speed = 0
}
// MOVE UP
if up{
	direction = 90
	speed = 8
}
// STOP MOVING UP
if up_stop{
	speed = 0
}
// MOVE DOWN
if down{
	direction = 270
	speed = 8
}
// STOP MOVING DOWN
if down_stop{
	speed = 0
}


