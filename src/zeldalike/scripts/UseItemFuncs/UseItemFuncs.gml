function UseItemBomb()
{
	if(global.playerAmmo[ITEM.BOMB] > 0) and (global.iLifted == noone)
	{
		global.playerAmmo[ITEM.BOMB]--;
		var _bomb = instance_create_layer(x, y, "Instances", oBomb);
		ActivateLiftable(_bomb);
	}
}

function UseItemBow()
{
	
}

function UseItemHook()
{
	
}