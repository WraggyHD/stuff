private["_crew"];
_crew = crew cursorTarget;

{
	_x setVariable ["transporting",false,true]; _x setVariable ["Escorting",false,true];
	[[_x],"life_fnc_pullOutVehCiv",_x,false] spawn life_fnc_MP; // <--- Civ = fn_pullOutVehCiv.sqf
} foreach _crew;