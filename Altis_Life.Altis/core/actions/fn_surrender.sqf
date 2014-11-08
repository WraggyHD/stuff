/*
	Author: MrKraken
	filename: fn_surrender.sqf
	Description: places player into a surrendered state!
*/

player setVariable ["surrender", true, true]; //Set surrender to true

if("ItemRadio" in assignedItems cursorTarget) then {
	cursorTarget removeweapon "ItemRadio";
	hint "Your cellphone was placed on the ground.";
	_defenceplace1 = "Item_ItemRadio" createVehicle (player modelToWorld[0,0,0]);}
	else { hint "You have no cellphone!"};
};

while { player getVariable ["surrender", false] }  do { 
	player playMove "amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon"; //Animation in
	
	// Check if player is alive.
	if (!alive player) then {
		player setVariable ["surrender", false, true];
	};
};

player playMoveNow "AmovPercMstpSsurWnonDnon_AmovPercMstpSnonWnonDnon"; //Animation out