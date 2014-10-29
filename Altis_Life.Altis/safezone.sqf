private ["_eh1","_inArea","_zone1","_zone2","_zone3","_zone4","_zone5","_dis1","_dis2","_dis3","_dis4","_dis5"];

_zone1 = getMarkerPos "safe_zone_1"; // MARKERS FOR SAFEZONE
_zone2 = getMarkerPos "safe_zone_2";
_zone3 = getMarkerPos "safe_zone_3";
_zone4 = getMarkerPos "safe_zone_4";
_zone5 = getMarkerPos "safe_zone_5";
_dis1 = 600;  // DISTANCE SAFE ZONE                         
_dis2 = 300;
_dis3 = 400;
_dis4 = 300;
_dis5 = 300;
_inArea = false;

switch (playerSide) do
{
	case west:
	{
		while {true} do
		{
			if (alive player) then
			{	
				if (((_zone1 distance player < _dis1) || (_zone2 distance player < _dis2) || (_zone3 distance player < _dis3) || (_zone4 distance player < _dis4) || (_zone5 distance player < _dis5)) && (!_inArea)) then 
				{     
					_inArea = true;
					hint "You have entered a safezone!";
					player allowDamage false;
				};

				if (((_zone1 distance player > _dis1) && (_zone2 distance player > _dis2) && (_zone3 distance player > _dis3) && (_zone4 distance player > _dis4) &&(_zone5 distance player > _dis5)) && (_inArea)) then 
				{    
					_inArea = false;
					hint "You have left a safezone!";
					player allowDamage true;
				};
     
			};
		};
	
	};
	
	case civilian:
	{
		while {true} do
		{
			if (alive player) then
			{	
				if (((_zone1 distance player < _dis1) || (_zone2 distance player < _dis2) || (_zone3 distance player < _dis3) || (_zone4 distance player < _dis4) || (_zone5 distance player < _dis5)) && (!_inArea)) then 
				{     
					_eh1 = player addEventHandler ["fired", {deleteVehicle (_this select 6);}];
					_inArea = true;
					hint "You have entered a safezone!";
					player allowDamage false;
				};

				if (((_zone1 distance player > _dis1) && (_zone2 distance player > _dis2) && (_zone3 distance player > _dis3) && (_zone4 distance player > _dis4) &&(_zone5 distance player > _dis5)) && (_inArea)) then 
				{    
					player removeEventHandler ["fired", _eh1];
					_inArea = false;
					hint "You have left a safezone!";
					player allowDamage true;
				};
     
			};
		};
	
	};
	
	case independent:
	{
		while {true} do
		{
			if (alive player) then
			{	
				if (((_zone1 distance player < _dis1) || (_zone2 distance player < _dis2) || (_zone3 distance player < _dis3) || (_zone4 distance player < _dis4) || (_zone5 distance player < _dis5)) && (!_inArea)) then 
				{     
					_eh1 = player addEventHandler ["fired", {deleteVehicle (_this select 6);}];
					_inArea = true;
					hint "You have entered a safezone!";
					player allowDamage false;
				};

				if (((_zone1 distance player > _dis1) && (_zone2 distance player > _dis2) && (_zone3 distance player > _dis3) && (_zone4 distance player > _dis4) &&(_zone5 distance player > _dis5)) && (_inArea)) then 
				{    
					player removeEventHandler ["fired", _eh1];
					_inArea = false;
					hint "You have left a safezone!";
					player allowDamage true;
				};
     
			};
		};
	
	};
	
	case east:
	{
		while {true} do
		{
			if (alive player) then
			{	
				if (((_zone1 distance player < _dis1) || (_zone2 distance player < _dis2) || (_zone3 distance player < _dis3) || (_zone4 distance player < _dis4) || (_zone5 distance player < _dis5)) && (!_inArea)) then 
				{     
					_eh1 = player addEventHandler ["fired", {deleteVehicle (_this select 6);}];
					_inArea = true;
					hint "You have left a safezone!";
					player allowDamage false;
				};

				if (((_zone1 distance player > _dis1) && (_zone2 distance player > _dis2) && (_zone3 distance player > _dis3) && (_zone4 distance player > _dis4) &&(_zone5 distance player > _dis5)) && (_inArea)) then 
				{    
					player removeEventHandler ["fired", _eh1];
					_inArea = false;
					hint "You have left a safezone!";
					player allowDamage true;
				};
     
			};
		};
	
	};
	sleep 3;
};