function PlayerThrow(){
	with(global.iLifted)
	{
		lifted = false;
		persistent = false;
		thrown = true;
		z = CARRY_HEIGHT;
		throwPeakHeight = z + 10;
		throwDistance = entityThrowDistance;
		throwDistanceTravelled = 0;
		throwStartPercent = (CARRY_HEIGHT / throwPeakHeight) * 0.5; 
		throwPercent = throwStartPercent;
		direction = other.direction;
		xstart = x;
		ystart = y;
		
	}
	PlayerActOutAnimation(sPlayerLift);
	global.iLifted = noone;
	spriteIdle = sPlayer;
	spriteRun = sPlayerRun
}