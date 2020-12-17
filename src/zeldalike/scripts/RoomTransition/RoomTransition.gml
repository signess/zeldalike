function RoomTransition(_type, _targetroom){
	if(!instance_exists(oTransition))
	{
		with (instance_create_depth(0, 0, -999, oTransition))
		{
			type = _type;
			target = _targetroom;
		}
	}else show_debug_message("Trying to transition while transition is happening!");
}