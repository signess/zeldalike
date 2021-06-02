/// @description Drop List
event_inherited();
entityDropList = choose
(
	[oBombDrop],
	[oArrowDrop],
	[oCoin],
	[oCoin, oCoin],
	[oCoin],
	-1,
	-1,
)