// Inherit the parent event
event_inherited();

entityDropList = choose
(
	[oBombDrop],
	[oCoin, oCoin],
	[oCoin],
	[oArrowDrop],
	-1,
	-1
);
