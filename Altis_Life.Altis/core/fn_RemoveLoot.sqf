/*
Author: Adriano
fn_RemoveLoot.sqf
remove loot of vehicles?
*/

private["_vlist","_vehicle","_all"];
_vehicle =  [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
_all = typeOf _vehicle;
if(isNull _all) exitWith {}
_vlist =
["B_Slingload_01_Cargo_F",
"B_Slingload_01_Ammo_F",
"B_Slingload_01_Fuel_F",
"B_Slingload_01_Repair_F",
"B_Slingload_01_Medevac_F"];
if(_all in _vlist) then {
clearWeaponCargoGlobal _vehicle;
clearMagazineCargoGlobal _vehicle;
clearItemCargoGlobal _vehicle;
};