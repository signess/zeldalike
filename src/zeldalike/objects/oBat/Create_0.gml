// Inherit the parent event
event_inherited();

state = ENEMYSTATE.WANDER;

//Enemy Sprites
sprMove = sBat;
sprAttack = sBat;
sprDie = sBatDie;
sprHurt = sBatHurt;

//Enemy Scripts
enemyScript[ENEMYSTATE.WANDER] = BatWander;
enemyScript[ENEMYSTATE.CHASE] = BatChase;
enemyScript[ENEMYSTATE.ATTACK] = -1;
enemyScript[ENEMYSTATE.HURT] = SlimeHurt;
enemyScript[ENEMYSTATE.DIE] = SlimeDie;


//Drop List
entityDropList = choose
(
	[oCoin],
	-1,
	[oBombDrop],
	-1,
	-1,
	-1,
);