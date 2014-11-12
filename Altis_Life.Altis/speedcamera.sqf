private ["_veh","_speedCam16001","_speedCam16002","_speedCam16003","_speedCam16004","_speedCam16005","_speedCam16006","_speedCam16007","_speedCam16008","_speedCam16009","_speedCam16010","_dis"];

_veh = vehicle player;
_dis = 60;

_speedCam16001 = getMarkerPos "speed_cam_160_1";
_speedCam16002 = getMarkerPos "speed_cam_160_2";
_speedCam16003 = getMarkerPos "speed_cam_160_3";
_speedCam16004 = getMarkerPos "speed_cam_160_4";
_speedCam16005 = getMarkerPos "speed_cam_160_5";
_speedCam16006 = getMarkerPos "speed_cam_160_6";
_speedCam16007 = getMarkerPos "speed_cam_160_7";
_speedCam16008 = getMarkerPos "speed_cam_160_8";
_speedCam16009 = getMarkerPos "speed_cam_160_9";
_speedCam16010 = getMarkerPos "speed_cam_160_10";

switch(playerSide) do
{
	case civilian:
	{
		while {true} do
		{
			if (alive player) then
			{
				if (_speedCam16001 distance player < _dis | _speedCam16002 distance player < _dis | _speedCam16002 distance player < _dis |) then
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