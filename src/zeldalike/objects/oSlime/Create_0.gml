/// @description Start();
// Inherit the parent event
event_inherited();

state = ENEMYSTATE.WANDER;

//Enemy Sprites
sprMove = sSlime;
sprAttack = sSlimeAttack;

//Enemy Scripts
enemyScript[ENEMYSTATE.WANDER] = SlimeWander;
enemyScript[ENEMYSTATE.CHASE] = SlimeChase;
enemyScript[ENEMYSTATE.ATTACK] = SlimeAttack;