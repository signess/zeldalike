function SlimeAttack(){
	//How fast to move
	var _spd = enemySpeed;
	
	//Wind up frames
	if (image_index < 2) _spd = 0;
	
	//Freeze animation while in mid-air and also after landing finishes
	if(floor(image_index) == 3) or (floor(image_index) == 5) image_speed = 0;
	
	//How far we have to jump
	var _distanceToGo = point_distance(x, y, xTo, yTo);
	
	//begin landing end of the animatiopn once we're nearly done
	if(_distanceToGo < 4) and (image_index < 5) image_speed = 1.0;
	
	//Move
	if(_distanceToGo > _spd)
	{
		dir = point_direction(x, y, xTo, yTo);
		hSpeed = lengthdir_x(_spd, dir);
		vSpeed = lengthdir_y(_spd, dir);
		if(hSpeed != 0) image_xscale = sign(hSpeed);
		
		//Commit to move and stop moving if we hit a wall
		if (EnemyTileCollision() == true)
		{
			xTo = x;
			yTo = y;
		}
	}
	else
	{
		x = xTo;
		y = yTo;
		if(floor(image_index) == 5)
		{
			stateTarget = ENEMYSTATE.CHASE;
			stateWaitDuration = 15;
			state = ENEMYSTATE.WAIT;
		}
	}
	
}