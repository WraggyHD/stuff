private ["_veh","_speedCam1","_dis1"]

_veh = vehicle player
_speedCam1 = getMarkerPos "speed_cam_1";
_dis1 = 50;

switch (playerSide) do
{
	case civilian:
	{
		while {true} do
				if (alive player) then
				{
					if (_speedCam1 distance player < _dis1) then
					{
						if (vehicle player != player) then
						{
							if (speed _veh > 160) then
							hint "Slow Down Mother Fucker !";
							sleep 3;
						}
					}
				}
			
	}
	
	case west:
	{
	
	};

	case independent:
	{
	
	};
	
	case east:
	{
	
	};


}



