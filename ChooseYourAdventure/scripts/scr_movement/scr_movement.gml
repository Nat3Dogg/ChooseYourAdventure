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


