#include <macro.h>
/*
File: fn_initCop.sqf
Author: Bryan "Tonic" Boardwine


Description:
Cop Initialization file.
*/
private["_end"];
player addRating 99999999;
waitUntil {!(isNull (findDisplay 46))};


if((__GETC__(life_copLevel)) < 1) exitWith {
["Blacklisted",FALSE,TRUE] call BIS_fnc_endMission;
sleep 35;
};

switch (__GETC__(life_coplevel)) do 
			{
	             case 1: {life_paycheck = life_paycheck + 1000;}; // Rank 1
	             case 2: {life_paycheck = life_paycheck + 2000;}; // Rank 2
	             case 3: {life_paycheck = life_paycheck + 3000;}; // Rank 3
	             case 4: {life_paycheck = life_paycheck + 4000;}; // Rank 4
	             case 5: {life_paycheck = life_paycheck + 5000;}; // Rank 5 
	             case 6: {life_paycheck = life_paycheck + 6000;}; // Rank 6
	             case 7: {life_paycheck = life_paycheck + 7000;}; // Rank 7
			};

[] call life_fnc_spawnMenu;
[] call life_fnc_copUniform;
[] call life_fnc_RemoveLoot;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.