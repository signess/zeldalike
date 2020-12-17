function PlayerActOutAnimation(_sprite, _endScript)
{
	//Carry out an animation and optionnaly carry out a script when the animation ends
	state = PlayerStateAct;
	sprite_index = _sprite;
	if(!is_undefined(_endScript)) animationEndScript = _endScript;
	localFrame = 0;
	image_index = 0;
	PlayerAnimateSprite();
}