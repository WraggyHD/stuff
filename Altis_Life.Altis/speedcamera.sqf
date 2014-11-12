private ["_veh","_speedCam1","_dis1"];

_veh = vehicle player;
_speedCam1 = getMarkerPos "speed_cam_1";
_dis = 60;

switch(playerSide) do
{
	case civilian:
	{
		while {true} do
		{
			if (alive player) then
			{
				if (_speedCam1 distance player < _dis) then
				{
					if (speed _veh > 160) then
					{
						hint "It works!";
						[[getPlayerUID player,profileName,"569"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
						sleep 3;						
					}
				};
			};
		
		};
	};
};