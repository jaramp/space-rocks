if keyboard_check(vk_up)
{
	motion_add(image_angle, 0.1)
}
else if keyboard_check(vk_down)
{
	speed = max(0, speed - 0.2)
}

current_direction = turn_direction
if keyboard_check(vk_left) and keyboard_check(vk_right)
{
	current_direction = -turn_direction
}
else
{
	turn_direction = keyboard_check(vk_left) - keyboard_check(vk_right)
	current_direction = turn_direction
}

image_angle += current_direction * turn_speed
move_wrap(true, true, 25)

if mouse_check_button_pressed(mb_left) or keyboard_check_pressed(vk_space)
{
    instance_create_layer(x, y, "Instances", obj_bullet)
}