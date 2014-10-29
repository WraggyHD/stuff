if(vehicle player == player) exitWith {};

if (playerSide == civilian) then {
	detach player;
	player setVariable["Escorting",false,true];
	player setVariable["transporting",false,true];
	player action ["Eject", vehicle player];
	titleText["You have been violently taken out of the car!","PLAIN"];
	titleFadeOut 4;
}; 

if (playerSide == west) then {
	detach player;
	player setVariable["Escorting",false,true];
	player setVariable["transporting",false,true];
	player action ["Eject", vehicle player];
	titleText["You have been violently taken out of the car!","PLAIN"];
	titleFadeOut 4;
};