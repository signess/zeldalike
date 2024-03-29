 /// @desc Initialise & Globals
randomize();

global.gamePaused = false;
global.textSpeed = .75;
global.targetRoom = -1;
global.targetX = -1;
global.targetY = -1;
global.targetDirection = -1;


//PLAYER VARIABLES
global.playerHealthMax = 3;
global.playerHealth = global.playerHealthMax;
global.playerMoney = 0;

//Items
global.playerHasAnyItems = false;
global.playerEquipped = ITEM.BOMB;
global.playerAmmo = array_create(ITEM.TYPE_COUNT, -1);
global.playerItemUnlocked = array_create(ITEM.TYPE_COUNT, false);
global.playerAmmo[ITEM.BOMB] = 0;
global.playerAmmo[ITEM.BOW] = 0;

global.playerHasAnyItems = true;

global.playerItemUnlocked[ITEM.BOMB] = true;
global.playerAmmo[ITEM.BOMB] = 5;

global.playerItemUnlocked[ITEM.BOW] = true;
global.playerAmmo[ITEM.BOW] = 15;

global.playerItemUnlocked[ITEM.HOOK] = true;

//Quests
global.questStatus = ds_map_create();
global.questStatus[? "TheHatQuest"] = 0;

global.iLifted = noone;
global.iCamera = instance_create_layer(0, 0, layer, oCamera);
global.iUI = instance_create_layer(0, 0, layer, oUI);

surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H);

room_goto(ROOM_START); 