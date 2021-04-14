/// @desc Update()            
//Get Player Input
keyLeft = keyboard_check(vk_left) or keyboard_check(ord("A"));
keyRight = keyboard_check(vk_right) or keyboard_check(ord("D"));
keyUp = keyboard_check(vk_up) or keyboard_check(ord("W"));
keyDown = keyboard_check(vk_down) or keyboard_check(ord("S"));
keyActivate = keyboard_check_pressed(vk_space)
keyAttack = keyboard_check_pressed(vk_shift) or mouse_check_button_pressed(mb_left);
keyItem = keyboard_check_pressed(vk_control) or mouse_check_button_pressed(mb_right);
keyItemSelectUp = keyboard_check_pressed(ord("E"));
keyItemSelectDown = keyboard_check_pressed(ord("Q"));

inputDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp);
inputMagnitude = (keyRight - keyLeft != 0) or (keyDown - keyUp != 0);

if(!global.gamePaused)
{
	script_execute(state);
	invulnerable = max (invulnerable - 1, 0);
	flash = max (flash - 0.05, 0);
}
depth = -bbox_bottom;