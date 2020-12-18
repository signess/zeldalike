function HurtPlayer(_direction, _force, _damage)
{
	if(oPlayer.invulnerable <= 0)
	{
		global.playerHealth = max(0, global.playerHealth - _damage);
		
		if(global.playerHealth > 0)
		{
			with(oPlayer)
			{
				state = PlayerStateBonk;
				direction = _direction - 180;
				moveDistanceRemaining = _force;
				ScreenShake(2, 8);
				flash = 0.7;
				invulnerable = 60;
				flashShader = shRedFlash;
			}
		}
		else
		{
			//Kill the player	
		}
	}
}