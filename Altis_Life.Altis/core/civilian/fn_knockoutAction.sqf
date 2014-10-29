/*
	File: fn_knockoutAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Knocks out the target.
*/
private["_target"];
_target = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

//Error checks
if(isNull _target) exitWith {};
if(!isPlayer _target) exitWith {};
if(player distance _target > 4) exitWith {};
if(player distance (getMarkerPos "safe_zone_1") < 300) exitWith {};
if(player distance (getMarkerPos "safe_zone_2") < 150) exitWith {};
if(player distance (getMarkerPos "safe_zone_3") < 200) exitWith {};
if(player distance (getMarkerPos "safe_zone_4") < 150) exitWith {};
if(player distance (getMarkerPos "safe_zone_5") < 150) exitWith {};
life_knockout = true;
[[player,"AwopPercMstpSgthWrflDnon_End2"],"life_fnc_animSync",nil,false] spawn life_fnc_MP;
sleep 0.08;
[[_target,profileName],"life_fnc_knockedOut",_target,false] spawn life_fnc_MP;

sleep 3;
life_knockout = false;