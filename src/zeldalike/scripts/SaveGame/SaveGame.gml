function SaveGame()
{
	//Make save array
	var _saveData = array_create(0);
	
	//for every instance, create a struct annd add it to the array
	with(oPlayer)
	{
		var _saveEntity = 
		{
			obj : object_get_name(object_index),
			y : y,
			x : x,
			image_index : image_index,
			dir : direction
		}
		array_push(_saveData, _saveEntity);
	}
	
	with(oGame)
	{
		var _saveEntity =
		{
			obj : object_get_name(object_index)
		}
		array_push(_saveData, _saveEntity);
	}
	
	var _string = json_stringify(_saveData);
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, "savedgame.save");
	buffer_delete(_buffer);
	
	show_debug_message("Game saved! " + _string);
	
}

function LoadGame()
{
	with(oGame) instance_destroy();
	if(file_exists("savedgame.save"))
	{
		var _buffer = buffer_load("savedgame.save");
		var _string = buffer_read(_buffer, buffer_string);
		buffer_delete(_buffer);
		
		var _loadData = json_parse(_string);
		
		while (array_length(_loadData) > 0)
		{
			var _loadEntity = array_pop(_loadData);
			with(instance_create_layer(0, 0, layer, asset_get_index(_loadEntity.obj)))
			{
				x = _loadEntity.x;
				y = _loadEntity.y;
				direction = _loadEntity.direction;
			}
		}
		show_debug_message("game loaded!");
	}
}