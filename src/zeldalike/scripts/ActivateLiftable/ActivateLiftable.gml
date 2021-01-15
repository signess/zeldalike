function ActivateLiftable(_id){
	if(global.iLifted == noone)
	{
		PlayerActOutAnimation(sPlayerLift);
		
		spriteIdle = sPlayerCarrying;
		spriteRun = sPlayerCarryingRun;
		
		global.iLifted = _id;
		with(global.iLifted)
		{
			lifted = true;
			persistent = true;
		}
	}
}