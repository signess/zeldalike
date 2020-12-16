/// @desc Start()
state = PlayerStateFree;
lastState = state;

collisionMap = layer_tilemap_get_id(layer_get_id("Col"));

image_speed = 0;
hSpeed = 0;
vSpeed = 0;
speedWalk = 2.0;
speedRoll = 3.0;
distanceRoll = 72;
distanceBonk = 20;
distanceBonkHeight = 6;
speedBonk = 1.5;
z = 0;

spriteRoll = sPlayerRoll;
spriteRun = sPlayerRun;                      
spriteIdle = sPlayer;
localFrame = 0;